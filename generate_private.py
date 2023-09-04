import tarfile
import os


def make_tar(fn, source_dirs):

    #  source_dirs = [ plat.path(i) for i in source_dirs ]
    """
    Turns a relative path into an absolute path relative to the RAPT
    directory.
    """

    tf = tarfile.open(fn, "w:gz", format=tarfile.GNU_FORMAT)

    added = set()

    def add(fn, relfn):

        adds = []

        while relfn:
            adds.append((fn, relfn))
            fn = os.path.dirname(fn)
            relfn = os.path.dirname(relfn)

        adds.reverse()

        for fn, relfn in adds:

            if relfn not in added:
                added.add(relfn)
                tf.add(fn, relfn, recursive=False)

    for sd in source_dirs:

        sd = os.path.abspath(sd)

        for dir, dirs, files in os.walk(sd):  # @ReservedAssignment

            for _fn in dirs:
                fn = os.path.join(dir, _fn)
                relfn = os.path.relpath(fn, sd)

                add(fn, relfn)

            for fn in files:
                fn = os.path.join(dir, fn)
                relfn = os.path.relpath(fn, sd)

                add(fn, relfn)

    tf.close()
    
    
make_tar("private.mp3", ["private"])

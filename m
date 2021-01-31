Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6Ia1-00021M-4z
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 19:40:18 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 989BD240003
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 19:40:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 20:40:04 +0100
Message-Id: <20210131194004.3369551-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Kbuild: add compile_commands.json target
To: barebox@lists.infradead.org

The JSON compilation database format specification describes a
compile_commands.json file that lists how translation units are
compiled by a build system. This makes integration of external tools,
like IDEs, LSP servers and static analyzers easier.

Import the Linux bits. The database can now be manually generated
with make compile_commands.json.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Cc: Rouven Czerwinski <rcz@pengutronix.de>
---
 .gitignore                                  |   1 +
 Makefile                                    |  16 +-
 scripts/clang-tools/gen_compile_commands.py | 237 ++++++++++++++++++++
 3 files changed, 252 insertions(+), 2 deletions(-)
 create mode 100755 scripts/clang-tools/gen_compile_commands.py

diff --git a/.gitignore b/.gitignore
index 7fa2948bf4a4..d7a37b3c9b39 100644
--- a/.gitignore
+++ b/.gitignore
@@ -87,3 +87,4 @@ GTAGS
 /allno.config
 /allrandom.config
 /allyes.config
+/compile_commands.json
diff --git a/Makefile b/Makefile
index ea1d5dae1c5e..f3c85cff9430 100644
--- a/Makefile
+++ b/Makefile
@@ -541,7 +541,7 @@ endif
 # in addition to whatever we do anyway.
 # Just "make" or "make all" shall build modules as well
 
-ifneq ($(filter all _all modules,$(MAKECMDGOALS)),)
+ifneq ($(filter all _all modules %compile_commands.json,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
@@ -1104,7 +1104,7 @@ endif # CONFIG_MODULES
 CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
-		.tmp_kallsyms* barebox.ldr \
+		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		scripts/bareboxenv-target barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
@@ -1162,6 +1162,18 @@ distclean: mrproper
 		-o -name 'core' \) \
 		-type f -print | xargs rm -f
 
+# Clang Tooling
+# ---------------------------------------------------------------------------
+
+quiet_cmd_gen_compile_commands = GEN     $@
+      cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
+
+compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
+	$(BAREBOX_OBJS) $(if $(CONFIG_PBL_IMAGE),$(BAREBOX_PBL_OBJS),) FORCE
+	$(call if_changed,gen_compile_commands)
+
+PHONY += compile_commands.json
+
 # Brief documentation of the typical targets used
 # ---------------------------------------------------------------------------
 
diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
new file mode 100755
index 000000000000..7ed3919f453a
--- /dev/null
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -0,0 +1,237 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (C) Google LLC, 2018
+#
+# Author: Tom Roeder <tmroeder@google.com>
+#
+"""A tool for generating compile_commands.json in the Linux kernel."""
+
+import argparse
+import json
+import logging
+import os
+import sys
+import re
+import subprocess
+
+_DEFAULT_OUTPUT = 'compile_commands.json'
+_DEFAULT_LOG_LEVEL = 'WARNING'
+
+_FILENAME_PATTERN = r'^\..*\.cmd$'
+_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
+_VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
+
+
+def parse_arguments():
+    """Sets up and parses command-line arguments.
+
+    Returns:
+        log_level: A logging level to filter log output.
+        directory: The work directory where the objects were built.
+        ar: Command used for parsing .a archives.
+        output: Where to write the compile-commands JSON file.
+        paths: The list of files/directories to handle to find .cmd files.
+    """
+    usage = 'Creates a compile_commands.json database from kernel .cmd files'
+    parser = argparse.ArgumentParser(description=usage)
+
+    directory_help = ('specify the output directory used for the kernel build '
+                      '(defaults to the working directory)')
+    parser.add_argument('-d', '--directory', type=str, default='.',
+                        help=directory_help)
+
+    output_help = ('path to the output command database (defaults to ' +
+                   _DEFAULT_OUTPUT + ')')
+    parser.add_argument('-o', '--output', type=str, default=_DEFAULT_OUTPUT,
+                        help=output_help)
+
+    log_level_help = ('the level of log messages to produce (defaults to ' +
+                      _DEFAULT_LOG_LEVEL + ')')
+    parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
+                        default=_DEFAULT_LOG_LEVEL, help=log_level_help)
+
+    ar_help = 'command used for parsing .a archives'
+    parser.add_argument('-a', '--ar', type=str, default='llvm-ar', help=ar_help)
+
+    paths_help = ('directories to search or files to parse '
+                  '(files should be *.o, *.a, or modules.order). '
+                  'If nothing is specified, the current directory is searched')
+    parser.add_argument('paths', type=str, nargs='*', help=paths_help)
+
+    args = parser.parse_args()
+
+    return (args.log_level,
+            os.path.abspath(args.directory),
+            args.output,
+            args.ar,
+            args.paths if len(args.paths) > 0 else [args.directory])
+
+
+def cmdfiles_in_dir(directory):
+    """Generate the iterator of .cmd files found under the directory.
+
+    Walk under the given directory, and yield every .cmd file found.
+
+    Args:
+        directory: The directory to search for .cmd files.
+
+    Yields:
+        The path to a .cmd file.
+    """
+
+    filename_matcher = re.compile(_FILENAME_PATTERN)
+
+    for dirpath, _, filenames in os.walk(directory):
+        for filename in filenames:
+            if filename_matcher.match(filename):
+                yield os.path.join(dirpath, filename)
+
+
+def to_cmdfile(path):
+    """Return the path of .cmd file used for the given build artifact
+
+    Args:
+        Path: file path
+
+    Returns:
+        The path to .cmd file
+    """
+    dir, base = os.path.split(path)
+    return os.path.join(dir, '.' + base + '.cmd')
+
+
+def cmdfiles_for_o(obj):
+    """Generate the iterator of .cmd files associated with the object
+
+    Yield the .cmd file used to build the given object
+
+    Args:
+        obj: The object path
+
+    Yields:
+        The path to .cmd file
+    """
+    yield to_cmdfile(obj)
+
+
+def cmdfiles_for_a(archive, ar):
+    """Generate the iterator of .cmd files associated with the archive.
+
+    Parse the given archive, and yield every .cmd file used to build it.
+
+    Args:
+        archive: The archive to parse
+
+    Yields:
+        The path to every .cmd file found
+    """
+    for obj in subprocess.check_output([ar, '-t', archive]).decode().split():
+        yield to_cmdfile(obj)
+
+
+def cmdfiles_for_modorder(modorder):
+    """Generate the iterator of .cmd files associated with the modules.order.
+
+    Parse the given modules.order, and yield every .cmd file used to build the
+    contained modules.
+
+    Args:
+        modorder: The modules.order file to parse
+
+    Yields:
+        The path to every .cmd file found
+    """
+    with open(modorder) as f:
+        for line in f:
+            ko = line.rstrip()
+            base, ext = os.path.splitext(ko)
+            if ext != '.ko':
+                sys.exit('{}: module path must end with .ko'.format(ko))
+            mod = base + '.mod'
+	    # The first line of *.mod lists the objects that compose the module.
+            with open(mod) as m:
+                for obj in m.readline().split():
+                    yield to_cmdfile(obj)
+
+
+def process_line(root_directory, command_prefix, file_path):
+    """Extracts information from a .cmd line and creates an entry from it.
+
+    Args:
+        root_directory: The directory that was searched for .cmd files. Usually
+            used directly in the "directory" entry in compile_commands.json.
+        command_prefix: The extracted command line, up to the last element.
+        file_path: The .c file from the end of the extracted command.
+            Usually relative to root_directory, but sometimes absolute.
+
+    Returns:
+        An entry to append to compile_commands.
+
+    Raises:
+        ValueError: Could not find the extracted file based on file_path and
+            root_directory or file_directory.
+    """
+    # The .cmd files are intended to be included directly by Make, so they
+    # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
+    # kernel version). The compile_commands.json file is not interepreted
+    # by Make, so this code replaces the escaped version with '#'.
+    prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
+
+    # Use os.path.abspath() to normalize the path resolving '.' and '..' .
+    abs_path = os.path.abspath(os.path.join(root_directory, file_path))
+    if not os.path.exists(abs_path):
+        raise ValueError('File %s not found' % abs_path)
+    return {
+        'directory': root_directory,
+        'file': abs_path,
+        'command': prefix + file_path,
+    }
+
+
+def main():
+    """Walks through the directory and finds and parses .cmd files."""
+    log_level, directory, output, ar, paths = parse_arguments()
+
+    level = getattr(logging, log_level)
+    logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
+
+    line_matcher = re.compile(_LINE_PATTERN)
+
+    compile_commands = []
+
+    for path in paths:
+        # If 'path' is a directory, handle all .cmd files under it.
+        # Otherwise, handle .cmd files associated with the file.
+        # Most of built-in objects are linked via archives (built-in.a or lib.a)
+        # but some objects are linked to vmlinux directly.
+        # Modules are listed in modules.order.
+        if os.path.isdir(path):
+            cmdfiles = cmdfiles_in_dir(path)
+        elif path.endswith('.o'):
+            cmdfiles = cmdfiles_for_o(path)
+        elif path.endswith('.a'):
+            cmdfiles = cmdfiles_for_a(path, ar)
+        elif path.endswith('modules.order'):
+            cmdfiles = cmdfiles_for_modorder(path)
+        else:
+            sys.exit('{}: unknown file type'.format(path))
+
+        for cmdfile in cmdfiles:
+            with open(cmdfile, 'rt') as f:
+                result = line_matcher.match(f.readline())
+                if result:
+                    try:
+                        entry = process_line(directory, result.group(1),
+                                             result.group(2))
+                        compile_commands.append(entry)
+                    except ValueError as err:
+                        logging.info('Could not add line from %s: %s',
+                                     cmdfile, err)
+
+    with open(output, 'wt') as f:
+        json.dump(compile_commands, f, indent=2, sort_keys=True)
+
+
+if __name__ == '__main__':
+    main()
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

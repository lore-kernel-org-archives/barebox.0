Delivery-date: Tue, 10 Sep 2024 10:53:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwcp-0036NU-0i
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 10:53:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwcn-0000Vb-5M
	for lore@pengutronix.de; Tue, 10 Sep 2024 10:53:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WP8m3L8lv0+tdYHzNOSsUjQ/5vpwlkucTDDTOAlHyJg=; b=HkmvI8i4drFKC8yuFkj5pw3xOU
	hnsd7hGr5zo8++mdHldPPyawFYIupfyUtJYFw9wm5QhHrM89F5277mQkiCLysBUb53MHhuoFTepXU
	wppop9VNQ2Yx5vxiE7BPvlewtvl+T6jtvL7OYWdBp/BNc6ipw/ptV9m0qHjPd8AHtc514OMVQR6W4
	Mz5wAnlc/phU/UNYqVwcRu3ZNuR9MVWM5ziUFjH3OtMIJtprXDctglxT/2ETSPCWkRLNh67lp42Gt
	TqpnVN49OK7XP9s5sTuULCdpT9YAaS/9tOQAEk5sJROcgOzDsncjKyUnhO3rsrEwNza3Fl8oazn++
	S02nZzwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwcG-00000004t8l-0OBg;
	Tue, 10 Sep 2024 08:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwbF-00000004szK-0Vrz
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 08:51:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwbD-0008GA-Mf; Tue, 10 Sep 2024 10:51:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwbD-006r6x-9r; Tue, 10 Sep 2024 10:51:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwbC-0009hM-2S;
	Tue, 10 Sep 2024 10:51:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 10:51:46 +0200
Message-Id: <20240910085146.37240-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_015149_337846_62AB6A7F 
X-CRM114-Status: GOOD (  16.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Kbuild: update gen_compile_commands.py
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With python 3.12, we now get following warning when running the script:

    SyntaxWarning: invalid escape sequence '\#'

This and other minor issues have been fixed upstream since we first
imported the script, so let's sync and import the content of following
Linux v6.11-rc6 commits:

  074075aea2ff scripts/clang-tools: switch explicitly to Python 3
  585d32f9b053 gen_compile_commands: prune some directories
  265264b814c2 gen_compile_commands: extract compiler command from a series of commands
  ec783c7cb249 gen_compile_commands: fix missing 'sys' package
  a4ab14e1d8fe gen_compile_commands: handle multiple lines per .mod file
  f65a486821cf kbuild: change module.order to list *.o instead of *.ko
  92215e7a801d kbuild: rename cmd_$@ to savedcmd_$@ in *.cmd files
  1c67921444bf gen_compile_commands: add assembly files to compilation database
  52c15e7e7928 gen_compile_commands: Allow the line prefix to still be cmd_
  9e56d3be4bfd gen_compile_commands: Sort output compile commands by file name
  880946158b01 gen_compile_commands.py: fix path resolve with symlinks in it
  dae4a0171e25 gen_compile_commands: fix invalid escape sequence warning

There is one commit that we don't take over though as that doesn't apply
to barebox yet:

  321648455061 kbuild: use obj-y instead extra-y for objects placed at the head

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/clang-tools/gen_compile_commands.py | 50 ++++++++++++---------
 1 file changed, 29 insertions(+), 21 deletions(-)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 7ed3919f453a..b8ec35e65ae6 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) Google LLC, 2018
@@ -11,17 +11,19 @@ import argparse
 import json
 import logging
 import os
-import sys
 import re
 import subprocess
+import sys
 
 _DEFAULT_OUTPUT = 'compile_commands.json'
 _DEFAULT_LOG_LEVEL = 'WARNING'
 
 _FILENAME_PATTERN = r'^\..*\.cmd$'
-_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
+_LINE_PATTERN = r'^(saved)?cmd_[^ ]*\.o := (?P<command_prefix>.* )(?P<file_path>[^ ]*\.[cS]) *(;|$)'
 _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
-
+# The tools/ directory adopts a different build system, and produces .cmd
+# files in a different format. Do not support it.
+_EXCLUDE_DIRS = ['.git', 'Documentation', 'include', 'tools']
 
 def parse_arguments():
     """Sets up and parses command-line arguments.
@@ -62,7 +64,7 @@ def parse_arguments():
     args = parser.parse_args()
 
     return (args.log_level,
-            os.path.abspath(args.directory),
+            os.path.realpath(args.directory),
             args.output,
             args.ar,
             args.paths if len(args.paths) > 0 else [args.directory])
@@ -81,8 +83,14 @@ def cmdfiles_in_dir(directory):
     """
 
     filename_matcher = re.compile(_FILENAME_PATTERN)
+    exclude_dirs = [ os.path.join(directory, d) for d in _EXCLUDE_DIRS ]
+
+    for dirpath, dirnames, filenames in os.walk(directory, topdown=True):
+        # Prune unwanted directories.
+        if dirpath in exclude_dirs:
+            dirnames[:] = []
+            continue
 
-    for dirpath, _, filenames in os.walk(directory):
         for filename in filenames:
             if filename_matcher.match(filename):
                 yield os.path.join(dirpath, filename)
@@ -144,15 +152,15 @@ def cmdfiles_for_modorder(modorder):
     """
     with open(modorder) as f:
         for line in f:
-            ko = line.rstrip()
-            base, ext = os.path.splitext(ko)
-            if ext != '.ko':
-                sys.exit('{}: module path must end with .ko'.format(ko))
+            obj = line.rstrip()
+            base, ext = os.path.splitext(obj)
+            if ext != '.o':
+                sys.exit('{}: module path must end with .o'.format(obj))
             mod = base + '.mod'
-	    # The first line of *.mod lists the objects that compose the module.
+            # Read from *.mod, to get a list of objects that compose the module.
             with open(mod) as m:
-                for obj in m.readline().split():
-                    yield to_cmdfile(obj)
+                for mod_line in m:
+                    yield to_cmdfile(mod_line.rstrip())
 
 
 def process_line(root_directory, command_prefix, file_path):
@@ -176,10 +184,10 @@ def process_line(root_directory, command_prefix, file_path):
     # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
     # kernel version). The compile_commands.json file is not interepreted
     # by Make, so this code replaces the escaped version with '#'.
-    prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
+    prefix = command_prefix.replace(r'\#', '#').replace('$(pound)', '#')
 
-    # Use os.path.abspath() to normalize the path resolving '.' and '..' .
-    abs_path = os.path.abspath(os.path.join(root_directory, file_path))
+    # Return the canonical path, eliminating any symbolic links encountered in the path.
+    abs_path = os.path.realpath(os.path.join(root_directory, file_path))
     if not os.path.exists(abs_path):
         raise ValueError('File %s not found' % abs_path)
     return {
@@ -208,10 +216,10 @@ def main():
         # Modules are listed in modules.order.
         if os.path.isdir(path):
             cmdfiles = cmdfiles_in_dir(path)
-        elif path.endswith('.o'):
-            cmdfiles = cmdfiles_for_o(path)
         elif path.endswith('.a'):
             cmdfiles = cmdfiles_for_a(path, ar)
+        elif path.endswith('.o'):
+            cmdfiles = cmdfiles_for_o(path)
         elif path.endswith('modules.order'):
             cmdfiles = cmdfiles_for_modorder(path)
         else:
@@ -222,15 +230,15 @@ def main():
                 result = line_matcher.match(f.readline())
                 if result:
                     try:
-                        entry = process_line(directory, result.group(1),
-                                             result.group(2))
+                        entry = process_line(directory, result.group('command_prefix'),
+                                             result.group('file_path'))
                         compile_commands.append(entry)
                     except ValueError as err:
                         logging.info('Could not add line from %s: %s',
                                      cmdfile, err)
 
     with open(output, 'wt') as f:
-        json.dump(compile_commands, f, indent=2, sort_keys=True)
+        json.dump(sorted(compile_commands, key=lambda x: x["file"]), f, indent=2, sort_keys=True)
 
 
 if __name__ == '__main__':
-- 
2.39.2




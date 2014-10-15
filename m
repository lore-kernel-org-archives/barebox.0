Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XeNvZ-0000ar-OI
 for barebox@lists.infradead.org; Wed, 15 Oct 2014 12:43:43 +0000
Received: by mail-la0-f45.google.com with SMTP id q1so965945lam.4
 for <barebox@lists.infradead.org>; Wed, 15 Oct 2014 05:43:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Oct 2014 16:42:14 +0400
Message-Id: <1413376935-2579-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
References: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] scripts: add mailmapper,
 a tool to create/update mailmap file
To: barebox@lists.infradead.org

From: Masahiro Yamada <yamada.m@jp.panasonic.com>

This tool helps to create/update the mailmap file.

It runs 'git shortlog' internally and searches differently spelled author
names which share the same email address. The author name with the most
commits is asuumed to be a canonical real name. If the number of commits
from the cananonical name is equal to or greater than 'MIN_COMMITS' (=50),
the entry for the cananical name will be output. ('MIN_COMMITS' is used
here because we do not want to create a fat mailmap by adding every author
with only a few commits.)

If there exists a mailmap file specified by the mailmap.file configuration
options or '.mailmap' at the toplevel of the repository, it is used as
a base file.

The base file and the newly added entries are merged together and sorted
alphabetically (but the comment block is kept untouched), and then printed
to standard output.

 Usage
 -----

  scripts/mailmapper

prints the mailmapping to standard output.

  scripts/mailmapper > tmp; mv tmp .mailmap

will be useful for updating '.mailmap' file.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/mailmapper | 160 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 160 insertions(+)

diff --git a/scripts/mailmapper b/scripts/mailmapper
new file mode 100755
index 0000000..dd1ddf6
--- /dev/null
+++ b/scripts/mailmapper
@@ -0,0 +1,160 @@
+#!/usr/bin/env python
+#
+# Copyright (C) 2014, Masahiro Yamada <yamada.m@jp.panasonic.com>
+#
+# SPDX-License-Identifier:	GPL-2.0+
+#
+
+'''
+A tool to create/update the mailmap file
+
+The command 'git shortlog' summarizes git log output in a format suitable
+for inclusion in release announcements. Each commit will be grouped by
+author and title.
+
+One problem is that the authors' name and/or email address is sometimes
+spelled differently. The .mailmap feature can be used to coalesce together
+commits by the same persion.
+(See 'man git-shortlog' for furthur information of this feature.)
+
+This tool helps to create/update the mailmap file.
+
+It runs 'git shortlog' internally and searches differently spelled author
+names which share the same email address. The author name with the most
+commits is asuumed to be a canonical real name. If the number of commits
+from the cananonical name is equal to or greater than 'MIN_COMMITS',
+the entry for the cananical name will be output. ('MIN_COMMITS' is used
+here because we do not want to create a fat mailmap by adding every author
+with only a few commits.)
+
+If there exists a mailmap file specified by the mailmap.file configuration
+options or '.mailmap' at the toplevel of the repository, it is used as
+a base file. (The mailmap.file configuration takes precedence over the
+'.mailmap' file if both exist.)
+
+The base file and the newly added entries are merged together and sorted
+alphabetically (but the comment block is kept untouched), and then printed
+to standard output.
+
+Usage
+-----
+
+  scripts/mailmapper
+
+prints the mailmapping to standard output.
+
+  scripts/mailmapper > tmp; mv tmp .mailmap
+
+will be useful for updating '.mailmap' file.
+'''
+
+import sys
+import os
+import subprocess
+
+# The entries only for the canonical names with MIN_COMMITS or more commits.
+# This limitation is used so as not to create a too big mailmap file.
+MIN_COMMITS = 50
+
+try:
+    toplevel = subprocess.check_output(['git', 'rev-parse', '--show-toplevel'])
+except subprocess.CalledProcessError:
+    print >> sys.stderr, 'Please run in a git repository.'
+    sys.exit(1)
+
+# strip '\n'
+toplevel = toplevel.rstrip()
+
+# Change the current working directory to the toplevel of the respository
+# for our easier life.
+os.chdir(toplevel)
+
+# First, create 'auther name' vs 'number of commits' database.
+# We assume the name with the most commits as the canonical real name.
+shortlog = subprocess.check_output(['git', 'shortlog', '-s', '-n'])
+
+commits_per_name = {}
+
+for line in shortlog.splitlines():
+    try:
+        commits, name = line.split(None, 1)
+    except ValueError:
+        # ignore lines with an empty author name
+        pass
+    commits_per_name[name] = int(commits)
+
+# Next, coalesce the auther names with the same email address
+shortlog = subprocess.check_output(['git', 'shortlog', '-s', '-n', '-e'])
+
+mail_vs_name = {}
+output = {}
+
+for line in shortlog.splitlines():
+    # tmp, mail = line.rsplit(None, 1) is not safe
+    # because weird email addresses might include whitespaces
+    tmp, mail = line.split('<')
+    mail = '<' + mail.rstrip()
+    try:
+        _, name = tmp.rstrip().split(None, 1)
+    except ValueError:
+        # author name is empty
+        name = ''
+    if mail in mail_vs_name:
+        # another name for the same email address
+        prev_name = mail_vs_name[mail]
+        # Take the name with more commits
+        major_name = sorted([prev_name, name],
+                            key=lambda x: commits_per_name[x] if x else 0)[1]
+        mail_vs_name[mail] = major_name
+        if commits_per_name[major_name] > MIN_COMMITS:
+            output[mail] = major_name
+    else:
+        mail_vs_name[mail] = name
+
+# [1] If there exists a mailmap file at the location pointed to
+#     by the mailmap.file configuration option, update it.
+# [2] If the file .mailmap exists at the toplevel of the repository, update it.
+# [3] Otherwise, create a new mailmap file.
+mailmap_files = []
+
+try:
+    config_mailmap = subprocess.check_output(['git', 'config', 'mailmap.file'])
+except subprocess.CalledProcessError:
+    config_mailmap = ''
+
+config_mailmap = config_mailmap.rstrip()
+if config_mailmap:
+    mailmap_files.append(config_mailmap)
+
+mailmap_files.append('.mailmap')
+
+infile = None
+
+for map_file in mailmap_files:
+    try:
+        infile = open(map_file)
+    except:
+        # Failed to open. Try next.
+        continue
+    break
+
+comment_block = []
+output_lines = []
+
+if infile:
+    for line in infile:
+        if line[0] == '#' or line[0] == '\n':
+            comment_block.append(line)
+        else:
+            output_lines.append(line)
+            break
+    for line in infile:
+        output_lines.append(line)
+    infile.close()
+
+for mail, name in output.items():
+    output_lines.append(name + ' ' + mail + '\n')
+
+output_lines.sort()
+
+sys.stdout.write(''.join(comment_block + output_lines))
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

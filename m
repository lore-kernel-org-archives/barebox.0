Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq4-0007o5-SJ
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:35 +0100
Message-Id: <1288600434-6112-3-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/21] doc: add macros to unify command help with doxygen
To: barebox@lists.infradead.org

Currently we have duplicated all the information that appears online in
'help <command>' and in the doxygen documentation. This patch adds some
infrastructure to specify help texts only once and re-use them for the
integrated help as well as for the manual.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile                |    2 +-
 include/command.h       |    9 ++++
 scripts/doxy_filter.awk |  103 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 113 insertions(+), 1 deletions(-)
 create mode 100644 scripts/doxy_filter.awk

diff --git a/Doxyfile b/Doxyfile
index 912abc1..23f3e43 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -575,7 +575,7 @@ IMAGE_PATH             =
 # to standard output.  If FILTER_PATTERNS is specified, this tag will be
 # ignored.
 
-INPUT_FILTER           =
+INPUT_FILTER           = "awk -f scripts/doxy_filter.awk"
 
 # The FILTER_PATTERNS tag can be used to specify filters on a per file pattern
 # basis.  Doxygen will compare the file name with each pattern and apply the
diff --git a/include/command.h b/include/command.h
index 0be7a69..e221546 100644
--- a/include/command.h
+++ b/include/command.h
@@ -89,6 +89,15 @@ const struct command __barebox_cmd_##_name						\
 #define BAREBOX_CMD_END					\
 };
 
+#define BAREBOX_CMD_HELP_START(_name) \
+static const __maybe_unused char cmd_##_name##_help[] =
+
+#define BAREBOX_CMD_HELP_USAGE(_name) "Usage: " _name
+#define BAREBOX_CMD_HELP_SHORT(_text) _text
+#define BAREBOX_CMD_HELP_OPT(_opt, _desc) _opt "\t" _desc
+#define BAREBOX_CMD_HELP_TEXT(_text)
+#define BAREBOX_CMD_HELP_END ;
+
 #ifdef CONFIG_LONGHELP
 #define BAREBOX_CMD_HELP(text)	.help = text,
 #else
diff --git a/scripts/doxy_filter.awk b/scripts/doxy_filter.awk
new file mode 100644
index 0000000..5ec0406
--- /dev/null
+++ b/scripts/doxy_filter.awk
@@ -0,0 +1,103 @@
+#!/usr/bin/awk
+
+/BAREBOX_CMD_HELP_START[[:space:]]*\((.*)\)/ {
+
+	this_opt = 0;
+	my_usage = "";
+	my_short = "";
+	my_cmd = gensub("BAREBOX_CMD_HELP_START[[:space:]]*\\((.*)\\)", "\\1", "g");
+	this_text = 0;
+	delete(my_text);
+	delete(my_opts);
+	next;
+}
+
+/BAREBOX_CMD_HELP_USAGE[[:space:]]*\((.*)\)/ {
+
+	$0 = gensub("<", "\\&lt;", "g");
+	$0 = gensub(">", "\\&gt;", "g");
+	$0 = gensub("BAREBOX_CMD_HELP_USAGE[[:space:]]*\\((.*)\\)", "\\1", "g");
+	$0 = gensub("\\\\n", "", "g");
+	my_usage = gensub("\"", "", "g");
+	next;
+
+}
+
+/BAREBOX_CMD_HELP_SHORT[[:space:]]*\((.*)\)/ {
+
+	$0 = gensub("<", "\\&lt;", "g");
+	$0 = gensub(">", "\\&gt;", "g");
+	$0 = gensub("BAREBOX_CMD_HELP_SHORT[[:space:]]*\\((.*)\\)", "\\1", "g");
+	$0 = gensub("\\\\n", "", "g");
+	my_short = gensub("\"", "", "g");
+	next;
+
+}
+
+/BAREBOX_CMD_HELP_OPT[[:space:]]*\([[:space:]]*(.*)[[:space:]]*,[[:space:]]*(.*)[[:space:]]*\)/ {
+
+	$0 = gensub("<", "\\&lt;", "g");
+	$0 = gensub(">", "\\&gt;", "g");
+	$0 = gensub("@", "\\\\@",    "g");	
+	$0 = gensub("BAREBOX_CMD_HELP_OPT[[:space:]]*\\([[:space:]]*\"*(.*)\"[[:space:]]*,[[:space:]]*\"(.*)\"[[:space:]]*\\)", \
+		"<tr><td><tt> \\1 </tt></td><td>\\&nbsp;\\&nbsp;\\&nbsp;</td><td> \\2 </td></tr>", "g");
+	$0 = gensub("\\\\n", "", "g");
+	my_opts[this_opt] = gensub("\"", "", "g");
+	this_opt ++;
+	next;
+}
+
+/BAREBOX_CMD_HELP_TEXT[[:space:]]*\((.*)\)/ {
+
+	$0 = gensub("<", "\\&lt;", "g");
+	$0 = gensub(">", "\\&gt;", "g");
+	$0 = gensub("BAREBOX_CMD_HELP_TEXT[[:space:]]*\\((.*)\\)", "\\1", "g");
+	$0 = gensub("\\\\n", "<br>", "g");
+	my_text[this_text] = gensub("\"", "", "g");
+	this_text ++;
+	next;
+}
+
+/BAREBOX_CMD_HELP_END/ {
+
+	printf "/**\n";
+	printf " * @page " my_cmd "_command " my_cmd "\n";
+	printf " *\n";
+	printf " * \\par Usage:\n";
+	printf " * " my_usage "\n";
+	printf " *\n";
+
+	if (this_opt != 0) {
+		printf " * \\par Options:\n";
+		printf " *\n";
+		printf " * <table border=\"0\" cellpadding=\"0\">\n";
+		n = asorti(my_opts, my_opts_sorted);
+		for (i=1; i<=n; i++) {
+			printf " * " my_opts[my_opts_sorted[i]] "\n";
+		}
+		printf " * </table>\n";
+		printf " *\n";
+	}
+
+	printf " * " my_short "\n";
+	printf " *\n";
+
+	n = asorti(my_text, my_text_sorted);
+	if (n > 0) {
+		for (i=1; i<=n; i++) {
+			printf " * " my_text[my_text_sorted[i]] "\n";
+		}
+		printf " *\n";
+	}
+
+	printf " */\n";
+
+	next;
+}
+
+/^.*$/ {
+
+	print $0;
+
+}
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

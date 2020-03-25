Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzd1-0001cA-1T
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 06:35:05 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Mar 2020 15:34:18 +0900
Message-Id: <20200325063418.27807-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/3] kconfig: update to Linux 5.5
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The previous sync was Linux 5.3-rc3. This updates Kconfig to Linux 5.5.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---
 scripts/kconfig/Makefile        | 10 +++++++---
 scripts/kconfig/conf.c          | 13 ++++++++++++-
 scripts/kconfig/expr.c          |  7 +++++++
 scripts/kconfig/mconf-cfg.sh    |  3 +++
 scripts/kconfig/merge_config.sh | 12 ++++++------
 scripts/kconfig/nconf-cfg.sh    |  3 +++
 scripts/kconfig/parser.y        |  1 -
 7 files changed, 38 insertions(+), 11 deletions(-)

diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index ef2f2336c469..2f1a59fa5169 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -66,7 +66,9 @@ localyesconfig localmodconfig: $(obj)/conf
 #  syncconfig has become an internal implementation detail and is now
 #  deprecated for external use
 simple-targets := oldconfig allnoconfig allyesconfig allmodconfig \
-	alldefconfig randconfig listnewconfig olddefconfig syncconfig
+	alldefconfig randconfig listnewconfig olddefconfig syncconfig \
+	helpnewconfig
+
 PHONY += $(simple-targets)
 
 $(simple-targets): $(obj)/conf
@@ -134,17 +136,19 @@ help:
 	@echo  '  alldefconfig    - New config with all symbols set to default'
 	@echo  '  randconfig	  - New config with random answer to all options'
 	@echo  '  listnewconfig   - List new options'
+	@echo  '  helpnewconfig   - List new options and help text'
 	@echo  '  olddefconfig	  - Same as oldconfig but sets new symbols to their'
 	@echo  '                    default value without prompting'
 	@echo  '  kvmconfig	  - Enable additional options for kvm guest kernel support'
-	@echo  '  xenconfig       - Enable additional options for xen dom0 and guest kernel support'
+	@echo  '  xenconfig       - Enable additional options for xen dom0 and guest kernel'
+	@echo  '                    support'
 	@echo  '  tinyconfig	  - Configure the tiniest possible kernel'
 	@echo  '  testconfig	  - Run Kconfig unit tests (requires python3 and pytest)'
 
 # ===========================================================================
 # object files used by all kconfig flavours
 common-objs	:= confdata.o expr.o lexer.lex.o parser.tab.o preprocess.o \
-		   symbol.o
+		   symbol.o util.o
 
 $(obj)/lexer.lex.o: $(obj)/parser.tab.h
 HOSTCFLAGS_lexer.lex.o	:= -I $(srctree)/$(src)
diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 40e16e871ae2..1f89bf1558ce 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -32,6 +32,7 @@ enum input_mode {
 	defconfig,
 	savedefconfig,
 	listnewconfig,
+	helpnewconfig,
 	olddefconfig,
 };
 static enum input_mode input_mode = oldaskconfig;
@@ -434,6 +435,11 @@ static void check_conf(struct menu *menu)
 						printf("%s%s=%s\n", CONFIG_, sym->name, str);
 					}
 				}
+			} else if (input_mode == helpnewconfig) {
+				printf("-----\n");
+				print_help(menu);
+				printf("-----\n");
+
 			} else {
 				if (!conf_cnt++)
 					printf("*\n* Restart config...\n*\n");
@@ -459,6 +465,7 @@ static struct option long_opts[] = {
 	{"alldefconfig",    no_argument,       NULL, alldefconfig},
 	{"randconfig",      no_argument,       NULL, randconfig},
 	{"listnewconfig",   no_argument,       NULL, listnewconfig},
+	{"helpnewconfig",   no_argument,       NULL, helpnewconfig},
 	{"olddefconfig",    no_argument,       NULL, olddefconfig},
 	{NULL, 0, NULL, 0}
 };
@@ -469,6 +476,7 @@ static void conf_usage(const char *progname)
 	printf("Usage: %s [-s] [option] <kconfig-file>\n", progname);
 	printf("[option] is _one_ of the following:\n");
 	printf("  --listnewconfig         List new options\n");
+	printf("  --helpnewconfig         List new options and help text\n");
 	printf("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
 	printf("  --oldconfig             Update a configuration using a provided .config as base\n");
 	printf("  --syncconfig            Similar to oldconfig but generates configuration in\n"
@@ -543,6 +551,7 @@ int main(int ac, char **av)
 		case allmodconfig:
 		case alldefconfig:
 		case listnewconfig:
+		case helpnewconfig:
 		case olddefconfig:
 			break;
 		case '?':
@@ -576,6 +585,7 @@ int main(int ac, char **av)
 	case oldaskconfig:
 	case oldconfig:
 	case listnewconfig:
+	case helpnewconfig:
 	case olddefconfig:
 		conf_read(NULL);
 		break;
@@ -657,6 +667,7 @@ int main(int ac, char **av)
 		/* fall through */
 	case oldconfig:
 	case listnewconfig:
+	case helpnewconfig:
 	case syncconfig:
 		/* Update until a loop caused no more changes */
 		do {
@@ -675,7 +686,7 @@ int main(int ac, char **av)
 				defconfig_file);
 			return 1;
 		}
-	} else if (input_mode != listnewconfig) {
+	} else if (input_mode != listnewconfig && input_mode != helpnewconfig) {
 		if (!no_conf_write && conf_write(NULL)) {
 			fprintf(stderr, "\n*** Error during writing of the configuration.\n\n");
 			exit(1);
diff --git a/scripts/kconfig/expr.c b/scripts/kconfig/expr.c
index 77ffff3a053c..9f1de58e9f0c 100644
--- a/scripts/kconfig/expr.c
+++ b/scripts/kconfig/expr.c
@@ -254,6 +254,13 @@ static int expr_eq(struct expr *e1, struct expr *e2)
 {
 	int res, old_count;
 
+	/*
+	 * A NULL expr is taken to be yes, but there's also a different way to
+	 * represent yes. expr_is_yes() checks for either representation.
+	 */
+	if (!e1 || !e2)
+		return expr_is_yes(e1) && expr_is_yes(e2);
+
 	if (e1->type != e2->type)
 		return 0;
 	switch (e1->type) {
diff --git a/scripts/kconfig/mconf-cfg.sh b/scripts/kconfig/mconf-cfg.sh
index c812872d7f9d..aa68ec95620d 100755
--- a/scripts/kconfig/mconf-cfg.sh
+++ b/scripts/kconfig/mconf-cfg.sh
@@ -44,4 +44,7 @@ echo >&2 "* Unable to find the ncurses package."
 echo >&2 "* Install ncurses (ncurses-devel or libncurses-dev"
 echo >&2 "* depending on your distribution)."
 echo >&2 "*"
+echo >&2 "* You may also need to install pkg-config to find the"
+echo >&2 "* ncurses installed in a non-default location."
+echo >&2 "*"
 exit 1
diff --git a/scripts/kconfig/merge_config.sh b/scripts/kconfig/merge_config.sh
index d924c51d28b7..63c8565206a4 100755
--- a/scripts/kconfig/merge_config.sh
+++ b/scripts/kconfig/merge_config.sh
@@ -13,12 +13,12 @@
 #  Copyright (c) 2009-2010 Wind River Systems, Inc.
 #  Copyright 2011 Linaro
 
+set -e
+
 clean_up() {
 	rm -f $TMP_FILE
 	rm -f $MERGE_FILE
-	exit
 }
-trap clean_up HUP INT TERM
 
 usage() {
 	echo "Usage: $0 [OPTIONS] [CONFIG [...]]"
@@ -110,6 +110,9 @@ TMP_FILE=$(mktemp ./.tmp.config.XXXXXXXXXX)
 MERGE_FILE=$(mktemp ./.merge_tmp.config.XXXXXXXXXX)
 
 echo "Using $INITFILE as base"
+
+trap clean_up EXIT
+
 cat $INITFILE > $TMP_FILE
 
 # Merge files, printing warnings on overridden values
@@ -155,7 +158,6 @@ if [ "$RUNMAKE" = "false" ]; then
 	echo "#"
 	echo "# merged configuration written to $KCONFIG_CONFIG (needs make)"
 	echo "#"
-	clean_up
 	exit
 fi
 
@@ -177,7 +179,7 @@ make KCONFIG_ALLCONFIG=$TMP_FILE $OUTPUT_ARG $ALLTARGET
 for CFG in $(sed -n -e "$SED_CONFIG_EXP1" -e "$SED_CONFIG_EXP2" $TMP_FILE); do
 
 	REQUESTED_VAL=$(grep -w -e "$CFG" $TMP_FILE)
-	ACTUAL_VAL=$(grep -w -e "$CFG" "$KCONFIG_CONFIG")
+	ACTUAL_VAL=$(grep -w -e "$CFG" "$KCONFIG_CONFIG" || true)
 	if [ "x$REQUESTED_VAL" != "x$ACTUAL_VAL" ] ; then
 		echo "Value requested for $CFG not in final .config"
 		echo "Requested value:  $REQUESTED_VAL"
@@ -185,5 +187,3 @@ for CFG in $(sed -n -e "$SED_CONFIG_EXP1" -e "$SED_CONFIG_EXP2" $TMP_FILE); do
 		echo ""
 	fi
 done
-
-clean_up
diff --git a/scripts/kconfig/nconf-cfg.sh b/scripts/kconfig/nconf-cfg.sh
index 001559ef0a60..c212255070c0 100755
--- a/scripts/kconfig/nconf-cfg.sh
+++ b/scripts/kconfig/nconf-cfg.sh
@@ -44,4 +44,7 @@ echo >&2 "* Unable to find the ncurses package."
 echo >&2 "* Install ncurses (ncurses-devel or libncurses-dev"
 echo >&2 "* depending on your distribution)."
 echo >&2 "*"
+echo >&2 "* You may also need to install pkg-config to find the"
+echo >&2 "* ncurses installed in a non-default location."
+echo >&2 "*"
 exit 1
diff --git a/scripts/kconfig/parser.y b/scripts/kconfig/parser.y
index 60936c76865b..b3eff9613cf8 100644
--- a/scripts/kconfig/parser.y
+++ b/scripts/kconfig/parser.y
@@ -727,5 +727,4 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "util.c"
 #include "menu.c"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

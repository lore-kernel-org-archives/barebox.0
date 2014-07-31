Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSn-00031Y-CY
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:35 +0200
Message-Id: <1406809657-2489-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] dtc: compile fdtget
To: barebox@lists.infradead.org

We need fdtget in subsequent patches, so compile it.
Unfortunately this is not straight forward. fdtget needs libfdt,
but the Kernel Build System is not prepared for compiling
libraries for the host or binaries from files in multiple directories.
This patch moves the libfdt files to the dtc toplevel directory and
compiles fdtget as a binary from multiple source files but from
the same directory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/dtc/Makefile                       | 17 +++++++++++++++--
 scripts/dtc/{libfdt => }/fdt.c             |  0
 scripts/dtc/{libfdt => }/fdt.h             |  0
 scripts/dtc/{libfdt => }/fdt_empty_tree.c  |  0
 scripts/dtc/{libfdt => }/fdt_ro.c          |  0
 scripts/dtc/{libfdt => }/fdt_rw.c          |  0
 scripts/dtc/{libfdt => }/fdt_strerror.c    |  0
 scripts/dtc/{libfdt => }/fdt_sw.c          |  0
 scripts/dtc/{libfdt => }/fdt_wip.c         |  0
 scripts/dtc/{libfdt => }/libfdt.h          |  0
 scripts/dtc/{libfdt => }/libfdt_env.h      |  0
 scripts/dtc/{libfdt => }/libfdt_internal.h |  0
 12 files changed, 15 insertions(+), 2 deletions(-)
 rename scripts/dtc/{libfdt => }/fdt.c (100%)
 rename scripts/dtc/{libfdt => }/fdt.h (100%)
 rename scripts/dtc/{libfdt => }/fdt_empty_tree.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_ro.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_rw.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_strerror.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_sw.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_wip.c (100%)
 rename scripts/dtc/{libfdt => }/libfdt.h (100%)
 rename scripts/dtc/{libfdt => }/libfdt_env.h (100%)
 rename scripts/dtc/{libfdt => }/libfdt_internal.h (100%)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 2a48022..a062233 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,15 +1,20 @@
 # scripts/dtc makefile
 
-hostprogs-y	:= dtc
+hostprogs-y	:= dtc fdtget
 always		:= $(hostprogs-y)
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 
+libfdt-objs	= fdt.o fdt_ro.o fdt_strerror.o fdt_wip.o
+libfdt-objs	+= fdt_empty_tree.o fdt_rw.o fdt_sw.o
+
+fdtget-objs	+= fdtget.o $(libfdt-objs) util.o
+
 # Source files need to get at the userspace version of libfdt_env.h to compile
 
-HOSTCFLAGS_DTC := -I$(src) -I$(src)/libfdt
+HOSTCFLAGS_DTC := -I$(src)
 
 HOSTCFLAGS_checks.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_data.o := $(HOSTCFLAGS_DTC)
@@ -21,6 +26,14 @@ HOSTCFLAGS_srcpos.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_treesource.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_util.o := $(HOSTCFLAGS_DTC)
 
+HOSTCFLAGS_fdt.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_ro.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_strerror.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_wip.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_empty_tree.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_rw.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdt_sw.o := $(HOSTCFLAGS_DTC)
+
 HOSTCFLAGS_dtc-lexer.lex.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_dtc-parser.tab.o := $(HOSTCFLAGS_DTC)
 
diff --git a/scripts/dtc/libfdt/fdt.c b/scripts/dtc/fdt.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt.c
rename to scripts/dtc/fdt.c
diff --git a/scripts/dtc/libfdt/fdt.h b/scripts/dtc/fdt.h
similarity index 100%
rename from scripts/dtc/libfdt/fdt.h
rename to scripts/dtc/fdt.h
diff --git a/scripts/dtc/libfdt/fdt_empty_tree.c b/scripts/dtc/fdt_empty_tree.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_empty_tree.c
rename to scripts/dtc/fdt_empty_tree.c
diff --git a/scripts/dtc/libfdt/fdt_ro.c b/scripts/dtc/fdt_ro.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_ro.c
rename to scripts/dtc/fdt_ro.c
diff --git a/scripts/dtc/libfdt/fdt_rw.c b/scripts/dtc/fdt_rw.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_rw.c
rename to scripts/dtc/fdt_rw.c
diff --git a/scripts/dtc/libfdt/fdt_strerror.c b/scripts/dtc/fdt_strerror.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_strerror.c
rename to scripts/dtc/fdt_strerror.c
diff --git a/scripts/dtc/libfdt/fdt_sw.c b/scripts/dtc/fdt_sw.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_sw.c
rename to scripts/dtc/fdt_sw.c
diff --git a/scripts/dtc/libfdt/fdt_wip.c b/scripts/dtc/fdt_wip.c
similarity index 100%
rename from scripts/dtc/libfdt/fdt_wip.c
rename to scripts/dtc/fdt_wip.c
diff --git a/scripts/dtc/libfdt/libfdt.h b/scripts/dtc/libfdt.h
similarity index 100%
rename from scripts/dtc/libfdt/libfdt.h
rename to scripts/dtc/libfdt.h
diff --git a/scripts/dtc/libfdt/libfdt_env.h b/scripts/dtc/libfdt_env.h
similarity index 100%
rename from scripts/dtc/libfdt/libfdt_env.h
rename to scripts/dtc/libfdt_env.h
diff --git a/scripts/dtc/libfdt/libfdt_internal.h b/scripts/dtc/libfdt_internal.h
similarity index 100%
rename from scripts/dtc/libfdt/libfdt_internal.h
rename to scripts/dtc/libfdt_internal.h
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHgO-0008PN-Tl
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 07:55:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2019 09:55:45 +0200
Message-Id: <20191015075549.4380-2-s.hauer@pengutronix.de>
In-Reply-To: <20191015075549.4380-1-s.hauer@pengutronix.de>
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] Kbuild: Add config_filename macro from kernel
To: Barebox List <barebox@lists.infradead.org>

The config_filename allows to extract a filename from a Kconfig string
option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kbuild.include | 49 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index a2dbbd8a00..c08b9a824d 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -268,6 +268,55 @@ why =                                                                        \
 echo-why = $(call escsq, $(strip $(why)))
 endif
 
+###############################################################################
+#
+# When a Kconfig string contains a filename, it is suitable for
+# passing to shell commands. It is surrounded by double-quotes, and
+# any double-quotes or backslashes within it are escaped by
+# backslashes.
+#
+# This is no use for dependencies or $(wildcard). We need to strip the
+# surrounding quotes and the escaping from quotes and backslashes, and
+# we *do* need to escape any spaces in the string. So, for example:
+#
+# Usage: $(eval $(call config_filename,FOO))
+#
+# Defines FOO_FILENAME based on the contents of the CONFIG_FOO option,
+# transformed as described above to be suitable for use within the
+# makefile.
+#
+# Also, if the filename is a relative filename and exists in the source
+# tree but not the build tree, define FOO_SRCPREFIX as $(srctree)/ to
+# be prefixed to *both* command invocation and dependencies.
+#
+# Note: We also print the filenames in the quiet_cmd_foo text, and
+# perhaps ought to have a version specially escaped for that purpose.
+# But it's only cosmetic, and $(patsubst "%",%,$(CONFIG_FOO)) is good
+# enough.  It'll strip the quotes in the common case where there's no
+# space and it's a simple filename, and it'll retain the quotes when
+# there's a space. There are some esoteric cases in which it'll print
+# the wrong thing, but we don't really care. The actual dependencies
+# and commands *do* get it right, with various combinations of single
+# and double quotes, backslashes and spaces in the filenames.
+#
+###############################################################################
+#
+define config_filename
+ifneq ($$(CONFIG_$(1)),"")
+$(1)_FILENAME := $$(subst \\,\,$$(subst \$$(quote),$$(quote),$$(subst $$(space_escape),\$$(space),$$(patsubst "%",%,$$(subst $$(space),$$(space_escape),$$(CONFIG_$(1)))))))
+ifneq ($$(patsubst /%,%,$$(firstword $$($(1)_FILENAME))),$$(firstword $$($(1)_FILENAME)))
+else
+ifeq ($$(wildcard $$($(1)_FILENAME)),)
+ifneq ($$(wildcard $$(srctree)/$$($(1)_FILENAME)),)
+$(1)_SRCPREFIX := $(srctree)/
+endif
+endif
+endif
+endif
+endef
+#
+###############################################################################
+
 # delete partially updated (i.e. corrupted) files on error
 .DELETE_ON_ERROR:
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

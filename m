Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001x8-2E
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:48 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:10 +0200
Message-Id: <1287765924-1856-19-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 18/32] doc: silence doxygen warnings
To: barebox@lists.infradead.org

Silence these warnings:

common/kallsyms.c:8: Warning: documented function `const u8 kallsyms_names' was not declared or defined.
common/kallsyms.c:10: Warning: documented function `const u8 kallsyms_token_table' was not declared or defined.
common/kallsyms.c:11: Warning: documented function `const u16 kallsyms_token_index' was not declared or defined.
common/kallsyms.c:13: Warning: documented function `const unsigned long kallsyms_markers' was not declared or defined.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 common/kallsyms.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/kallsyms.c b/common/kallsyms.c
index 4069f4b..490adb9 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -2,6 +2,8 @@
 #include <init.h>
 #include <kallsyms.h>
 
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
 /* These will be re-linked against their real values during the second link stage */
 extern const unsigned long kallsyms_addresses[] __attribute__((weak));
 extern const unsigned long kallsyms_num_syms __attribute__((weak));
@@ -12,6 +14,8 @@ extern const u16 kallsyms_token_index[] __attribute__((weak));
 
 extern const unsigned long kallsyms_markers[] __attribute__((weak));
 
+#endif /* DOXYGEN_SHOULD_SKIP_THIS */
+
 /* expand a compressed symbol data into the resulting uncompressed string,
    given the offset to where the symbol is in the compressed stream */
 static unsigned int kallsyms_expand_symbol(unsigned int off, char *result)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

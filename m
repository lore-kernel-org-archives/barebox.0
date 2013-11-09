Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wx-0000gU-46
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:52 +0000
Received: by mail-ee0-f48.google.com with SMTP id d49so1511281eek.7
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:29 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:17 +0100
Message-Id: <1384003461-21039-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/5] asm-generic: add macro for BAREBOX_CLK_TABLE
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds a macro for linker scripts to place DT clock provider table.
While at it, also add ALIGN(8) to DTB macro and fix a whitespace issue.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 include/asm-generic/barebox.lds.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 4754779..6d3a69e 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -41,9 +41,16 @@
 
 #define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
 
+#define BAREBOX_CLK_TABLE()			\
+	. = ALIGN(8);				\
+	__clk_of_table_start = .;		\
+	KEEP(*(.__clk_of_table_*));		\
+	__clk_of_table_end = .;
+
 #define BAREBOX_DTB()				\
+	. = ALIGN(8);				\
 	__dtb_start = .;			\
-	KEEP(*(.dtb.rodata.*));				\
+	KEEP(*(.dtb.rodata.*));			\
 	__dtb_end = .;
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

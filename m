Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgBkD-0004Be-Kc
 for barebox@lists.infradead.org; Tue, 21 Feb 2017 14:48:47 +0000
Received: by mail-wm0-x241.google.com with SMTP id u63so20075325wmu.2
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2017 06:48:24 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 21 Feb 2017 15:47:51 +0100
Message-Id: <20170221144751.27760-1-yegorslists@googlemail.com>
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
Subject: [PATCH] lib: xz: add support for bcj filters
To: barebox@lists.infradead.org
Cc: hyfinglists@gmail.com

From: Yegor Yefremov <yegorslists@googlemail.com>

Add missing configuration options for various bcj filters. Without
these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
filters will be disabled.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 lib/Kconfig | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index f9f25bdef..83dd8e0a4 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -22,6 +22,34 @@ config XZ_DECOMPRESS
 	bool "include xz uncompression support"
 	select UNCOMPRESS
 
+if XZ_DECOMPRESS
+
+config XZ_DEC_X86
+        bool "x86 BCJ filter decoder"
+        default y
+
+config XZ_DEC_POWERPC
+        bool "PowerPC BCJ filter decoder"
+        default y
+
+config XZ_DEC_IA64
+        bool "IA-64 BCJ filter decoder"
+        default y
+
+config XZ_DEC_ARM
+        bool "ARM BCJ filter decoder"
+        default y
+
+config XZ_DEC_ARMTHUMB
+        bool "ARM-Thumb BCJ filter decoder"
+        default y
+
+config XZ_DEC_SPARC
+        bool "SPARC BCJ filter decoder"
+        default y
+
+endif
+
 config REED_SOLOMON
 	bool
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

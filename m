Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgUF9-00076l-GX
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 10:33:57 +0000
Received: by mail-wm0-x242.google.com with SMTP id v77so1529899wmv.0
 for <barebox@lists.infradead.org>; Wed, 22 Feb 2017 02:33:34 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 22 Feb 2017 11:33:19 +0100
Message-Id: <20170222103319.4100-1-yegorslists@googlemail.com>
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
Subject: [PATCH v2] lib: xz: add support for bcj filters
To: barebox@lists.infradead.org
Cc: hyfinglists@gmail.com

From: Yegor Yefremov <yegorslists@googlemail.com>

Add missing configuration options for various bcj filters. Without
these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
filters will be disabled.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes v1 -> v2:
  - always select all filters (Sascha Hauer)

 lib/Kconfig | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index f9f25bdef..8a94ce09f 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -21,6 +21,30 @@ config LZ4_DECOMPRESS
 config XZ_DECOMPRESS
 	bool "include xz uncompression support"
 	select UNCOMPRESS
+	select XZ_DEC_X86
+	select XZ_DEC_POWERPC
+	select XZ_DEC_IA64
+	select XZ_DEC_ARM
+	select XZ_DEC_ARMTHUMB
+	select XZ_DEC_SPARC
+
+config XZ_DEC_X86
+        bool
+
+config XZ_DEC_POWERPC
+        bool
+
+config XZ_DEC_IA64
+        bool
+
+config XZ_DEC_ARM
+        bool
+
+config XZ_DEC_ARMTHUMB
+        bool
+
+config XZ_DEC_SPARC
+        bool
 
 config REED_SOLOMON
 	bool
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

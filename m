Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22f.google.com ([2607:f8b0:4001:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zv4uk-00037f-5d
 for barebox@lists.infradead.org; Sat, 07 Nov 2015 14:56:22 +0000
Received: by igl9 with SMTP id 9so5159618igl.0
 for <barebox@lists.infradead.org>; Sat, 07 Nov 2015 06:55:58 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sat,  7 Nov 2015 06:55:25 -0800
Message-Id: <1446908125-1725-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] lib: fix coding style
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 lib/fonts/fonts.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index 5a9d3f1..39efb61 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -23,15 +23,15 @@
 static const struct font_desc *fonts[] = {
 #ifdef CONFIG_FONT_8x16
 #undef NO_FONTS
-    &font_vga_8x16,
+	&font_vga_8x16,
 #endif
 #ifdef CONFIG_FONT_7x14
 #undef NO_FONTS
-    &font_7x14,
+	&font_7x14,
 #endif
 #ifdef CONFIG_FONT_MINI_4x6
 #undef NO_FONTS
-    &font_mini_4x6,
+	&font_mini_4x6,
 #endif
 };
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

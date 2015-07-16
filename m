Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFmiT-0005x7-Ru
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 17:13:02 +0000
Received: by lagw2 with SMTP id w2so47361198lag.3
 for <barebox@lists.infradead.org>; Thu, 16 Jul 2015 10:12:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 16 Jul 2015 20:12:31 +0300
Message-Id: <1437066751-28074-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! fonts: Add 7x14 font
To: barebox@lists.infradead.org

---
do as linux kernel does.
---
 include/linux/font.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/font.h b/include/linux/font.h
index dad6dcc..62b1879 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -20,7 +20,8 @@ struct font_desc {
 };
 
 extern const struct font_desc	font_vga_8x16,
-			font_mini_4x6, font_7x14;
+			font_7x14,
+			font_mini_4x6;
 
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

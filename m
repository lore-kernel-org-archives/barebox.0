Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDJL3-0006Xs-C5
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 21:26:39 +0000
Received: by lagx9 with SMTP id x9so253987576lag.1
 for <barebox@lists.infradead.org>; Thu, 09 Jul 2015 14:26:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Jul 2015 00:25:54 +0300
Message-Id: <1436477154-28594-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
References: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC-WIP 5/5] video: fbconsole: switch to "MINI4x6" font: just for
 demo purposes
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/fbconsole.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 2675193..b72ae84 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -275,7 +275,7 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 
 	const struct font_desc *font;
 
-	font = find_font("VGA8x16");
+	font = find_font("MINI4x6");
 	if (!font) {
 		return -ENOENT;
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

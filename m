Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY353-00073t-3g
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:42:30 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-018.citykom.de
 [82.207.194.18]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7B1311C0011
 for <barebox@lists.infradead.org>; Mon, 11 May 2020 07:42:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 11 May 2020 09:42:19 +0200
Message-Id: <20200511074220.980266-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] video: backlight-pwm: remove unused struct member
To: barebox@lists.infradead.org

pwm_backlight.max_value is unused anywhere. Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/backlight-pwm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index c2979f914de8..fda23b8243f6 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -34,7 +34,6 @@ struct pwm_backlight {
 	unsigned int *levels;
 	int enable_gpio;
 	int enable_active_high;
-	int max_value;
 	int enabled;
 	unsigned int scale;
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

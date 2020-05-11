Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY353-00073w-Ep
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:42:30 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-018.citykom.de
 [82.207.194.18]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id ED84E1C001E
 for <barebox@lists.infradead.org>; Mon, 11 May 2020 07:42:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 11 May 2020 09:42:20 +0200
Message-Id: <20200511074220.980266-2-ahmad@a3f.at>
In-Reply-To: <20200511074220.980266-1-ahmad@a3f.at>
References: <20200511074220.980266-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] video: backlight-pwm: set backlight dev.parent to
 hardware dev
To: barebox@lists.infradead.org

backlight_register allocates a new backlight device. Populating the
device's parent field with the hardware device gives us more
informational devinfo output.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/backlight-pwm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index fda23b8243f6..cae016be8f3d 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -202,6 +202,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 
 	pwm_backlight->backlight.slew_time_ms = 100;
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
+	pwm_backlight->backlight.dev.parent = dev;
 	pwm_backlight->backlight.node = dev->device_node;
 
 	ret = backlight_register(&pwm_backlight->backlight);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

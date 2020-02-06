Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfG9-0005V3-Rm
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:23:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:34 +0100
Message-Id: <20200206112334.14314-9-a.fatoum@pengutronix.de>
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 8/8] PWM: core: constify chip->ops pointer
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There's no reason,users of the member would want to change the
pointee. Make it const.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pwm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/pwm.h b/include/pwm.h
index 911c760839fa..3dce2859136c 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -66,7 +66,7 @@ struct pwm_ops {
 struct pwm_chip {
 	int			id;
 	const char		*devname;
-	struct pwm_ops		*ops;
+	const struct pwm_ops	*ops;
 	int			duty_ns;
 	int			period_ns;
 };
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

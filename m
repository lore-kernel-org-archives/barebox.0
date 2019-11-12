Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLH-0007OP-JI
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:50 +0100
Message-Id: <20191112091956.26628-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/10] watchdog: stm32_iwdg: return -ENOSYS on attempt to
 disable
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The stm32_iwdg watchdog can't be disabled. To have the wd commant report
this fact correctly to the user, the ->set_timeout needs to return -ENOSYS
which is interpreted as "Watchdog cannot be disabled" instead of -EINVAL
which means "Timeout value out of range".

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/stm32_iwdg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 4d252e558c32..808d7c83720e 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -132,7 +132,7 @@ static int stm32_iwdg_set_timeout(struct watchdog *wdd, unsigned int timeout)
 	int ret;
 
 	if (!timeout)
-		return -EINVAL; /* can't disable */
+		return -ENOSYS; /* can't disable */
 
 	if (timeout > wdd->timeout_max)
 		return -EINVAL;
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

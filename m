Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-000205-Rx
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:44 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qk-PW
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IO-Nx
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:25 +0100
Message-Id: <1292237617-7064-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/14] Add macro for correct rounding in integer devisions
To: barebox@lists.infradead.org

Just stolen from Linux.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/stm378x.c |    2 +-
 include/common.h      |    7 +++++++
 2 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/stm378x.c b/drivers/mci/stm378x.c
index 039fbb9..a2802af 100644
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -484,7 +484,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 	ssp = imx_get_sspclk(0) * 1000;
 
 	for (div = 2; div < 255; div += 2) {
-		rate = (((ssp + (nc >> 1) ) / nc) + (div >> 1)) / div;
+		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
 		if (rate <= 0x100)
 			break;
 	}
diff --git a/include/common.h b/include/common.h
index be83a31..1bea10c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -224,4 +224,11 @@ extern const char version_string[];
 
 #define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
 
+#define DIV_ROUND_CLOSEST(x, divisor)(			\
+{							\
+	typeof(divisor) __divisor = divisor;		\
+	(((x) + ((__divisor) / 2)) / (__divisor));	\
+}							\
+)
+
 #endif	/* __COMMON_H_ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

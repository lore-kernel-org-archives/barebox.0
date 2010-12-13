Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020D-TQ
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:45 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62G-0008Qy-1f
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Ip-TF
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:34 +0100
Message-Id: <1292237617-7064-12-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 11/14] Fixup the FEC driver files
To: barebox@lists.infradead.org

Some register bits are not defined in the IMX CPUs using this FEC (at least
I did not find anything about them in the related datasheets) and they will
get (partially) a new meaning in the i.MX28 CPU. So, removing them from the
source seems the best way to avoid any accidental usage on i.MX28.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/net/fec_imx.c |    3 +--
 drivers/net/fec_imx.h |    4 ----
 2 files changed, 1 insertions(+), 6 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 9c8de77..91ef929 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -476,8 +476,7 @@ static int fec_recv(struct eth_device *dev)
 	ievent = readl(fec->regs + FEC_IEVENT);
 	writel(ievent, fec->regs + FEC_IEVENT);
 
-	if (ievent & (FEC_IEVENT_BABT | FEC_IEVENT_XFIFO_ERROR |
-				FEC_IEVENT_RFIFO_ERROR)) {
+	if (ievent & FEC_IEVENT_BABT) {
 		/* BABT, Rx/Tx FIFO errors */
 		fec_halt(dev);
 		fec_init(dev);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index ce0fd89..f7fbdc9 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -73,8 +73,6 @@
 #define FEC_IEVENT_LATE_COL             0x00200000
 #define FEC_IEVENT_COL_RETRY_LIM        0x00100000
 #define FEC_IEVENT_XFIFO_UN             0x00080000
-#define FEC_IEVENT_XFIFO_ERROR          0x00040000
-#define FEC_IEVENT_RFIFO_ERROR          0x00020000
 
 #define FEC_IMASK_HBERR                 0x80000000
 #define FEC_IMASK_BABR                  0x40000000
@@ -84,8 +82,6 @@
 #define FEC_IMASK_LATE_COL              0x00200000
 #define FEC_IMASK_COL_RETRY_LIM         0x00100000
 #define FEC_IMASK_XFIFO_UN              0x00080000
-#define FEC_IMASK_XFIFO_ERROR           0x00040000
-#define FEC_IMASK_RFIFO_ERROR           0x00020000
 
 #define FEC_RCNTRL_MAX_FL_SHIFT         16
 #define FEC_RCNTRL_LOOP                 0x01
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G3-1q
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:33 +0100
Message-Id: <1295034699-18863-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] fec i.MX28: Make it work with MMU on
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 51cdb40..440ef1f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -565,7 +565,7 @@ static int fec_recv(struct eth_device *dev)
 
 			if (cpu_is_mx28())
 				imx28_fix_endianess_rd(
-					(void *)readl(&rbd->data_pointer),
+					phys_to_virt(readl(&rbd->data_pointer)),
 					(readw(&rbd->data_length) + 3) >> 2);
 
 			/*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

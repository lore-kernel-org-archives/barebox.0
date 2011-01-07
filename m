Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nl-00026J-M0
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:43 +0100
Message-Id: <1294397044-5008-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/24] fec_imx: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index e63e42e..51cdb40 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -458,7 +458,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 
 	/* Check for valid length of data. */
 	if ((data_length > 1500) || (data_length <= 0)) {
-		printf("Payload (%d) to large!\n");
+		printf("Payload (%d) to large!\n", data_length);
 		return -1;
 	}
 
@@ -519,7 +519,7 @@ static int fec_recv(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
 	struct buffer_descriptor __iomem *rbd = &fec->rbd_base[fec->rbd_index];
-	unsigned long ievent;
+	uint32_t ievent;
 	int frame_length, len = 0;
 	struct fec_frame *frame;
 	uint16_t bd_status;
@@ -577,7 +577,7 @@ static int fec_recv(struct eth_device *dev)
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
-				printf("error frame: 0x%08x 0x%08x\n", rbd, bd_status);
+				printf("error frame: 0x%p 0x%08x\n", rbd, bd_status);
 			}
 		}
 		/*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

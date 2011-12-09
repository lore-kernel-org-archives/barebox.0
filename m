Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYyca-0000ry-Ot
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:28:09 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycV-00025c-Ew
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:03 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycV-0002BC-De
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:03 +0100
Date: Fri, 9 Dec 2011 12:28:03 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112803.GB8203@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/7] storage/usb.c: fix test_unit_ready
To: barebox@lists.infradead.org

This is needed for the ohci-at91 to work.

In u-boot this function was transmitting a cmdlen of 12, by the initial
commit. There are similar functions like usb_request_sense,
usb_read_capacity nearby which also transmit 12 byte per default on
u-boot, which probably also need a fix.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/storage/usb.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index ef07c54..865ba8e 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -96,8 +96,8 @@ static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
 	retries = 10;
 	do {
 		US_DEBUGP("SCSI_TST_U_RDY\n");
-		memset(&srb->cmd[0], 0, 6);
-		srb->cmdlen = 6;
+		memset(&srb->cmd[0], 0, 12);
+		srb->cmdlen = 12;
 		srb->cmd[0] = SCSI_TST_U_RDY;
 		srb->datalen = 0;
 		result = us->transport(srb, us);
-- 
1.7.7.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

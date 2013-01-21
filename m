Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NE-Nf
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:22 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:49 +0100
Message-Id: <1358798996-26595-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] usb: fix for USB_ST_STALLED status reporting in
 ehci_submit_async()
To: barebox@lists.infradead.org

Checking the status field of the qTD token in the current code
do not take into acount cases where endpoint stall (halted) bit
is set together with XactErr status bit. As a result clearing
stall on an endpoint won't be done if this status bit was also
set. Check for halted bit and report USB_ST_STALLED status
if the host controller also indicates endpoit stall condition.

From u-boot by Anatolij Gustschin <agust@denx.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/host/ehci-hcd.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ad8cf2f..35b4f71 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -393,6 +393,8 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			break;
 		default:
 			dev->status = USB_ST_CRC_ERR;
+			if ((token & 0x40) == 0x40)
+				dev->status |= USB_ST_STALLED;
 			break;
 		}
 		dev->act_len = length - ((token >> 16) & 0x7fff);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

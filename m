Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxr2V-0007Bi-2r
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 12:06:33 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 14:05:54 +0200
Message-Id: <20200721120600.15114-9-jmaselbas@kalray.eu>
In-Reply-To: <20200721120600.15114-1-jmaselbas@kalray.eu>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 08/14] usb: dwc2: host: Fix toggle reset
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

From USB 2.0 specification, section 9.4.5:
  ClearFeature(ENDPOINT_HALT) request always results in
  the data toggle being reinitialized to DATA0.

The hacky solution for now is to reset the toggle bit to DATA0 when
the host controller send a ClearFeature request on an endpoint.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 28759a801..98f75744f 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -109,6 +109,14 @@ static void dwc2_hc_init(struct dwc2 *dwc2, uint8_t hc,
 	dwc2_writel(dwc2, 0, HCSPLT(hc));
 }
 
+static void dwc2_endpoint_reset(struct dwc2 *dwc2, int in, int devnum, int ep)
+{
+	if (in)
+		dwc2->in_data_toggle[devnum][ep] = TSIZ_SC_MC_PID_DATA0;
+	else
+		dwc2->out_data_toggle[devnum][ep] = TSIZ_SC_MC_PID_DATA0;
+}
+
 static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
 {
 	int ret;
@@ -373,7 +381,18 @@ static int dwc2_submit_control_msg(struct usb_device *udev,
 	if (ret)
 		return ret;
 
+	if (setup->requesttype == USB_RECIP_ENDPOINT
+	    && setup->request == USB_REQ_CLEAR_FEATURE) {
+		/* From USB 2.0, section 9.4.5:
+		 * ClearFeature(ENDPOINT_HALT) request always results
+		 * in the data toggle being reinitialized to DATA0.
+		 */
+		int ep = le16_to_cpu(setup->index) & 0xf;
+		dwc2_endpoint_reset(dwc2, usb_pipein(pipe), devnum, ep);
+	}
+
 	udev->act_len = act_len;
+	udev->status = 0;
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

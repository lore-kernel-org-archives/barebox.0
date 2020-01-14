Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irM8w-0002N5-H9
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 13:22:04 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 14 Jan 2020 14:21:10 +0100
Message-Id: <20200114132112.4119-6-jmaselbas@kalray.eu>
In-Reply-To: <20200114132112.4119-1-jmaselbas@kalray.eu>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 5/7] HACK: usb: dwc2: Fix toggle reset
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Jules Maselbas <jmaselbas@kalray.eu>

From USB 2.0 specification, section 9.4.5:
ClearFeature(ENDPOINT_HALT) request always results in
the data toggle being reinitialized to DATA0.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 2cde5977b..a97c7dac5 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -373,7 +373,24 @@ int dwc2_submit_control_msg(struct usb_device *udev,
 	if (ret)
 		return ret;
 
+	if (setup->requesttype == USB_RECIP_ENDPOINT
+	    && setup->request == USB_REQ_CLEAR_FEATURE) {
+		/* From USB 2.0, section 9.4.5:
+		 * ClearFeature(ENDPOINT_HALT) request always results
+		 * in the data toggle being reinitialized to DATA0.
+		 */
+		int ep = le16_to_cpu(setup->index & 0x7f);
+		int in = le16_to_cpu(setup->index & 0x80);
+		int data0 = TSIZ_SC_MC_PID_DATA0;
+
+		if (in)
+			dwc2->in_data_toggle[devnum][ep] = data0;
+		else
+			dwc2->out_data_toggle[devnum][ep] = data0;
+	}
+
 	udev->act_len = act_len;
+	udev->status = 0;
 
 	return 0;
 }
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIG8-0007LI-Pc
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:49:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C6CB327E116E
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:49:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:07 +0100
Message-Id: <20200122154908.22635-7-jmaselbas@kalray.eu>
In-Reply-To: <20200122154908.22635-1-jmaselbas@kalray.eu>
References: <20200122154908.22635-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 6/7] usb: dwc2: host: Fix toggle reset
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

From USB 2.0 specification, section 9.4.5:
  ClearFeature(ENDPOINT_HALT) request always results in
  the data toggle being reinitialized to DATA0.

The hacky solution for now is to reset the toggle bit to DATA0 when
the host controller send a ClearFeature request on an endpoint.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 5be101752..e6344ea41 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -372,7 +372,23 @@ int dwc2_submit_control_msg(struct usb_device *udev,
 	if (ret)
 		return ret;
 
+	if (setup->requesttype == USB_RECIP_ENDPOINT
+	    && setup->request == USB_REQ_CLEAR_FEATURE) {
+		/* From USB 2.0, section 9.4.5:
+		 * ClearFeature(ENDPOINT_HALT) request always results
+		 * in the data toggle being reinitialized to DATA0.
+		 */
+		int ep = usb_pipeendpoint(pipe);
+		int data0 = TSIZ_SC_MC_PID_DATA0;
+
+		if (usb_pipein(pipe))
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

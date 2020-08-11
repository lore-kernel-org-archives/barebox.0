Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1A-00042L-K1
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:16:51 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:29 +0200
Message-Id: <20200811151637.17705-6-jmaselbas@kalray.eu>
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 05/13] usb: dwc2: Rework timeout
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h | 22 ++++------------------
 drivers/usb/dwc2/host.c | 16 +++++++++++++++-
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 94f992cb1..a2ec3ff68 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -466,15 +466,8 @@ static inline void dwc2_writel(struct dwc2 *dwc2, u32 value, u32 offset)
 static inline int dwc2_wait_bit_set(struct dwc2 *dwc2, u32 offset, u32 mask,
 			    u32 timeout)
 {
-	u32 i;
-
-	for (i = 0; i < timeout; i++) {
-		if (dwc2_readl(dwc2, offset) & mask)
-			return 0;
-		udelay(1);
-	}
-
-	return -ETIMEDOUT;
+	return wait_on_timeout(timeout * USECOND,
+			dwc2_readl(dwc2, offset) & mask);
 }
 
 /**
@@ -489,15 +482,8 @@ static inline int dwc2_wait_bit_set(struct dwc2 *dwc2, u32 offset, u32 mask,
 static inline int dwc2_wait_bit_clear(struct dwc2 *dwc2, u32 offset, u32 mask,
 			    u32 timeout)
 {
-	u32 i;
-
-	for (i = 0; i < timeout; i++) {
-		if (!(dwc2_readl(dwc2, offset) & mask))
-			return 0;
-		udelay(1);
-	}
-
-	return -ETIMEDOUT;
+	return wait_on_timeout(timeout * USECOND,
+			!(dwc2_readl(dwc2, offset) & mask));
 }
 
 /*
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 7eaa7c31c..ea2facbc8 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -383,6 +383,8 @@ static int dwc2_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
 	int in = usb_pipein(pipe);
 	u8 *pid;
 	u8 hc = DWC2_HC_CHANNEL;
+	uint64_t start;
+	int ret;
 
 	if ((devnum >= MAX_DEVICE) || (devnum == dwc2->root_hub_devnum)) {
 		udev->status = 0;
@@ -394,7 +396,19 @@ static int dwc2_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
 	else
 		pid = &dwc2->out_data_toggle[devnum][ep];
 
-	return dwc2_submit_packet(dwc2, udev, hc, pipe, pid, in, buffer, len);
+	start = get_time_ns();
+	do {
+		ret = dwc2_submit_packet(dwc2, udev, hc, pipe, pid, in,
+					 buffer, len);
+	} while (ret == -EAGAIN && !is_timeout(start, timeout * MSECOND));
+	if (ret == -EAGAIN) {
+		dwc2_err(dwc2, "Timeout on bulk endpoint\n");
+		ret = -ETIMEDOUT;
+	}
+
+	dwc2_dbg(dwc2, "%s: return %d\n", __func__, ret);
+
+	return ret;
 }
 
 static int dwc2_submit_int_msg(struct usb_device *udev, unsigned long pipe,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout06.rmx.de ([94.199.90.92])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJHA-00057O-C5
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 14:21:02 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout06.rmx.de (Postfix) with ESMTPS id 48bgP82qWFz9wBB
 for <barebox@lists.infradead.org>; Mon,  9 Mar 2020 15:20:44 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 48bgP74lcmz2TTPZ
 for <barebox@lists.infradead.org>; Mon,  9 Mar 2020 15:20:43 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 9 Mar 2020 15:20:26 +0100
Message-ID: <20200309142026.26208-1-ceggers@arri.de>
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
Subject: [PATCH] usb: Add extra delay for device scan
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, Primoz Fiser <primoz.fiser@norik.com>

Since b1d9837182, detection of various USB flash drives stopped working.
While the changes itself look correct, probably the HUB requires some
"recovery time" between the GET_STATUS commands in order to be able to
detect devices.

Our configuration: i.MX6ULL (USB-OTG) with only one port on the root
HUB. This port is connected to a Microchip USB4916 hub (permanently
attached). The USB4916 is configured with it's power on defaults which
means that bPwrOn2PwrGood is set to the maximum (0xFF = 510 ms).

Fixes: b1d9837182 ("b1d9837182d2b20232234adb36ada2129c3a8152")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/usb/core/hub.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 8874775f17..466bbe527b 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -406,6 +406,9 @@ static int usb_device_list_scan(void)
 			if (ret)
 				goto out;
 		}
+
+		/* Avoid hammering the HUB with port scans */
+		mdelay(25);
 	}
 
 out:
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

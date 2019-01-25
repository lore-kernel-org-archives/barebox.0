Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gn4wG-0001Iu-3e
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 17:06:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gn4wC-0000nj-U9
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 18:06:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Jan 2019 18:06:39 +0100
Message-Id: <20190125170640.19469-2-l.stach@pengutronix.de>
In-Reply-To: <20190125170640.19469-1-l.stach@pengutronix.de>
References: <20190125170640.19469-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] Documentation: imx8mq-evk: add instructions for HDMITX
 firmware
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index ba8cf01452d6..250e51743842 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -8,8 +8,8 @@ Board comes with:
 
 Not including booting via serial, the device can boot from either SD or eMMC.
 
-Downloading DDR PHY Firmware
-----------------------------
+Downloading DDR PHY and HDMI/eDP Firmware
+-----------------------------------------
 
 As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
 uses several binary firmware blobs that are distributed under a
@@ -40,6 +40,16 @@ As a last step of this process those files need to be placed in
 	      firmware/imx/${f}; \
   done
 
+You will also need to copy the HDMITX controller firmware in order to
+use the HDMI and/or eDP display output::
+
+  for f in signed_dp_imx8m.bin \
+	   signed_hdmi_imx8m.bin; \
+  do \
+	   cp firmware-imx-8.0/firmware/hdmi/cadence/${f} \
+	      firmware/imx/${f}; \
+  done
+
 DDR Configuration Code
 ======================
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

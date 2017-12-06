Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMbNj-0000r1-OJ
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 15:13:08 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed,  6 Dec 2017 16:12:33 +0100
Message-Id: <20171206151233.29342-1-r.hieber@pengutronix.de>
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
Subject: [PATCH] ARM: dts: bcm2835-rpi: re-enable booting from SD card
To: barebox@lists.infradead.org
Cc: Alexander Dahl <post@lespocky.de>, Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Kernel commit a19adf8d86e822eba502486524127595372c85f6 [0] changed the
RPi1 device tree from &sdhci to &sdhost, which was imported in barebox
commit d14b844b08635c717fb52a294ed8d6872e260315. It seems that barebox
does not have a driver for brcm,bcm2835-sdhost (yet), which resulted in
barebox unable to boot from SD card. However, the driver for
brcm,bcm2835-sdhci worked fine in the past.

Although the upstream change was made for good reasons, the simplest
change for barebox for now is to revert to using &sdhci and disable
&sdhost.

Thanks to Alexander Dahl for raising this issue on the DistroKit
mailing list!

[0]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a19adf8d86e822eba502486524127595372c85f6

Cc: Alexander Dahl <post@lespocky.de>
Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 arch/arm/dts/bcm2835-rpi.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index 0095f58a3c..ab2d6dff64 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -9,3 +9,10 @@
 		reg = <0x0 0x0>;
 	};
 };
+&sdhci {
+	status = "okay";
+};
+
+&sdhost {
+	status = "disabled";
+};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

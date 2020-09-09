Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr760109.outbound.protection.outlook.com
 ([40.107.76.109] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kG5uI-0006sT-AG
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 19:37:28 +0000
From: Trent Piepho <trent.piepho@synapse.com>
Date: Wed,  9 Sep 2020 12:36:50 -0700
Message-Id: <20200909193650.347646-4-trent.piepho@synapse.com>
In-Reply-To: <20200909193650.347646-1-trent.piepho@synapse.com>
References: <20200909193650.347646-1-trent.piepho@synapse.com>
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
Subject: [PATCH 4/4] ARM: beaglebone: Enable ADC
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@synapse.com>

On the BeagleBone Black, enable the dts node for the TSC/ADC.  Add a
simple configuration that maps all eight channels in order.  AIN[0:6]
are exposed on connector P9, while AIN7 measures the 3.3V rail divided
by 2.

Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
---
 arch/arm/dts/am335x-boneblack.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/am335x-boneblack.dts b/arch/arm/dts/am335x-boneblack.dts
index 80d710b92..c06a532e4 100644
--- a/arch/arm/dts/am335x-boneblack.dts
+++ b/arch/arm/dts/am335x-boneblack.dts
@@ -85,3 +85,13 @@
 		status = "okay";
 	};
 };
+
+&tscadc {
+	status = "okay";
+	adc {
+		/* Ch 0-6 are on connector P9.	Ch 7 measures the 3.3V rail
+		 * divided by 2 (e.g., it should read 1650).
+		 */
+		ti,adc-channels = <0>, <1>, <2>, <3>, <4>, <5>, <6>, <7>;
+	};
+};
-- 
2.25.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

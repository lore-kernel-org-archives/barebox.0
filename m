Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnJ9S-0007x4-RN
 for barebox@lists.infradead.org; Mon, 22 Jun 2020 09:54:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jun 2020 11:53:52 +0200
Message-Id: <20200622095352.22991-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200622095352.22991-1-a.fatoum@pengutronix.de>
References: <20200622095352.22991-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: at91: choose proper parent for both MCI clocks
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When booting from SDMMC0, Use of SDMMC1 fails with:
ERROR: clk: couldn't set sdmmc1_gclk clk rate to 480000000 (-22), current rate: 32768

This is because the first stage bootloader only reparents the boot SDMMC
instance and barebox does no automatic reparenting for the other one.

Force both clocks to have a suitable parent.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/sama5d2.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/sama5d2.dtsi b/arch/arm/dts/sama5d2.dtsi
index 2064fd1ad28f..c9af5f2f7ad4 100644
--- a/arch/arm/dts/sama5d2.dtsi
+++ b/arch/arm/dts/sama5d2.dtsi
@@ -8,3 +8,11 @@
 };
 
 /delete-node/ &{/memory};
+
+&sdmmc0 {
+	assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_UTMI>;
+};
+
+&sdmmc1 {
+	assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_UTMI>;
+};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

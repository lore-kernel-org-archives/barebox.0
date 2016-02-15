Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1aVFv1-0007HL-Sx
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 09:58:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BFB5BA00427
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2016 10:57:15 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 15 Feb 2016 10:56:55 +0100
Message-Id: <1455530215-4394-3-git-send-email-s.christ@phytec.de>
In-Reply-To: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
References: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 3/3] ARM: imx6: physom: fix phyflex workaround on Dual and Solo
To: barebox@lists.infradead.org

Since commit 764ae1647cafa ("ARM: i.MX: Add correct SoC type detection
for i.MX6") the definition of the function cpu_is_mx6q and cpu_is_mx6dl
has changed.  Before that change they match the SoM family Quad/Dual and
DualLite/Solo. After that change they are SoM specific. They match only
Quad and DualLite. There are extra functions cpu_is_mx6d and cpu_is_mx6s
for SoM Dual and Solo.

We have not seen any real world consequences of this problem yet.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 9aefa55..85ad8cb 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -63,9 +63,9 @@ static void phyflex_err006282_workaround(void)
 	mdelay(2);
 	gpio_set_value(MX6_PHYFLEX_ERR006282, 0);
 
-	if (cpu_is_mx6q())
+	if (cpu_is_mx6q() || cpu_is_mx6d())
 		mxc_iomux_v3_setup_pad(MX6Q_PAD_SD4_DAT3__GPIO_2_11_PD);
-	else if (cpu_is_mx6dl())
+	else if (cpu_is_mx6dl() || cpu_is_mx6s())
 		mxc_iomux_v3_setup_pad(MX6DL_PAD_SD4_DAT3__GPIO_2_11);
 
 	gpio_direction_input(MX6_PHYFLEX_ERR006282);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

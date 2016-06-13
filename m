Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa96-0001y0-5j
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:49 +0000
Received: by mail-lf0-x243.google.com with SMTP id j191so3031097lfb.3
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:27 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.25
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:05 +0300
Message-Id: <1465856107-24133-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/6] MIPS: ath79: dts: sync spi stuff with linux v4.7-rc2
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi | 9 +++++++--
 drivers/spi/ath79_spi.c   | 2 +-
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 05ef93f..6e20bc5 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -44,10 +44,15 @@
 		};
 
 		spi: spi@1f000000 {
+			compatible = "qca,ar7100-spi";
+			reg = <0x1f000000 0x01000000>;
+
+			clocks = <&pll ATH79_CLK_AHB>;
+			clock-names = "ahb";
+
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "qca,ath79-spi";
-			reg = <0x1f000000 0x01000000>;
+
 			status = "disabled";
 		};
 	};
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 68b4c7c..bb63d86 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -289,7 +289,7 @@ static void ath79_spi_remove(struct device_d *dev)
 
 static __maybe_unused struct of_device_id ath79_spi_dt_ids[] = {
 	{
-		.compatible = "qca,ath79-spi",
+		.compatible = "qca,ar7100-spi",
 	},
 	{
 		/* sentinel */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvZ-00068R-Uj
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id r14so8261324pfl.12
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:18 -0700
Message-Id: <20200331184722.22707-20-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/23] ARM: zii-imx8mq-dev: Add boot source info
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add boot source info so that RAVE SP driver can properly query it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 2df87d07a..35cc21b57 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -68,12 +68,21 @@
 
 &uart2 {
 	rave-sp {
+		watchdog {
+			nvmem-cells = <&boot_source>;
+			nvmem-cell-names = "boot-source";
+		};
+
 		eeprom@a4 {
 			lru_part_number: lru-part-number@21 {
 				reg = <0x21 15>;
 				read-only;
 			};
 
+			boot_source: boot-source@83 {
+				reg = <0x83 1>;
+			};
+
 			mac_address_0: mac-address@180 {
 				reg = <0x180 6>;
 			};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

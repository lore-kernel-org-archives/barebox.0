Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvf-0006C8-HJ
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:11 +0000
Received: by mail-pg1-x532.google.com with SMTP id l14so3618357pgb.1
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:48:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:22 -0700
Message-Id: <20200331184722.22707-24-andrew.smirnov@gmail.com>
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
Subject: [PATCH 23/23] ARM: zii-imx7d-rmu2: Add boot source info
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add boot source info so that RAVE SP driver could query it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx7d-zii-rmu2.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/dts/imx7d-zii-rmu2.dts b/arch/arm/dts/imx7d-zii-rmu2.dts
index 7bb0ab264..a4116308b 100644
--- a/arch/arm/dts/imx7d-zii-rmu2.dts
+++ b/arch/arm/dts/imx7d-zii-rmu2.dts
@@ -23,3 +23,21 @@
 		};
 	};
 };
+
+&uart4 {
+	rave-sp {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		watchdog {
+			nvmem-cells = <&boot_source>;
+			nvmem-cell-names = "boot-source";
+		};
+
+		eeprom@a3 {
+			boot_source: boot-source@83 {
+				reg = <0x83 1>;
+			};
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

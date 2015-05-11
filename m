Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yrunj-0004jF-Em
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:48 +0000
Received: by lbbqq2 with SMTP id qq2so103004257lbb.3
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:52 +0300
Message-Id: <1431378053-18914-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/5] MIPS: img-ci20: enable dm9000 ethernet controller
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/img-ci20.dts    | 15 +++++++++++++++
 arch/mips/mach-xburst/Kconfig |  1 +
 2 files changed, 16 insertions(+)

diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
index f2022dd..da2a5bf 100644
--- a/arch/mips/dts/img-ci20.dts
+++ b/arch/mips/dts/img-ci20.dts
@@ -28,6 +28,21 @@
 		device_type = "memory";
 		reg = <0x0 0x10000000>;
 	};
+
+	board {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		ranges = <>;
+
+		dm9000@16000000 {
+			compatible = "davicom,dm9000";
+			davicom,no-eeprom;
+
+			reg = <0x16000000 1   /* addr */
+			       0x16000002 1>; /* data */
+		};
+	};
 };
 
 &uart0 {
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 2598c41..fd106fe 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -27,6 +27,7 @@ config BOARD_RZX50
 config BOARD_CI20
 	bool "Imagination Creator CI20"
 	select CPU_JZ4780
+	select HAS_DM9000
 
 endchoice
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

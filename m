Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9y-0002VP-KI
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:38 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9p-00081l-A5
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:14 +0100
Message-Id: <20190218113220.18649-3-tomaz.solc@tablix.org>
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 2/8] Kconfig: add pin controllers submenu.
To: barebox@lists.infradead.org

---
 drivers/pinctrl/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 12fff4f01..de83c124a 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -1,3 +1,5 @@
+menu "Pin controllers"
+
 config PINCTRL
 	bool "Pin controller core support"
 	default y if OFDEVICE
@@ -83,3 +85,5 @@ config PINCTRL_VF610
 	help
 	  Pinmux controller found on Vybrid VF610 family of SoCs
 endif
+
+endmenu
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

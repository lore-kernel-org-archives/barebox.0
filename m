Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsf5-0001tu-P4
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:28:13 +0000
Received: by mail-pg0-x242.google.com with SMTP id j9so8411864pgc.11
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:27:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:27:18 -0800
Message-Id: <20171204152718.10674-7-andrew.smirnov@gmail.com>
In-Reply-To: <20171204152718.10674-1-andrew.smirnov@gmail.com>
References: <20171204152718.10674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 6/6] zii_vf610_dev_defconfig: Select MDIO bus GPIO
 multiplexer
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Select MDIO bus GPIO multiplexer to support hardware present on the
board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/configs/zii_vf610_dev_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index e2cb658d9..ee77f4000 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -92,6 +92,7 @@ CONFIG_LM75=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_MARVELL_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_MDIO_BUS_MUX_GPIO=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

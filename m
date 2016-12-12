Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxW-0005Ly-U5
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:21 +0000
Received: by mail-pg0-x242.google.com with SMTP id p66so1667357pga.2
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:04:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:03:06 -0800
Message-Id: <1481565788-9115-20-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 19/21] i.MX: Default CONFI_USB_IMX_PHY to 'y' on Vybrid
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index b0c6a41..8e6f315 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -16,4 +16,4 @@ config USB_IMX_CHIPIDEA
 
 config USB_IMX_PHY
 	bool
-	default y if ARCH_IMX6 && GENERIC_PHY
+	default y if (ARCH_IMX6 || ARCH_VF610) && GENERIC_PHY
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

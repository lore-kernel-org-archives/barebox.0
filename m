Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFg-00050E-0U
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:15 +0000
Received: by mail-lb0-x230.google.com with SMTP id xr8so33355732lbb.1
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:53 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.51
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:52 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:25 +0300
Message-Id: <1457357426-9868-15-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 14/15] MIPS: black-swift_defconfig: enable gpio-related stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/black-swift_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/configs/black-swift_defconfig b/arch/mips/configs/black-swift_defconfig
index dda863d..1a72cfb 100644
--- a/arch/mips/configs/black-swift_defconfig
+++ b/arch/mips/configs/black-swift_defconfig
@@ -34,6 +34,8 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -44,5 +46,9 @@ CONFIG_DRIVER_SPI_ATH79=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_KEYBOARD_GPIO=y
 CONFIG_DIGEST_SHA224_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

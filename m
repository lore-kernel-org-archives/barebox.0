Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6dwH-0005up-BU
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 10:56:57 +0000
Received: by mail-la0-f43.google.com with SMTP id hr17so2236158lab.2
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 03:56:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Jul 2014 14:56:20 +0400
Message-Id: <1405335380-17996-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1405335380-17996-1-git-send-email-antonynpavlov@gmail.com>
References: <1405335380-17996-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 5/5] ARM: versatilepb_defconfig: enable RTC support
To: barebox@lists.infradead.org

Use this qemu cmdline to test hwclock

  $ qemu-system-arm -M versatilepb -nographic \
      -monitor null -kernel barebox -serial stdio

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/versatilepb_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 58dfb8b..a447f93 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -51,6 +51,8 @@ CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_I2C=y
 CONFIG_I2C_VERSATILE=y
 CONFIG_GPIO_PL061=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
 CONFIG_SHA1=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

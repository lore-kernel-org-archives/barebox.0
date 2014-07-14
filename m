Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6nBT-0005v3-4D
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 20:49:15 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so890031lbi.13
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 13:48:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Jul 2014 00:48:36 +0400
Message-Id: <1405370916-6828-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v3 5/5] ARM: versatilepb_defconfig: enable RTC support
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSFc-0005hr-6n
 for barebox@lists.infradead.org; Thu, 09 Jan 2020 07:29:05 +0000
Received: by mail-lj1-x230.google.com with SMTP id z22so6114887ljg.1
 for <barebox@lists.infradead.org>; Wed, 08 Jan 2020 23:29:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2020 10:28:55 +0300
Message-Id: <20200109072855.14154-6-antonynpavlov@gmail.com>
In-Reply-To: <20200109072855.14154-1-antonynpavlov@gmail.com>
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
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
Subject: [RFC 5/5] MIPS: qemu-malta_defconfig: enable e1000 network driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 2465c0260d..1625d68874 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -59,6 +59,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_E1000=y
 CONFIG_DRIVER_NET_RTL8139=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

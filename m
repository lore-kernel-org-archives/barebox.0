Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGsCg-0002Uq-6m
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 17:16:42 +0000
Received: by lbbzr7 with SMTP id zr7so83866701lbb.1
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 10:16:19 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-243-189.pppoe.spdop.ru.
 [79.139.243.189])
 by smtp.gmail.com with ESMTPSA id ci2sm2354532lad.23.2015.07.19.10.16.18
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 Jul 2015 10:16:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 20:16:14 +0300
Message-Id: <1437326174-28351-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! sandbox: Update defconfig
To: barebox@lists.infradead.org

---
 arch/sandbox/configs/sandbox_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 7e494a6..d82579b 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -65,6 +65,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

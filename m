Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4Tu-0007CP-62
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 08:00:38 +0000
Received: by mail-lb0-f175.google.com with SMTP id w7so4369961lbi.20
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 01:00:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 12:00:00 +0400
Message-Id: <1396857600-20407-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396857600-20407-1-git-send-email-antonynpavlov@gmail.com>
References: <1396857600-20407-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/5] MIPS: tplink-mr3020_defconfig: add SPI support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/tplink-mr3020_defconfig | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index 2e925d9..d249919 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -14,16 +14,21 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_FLASH=y
 # CONFIG_CMD_BOOTM is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_CLK=y
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_AR933X=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
 CONFIG_MD5=y
 CONFIG_SHA224=y
 CONFIG_SHA256=y
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

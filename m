Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtMtk-0000A6-Od
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 21:44:18 +0000
Received: by lffz202 with SMTP id z202so68724073lff.3
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 13:43:59 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-39-184.pppoe.mtu-net.ru.
 [91.79.39.184])
 by smtp.gmail.com with ESMTPSA id 78sm4325125lfs.35.2015.11.02.13.43.58
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Nov 2015 13:43:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 00:43:42 +0300
Message-Id: <1446500625-27907-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
References: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/9] MIPS: mach-ath79: add black-swift_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/black-swift_defconfig | 46 +++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/mips/configs/black-swift_defconfig b/arch/mips/configs/black-swift_defconfig
new file mode 100644
index 0000000..7444968
--- /dev/null
+++ b/arch/mips/configs/black-swift_defconfig
@@ -0,0 +1,46 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="black-swift"
+CONFIG_MACH_MIPS_ATH79=y
+CONFIG_BOARD_BLACK_SWIFT=y
+CONFIG_NMON=y
+CONFIG_NMON_USER_START=y
+CONFIG_NMON_1S_DELAY=0x100000
+CONFIG_NMON_USER_START_DELAY=0x5
+CONFIG_NMON_HELP=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_IMD=y
+CONFIG_PARTITION=y
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_AR933X=y
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

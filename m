Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8SzP-0006jn-KD
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:07:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 29 Jan 2014 11:06:52 +0000
Message-Id: <1390993612-26246-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
References: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/3] DA923RC: enable UBI/UBIFS configuration
To: barebox@lists.infradead.org

The UBI/UBIFS support is enabled and a script is added to attach
the UBI device and mount the UBIFS partition. This allows the loading
of firmware images from the NOR flash.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/geip-da923rc/env/bin/init |   12 ++++++++++++
 arch/ppc/configs/da923rc_defconfig        |    6 ++++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/boards/geip-da923rc/env/bin/init b/arch/ppc/boards/geip-da923rc/env/bin/init
index 6308999..330a435 100644
--- a/arch/ppc/boards/geip-da923rc/env/bin/init
+++ b/arch/ppc/boards/geip-da923rc/env/bin/init
@@ -2,3 +2,15 @@
 export PATH=/env/bin
 
 source /env/config
+
+#Define a 26MB partition in flash starting at offset 0x20000
+addpart -n /dev/nor0 0x1a00000@0x20000(boot)
+ubiattach /dev/boot
+
+if [ $? -ne 0 ]; then
+	echo "Fail to attach UBI device"
+	exit 1;
+fi
+
+mkdir /mnt
+mount -t ubifs /dev/ubi0.boot /mnt
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index a9dc0df..da1b13a 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -42,6 +42,12 @@ CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_MTD_WRITE=y
+CONFIG_MTD_UBI=y
+CONFIG_CMD_UBI=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_LZO_DECOMPRESS=y
 CONFIG_MALLOC_SIZE=0x2800000
 CONFIG_PROMPT="GE> "
 CONFIG_BAUDRATE=9600
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

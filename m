Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yrunl-0004jk-Dq
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:50 +0000
Received: by lagv1 with SMTP id v1so102328873lag.3
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:53 +0300
Message-Id: <1431378053-18914-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/5] MIPS: img-ci20_defconfig: enable network stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/img-ci20_defconfig | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
index 6702c88..28319c5 100644
--- a/arch/mips/configs/img-ci20_defconfig
+++ b/arch/mips/configs/img-ci20_defconfig
@@ -28,15 +28,18 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_GETOPT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
 CONFIG_OFDEVICE=y
+CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
-CONFIG_CLOCKSOURCE_DUMMY=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=3500
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
+CONFIG_FS_TFTP=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

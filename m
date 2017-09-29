Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dy3Z3-0006hu-VH
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 22:15:23 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 30 Sep 2017 00:14:47 +0200
Message-Id: <20170929221447.8744-1-linux@rempel-privat.de>
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
Subject: [PATCH v1] MIPS: tplink-wdr4300_defconfig: enable RATP
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

In some cases, if we have cache issues, it is useful to have
good connection to the target. RATP seems to be a good protocol
for this case.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/tplink-wdr4300_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/configs/tplink-wdr4300_defconfig
index 46093d243..8d5084006 100644
--- a/arch/mips/configs/tplink-wdr4300_defconfig
+++ b/arch/mips/configs/tplink-wdr4300_defconfig
@@ -10,6 +10,7 @@ CONFIG_MALLOC_TLSF=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_RATP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -78,5 +79,6 @@ CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
+CONFIG_FS_RATP=y
 CONFIG_DIGEST_SHA224_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

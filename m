Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrT1O-0007qb-BI
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 13:10:59 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 14:10:00 +0100
Message-Id: <1372165800-18759-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] P2020RDB: update build configuration
To: barebox@lists.infradead.org

Update the P2020RDB build configuration to enable useful development
commands.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/configs/p2020rdb_defconfig |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index 7690327..0f77903 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -24,9 +24,11 @@ CONFIG_RELOCATABLE=y
 CONFIG_DRIVER_NET_GIANFAR=y
 CONFIG_NET=y
 CONFIG_NET_PING=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
 CONFIG_PING=y
-CONFIG_TFTP=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_MIITOOL=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

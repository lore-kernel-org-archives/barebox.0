Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAL9E-0003Xz-JV
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 15:09:21 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Feb 2014 15:08:25 +0000
Message-Id: <1391440105-16959-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
References: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] DA923RC: increase malloc size
To: barebox@lists.infradead.org

Increase the malloc size so that larger debug Linux image can be loaded.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/configs/da923rc_defconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index da1b13a..34eab40 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -48,7 +48,7 @@ CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_MALLOC_SIZE=0x2800000
+CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_PROMPT="GE> "
 CONFIG_BAUDRATE=9600
 CONFIG_RELOCATABLE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

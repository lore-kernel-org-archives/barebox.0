Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f43.google.com ([209.85.215.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM9Bj-0001Gw-Ia
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 05:53:16 +0000
Received: by labms9 with SMTP id ms9so8427610lab.10
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 21:52:48 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 13 Feb 2015 08:53:12 +0300
Message-Id: <1423806794-23881-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
References: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: qemu-malta_defconfig: set BAUDRATE=38400
To: barebox@lists.infradead.org

MIPS Malta's YAMON PROM monitor uses serial port speed=38400
(see Malta(tm) User's Manual for details).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index a5af258..62b5e76 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -2,8 +2,8 @@ CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="qemu-malta"
 CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
+CONFIG_BAUDRATE=38400
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -38,9 +38,9 @@ CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

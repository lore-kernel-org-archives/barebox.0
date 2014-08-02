Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDS6o-0003gI-NT
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 05:43:59 +0000
Received: by mail-lb0-f174.google.com with SMTP id c11so3838571lbj.19
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 22:43:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  2 Aug 2014 09:43:23 +0400
Message-Id: <1406958203-11984-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
References: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: qemu-malta_defconfig: enable metadata in barebox
 image (IMD)
To: barebox@lists.infradead.org

Usage:

  $ qemu-system-mips -nodefaults -nographic -M malta -m 256 \
        -serial stdio -monitor null \
        -bios ./barebox-flash-image

  ...

  barebox:/ imd /dev/nor0
  release: 2014.07.0-00401-gd863821
  build: #148 Sat Aug 2 09:22:16 MSK 2014

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 6ee302d..5a1ca36 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -14,6 +14,7 @@ CONFIG_POLLER=y
 CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

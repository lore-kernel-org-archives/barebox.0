Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ys5nB-0004hx-OB
 for barebox@lists.infradead.org; Tue, 12 May 2015 08:43:58 +0000
Received: by lbcga7 with SMTP id ga7so233296lbc.1
 for <barebox@lists.infradead.org>; Tue, 12 May 2015 01:43:34 -0700 (PDT)
Received: from puro.NIISI (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id p6sm3627736laj.41.2015.05.12.01.43.33
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 12 May 2015 01:43:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 11:45:06 +0300
Message-Id: <1431420306-23337-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
References: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] update dlink-dir-320_defconfig
To: barebox@lists.infradead.org

Just 'make defconfig && mv defconfig arch/mips/configs/dlink-dir-320_defconfig'.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/dlink-dir-320_defconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 4c9a06f..61798bf 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -2,7 +2,6 @@ CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="dlink-dir-320"
 CONFIG_MACH_MIPS_BCM47XX=y
 CONFIG_STACK_SIZE=0x7000
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -35,9 +34,9 @@ CONFIG_CMD_PING=y
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

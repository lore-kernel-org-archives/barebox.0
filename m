Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6E8r-0004Wi-Aa
 for barebox@lists.infradead.org; Fri, 27 May 2016 09:33:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1b6E8T-00064O-VO
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <jbe@pengutronix.de>) id 1b6E8T-0002fr-N7
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 May 2016 11:32:51 +0200
Message-Id: <1464341571-22552-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
References: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/4] PPC/MPC5200: enable a useful command by default
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/configs/pcm030_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 61380ac..fd010c8 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -9,6 +9,7 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/pcm030/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

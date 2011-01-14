Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G9-6B
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:39 +0100
Message-Id: <1295034699-18863-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/7] ARM i.MX28 tx28 defconfig: enable MMU
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/tx28stk5_defconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 0851d5e..88ace35 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_STM=y
 CONFIG_ARCH_IMX28=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_BROKEN=y
 CONFIG_LONGHELP=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

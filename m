Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQJQ-0008PA-Gb
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 19:59:33 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQJ2-0004Gt-V4
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:59:09 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 20:59:07 +0100
Message-Id: <1426017548-30324-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
References: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: radxa-rock: select options for regulator
To: barebox@lists.infradead.org

Fixes the build with a minimal config while maintaining
functionality of the board.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 9c9eed0559c9..ea4361d44e30 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -7,6 +7,8 @@ config ARCH_TEXT_BASE
 comment "select Rockchip boards:"
 
 config MACH_RADXA_ROCK
+	select I2C
+	select MFD_ACT8846
 	bool "Radxa rock board"
 
 endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

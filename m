Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YasNK-0002Hp-1H
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 20:58:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YasMw-0002eJ-HC
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 21:57:42 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 25 Mar 2015 21:57:41 +0100
Message-Id: <1427317062-20969-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
References: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: highbank: select OFTREE
To: barebox@lists.infradead.org

The board code uses quite a few OF functions and it doesn't seem
reasonable to run this board without DT support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-highbank/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
index 950810b57517..8af480861c3f 100644
--- a/arch/arm/mach-highbank/Kconfig
+++ b/arch/arm/mach-highbank/Kconfig
@@ -9,6 +9,7 @@ choice
 
 config MACH_HIGHBANK
 	bool "Calxeda Highbank"
+	select OFTREE
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

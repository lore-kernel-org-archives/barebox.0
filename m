Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDM7p-0007m2-P6
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 20:07:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <rsc@pengutronix.de>) id 1RDM7k-000334-IB
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 22:06:56 +0200
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <rsc@pengutronix.de>) id 1RDM7k-0004qT-Gq
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 22:06:56 +0200
Date: Mon, 10 Oct 2011 22:06:56 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20111010200655.GA18273@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] menu: fix alinment
To: barebox@lists.infradead.org

Fixes alignment for the "System Type" menu entry.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d123787..33a3835 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -26,7 +26,7 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
 
-menu "System Type"
+menu "System Type                   "
 
 choice
 	prompt "ARM system type"
-- 
1.7.6.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

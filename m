Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPag-0007h5-5v
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:03:11 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:02:38 +0100
Message-Id: <1322103764-6265-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 3/9] fix core version selection
To: barebox@lists.infradead.org
Cc: Luotao Fu <l.fu@pengutronix.de>

From: Luotao Fu <l.fu@pengutronix.de>

The PXA processor is an ARMv5TE. The cache-armv5.S in barebox is acutally
matched to be used with ARMv5TEJ and doesn't get along with a v5TE. Hence we
switch the core depenendy to v4t since the callbacks are fully compatible.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 arch/arm/cpu/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index b022ed8..f55e862 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -48,7 +48,7 @@ config CPU_V7
 # Xscale PXA25x, PXA27x
 config CPU_XSCALE
 	bool
-	select CPU_32v5
+	select CPU_32v4T
 
 # Figure out what processor architecture version we should be using.
 # This defines the compiler instruction set which depends on the machine type.
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

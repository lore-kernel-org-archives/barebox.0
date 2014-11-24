Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XsrUO-0003Qt-Er
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:29 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTx-0000NZ-8V
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:55 +0100
Message-Id: <1416827220-3103-16-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 15/20] arm: fill BUILTIN_DTB_NAME for boards that still use
 this option
To: barebox@lists.infradead.org

There are only a few users of BUILTIN_DTB left, but those should
alsways fill thr name properly. Avoids lots of failures in the
randconfig builds.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 48b29da7276b..6e9e7154339a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -27,6 +27,11 @@ config BUILTIN_DTB
 config BUILTIN_DTB_NAME
 	string "DTB to build into the barebox image"
 	depends on BUILTIN_DTB
+	default "canon-a1100" if MACH_CANON_A1100
+	default "imx51-genesi-efika-sb" if MACH_EFIKA_MX_SMARTBOOK
+	default "versatile-pb" if ARCH_VERSATILE_PB
+	default "virt2real" if MACH_VIRT2REAL
+	default "module-mb7707" if MACH_MB7707
 
 choice
 	prompt "ARM system type"
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

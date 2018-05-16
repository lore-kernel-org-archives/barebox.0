Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzao-0006k7-Dl
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:48:14 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:30 +0200
Message-Id: <20180516164233.27581-8-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 07/10] MIPS: malta: enable kexec
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 2b549373a..ab5a05e0d 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -51,6 +51,7 @@ config MACH_MIPS_MALTA
 	select HAS_DEBUG_LL
 	select GPIOLIB
 	select HW_HAS_PCI
+	select HAS_KEXEC
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqzHQ-0005qs-Vt
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 13:29:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 15:29:19 +0200
Message-Id: <20200702132919.22009-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200702132919.22009-1-a.fatoum@pengutronix.de>
References: <20200702132919.22009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mfd: superio: depend on X86 || COMPILE_TEST
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Super I/O chips are usually found x86 PCs. Make them depend on it,
so users of other arches aren't prompted for it, when they oldconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 42346154e63a..d03d481898d8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -73,12 +73,14 @@ config MFD_SUPERIO
 config FINTEK_SUPERIO
        bool "Fintek Super I/O chip"
        select MFD_SUPERIO
+       depends on X86 || COMPILE_TEST
        help
          Select this to probe for IO-port connected Fintek Super I/O chips.
 
 config SMSC_SUPERIO
        bool "SMSC Super I/O chip"
        select MFD_SUPERIO
+       depends on X86 || COMPILE_TEST
        help
          Select this to probe for IO-port connected SMSC Super I/O chips.
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

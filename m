Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNDL1-0004Zy-C2
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 10:58:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Sep 2020 12:58:20 +0200
Message-Id: <20200929105823.11542-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200929105823.11542-1-a.fatoum@pengutronix.de>
References: <20200929105823.11542-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] lib: ratp: rename now undefined use of a Kconfig symbol
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The symbol used to exist, but was renamed in 6f37d9efd91 ("commands:
Move /dev/mem driver to drivers/misc") and then one instance without
definition was added back in cae5e14224f4 ("ratp: add more build
dependencies"). Fix it.

Fixes: cae5e14224f4 ("ratp: add more build dependencies")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 6d909c1ac8f0..8128e5108964 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -111,7 +111,7 @@ config LIBFDT
 
 config RATP
 	select CRC_ITU_T
-	select COMPILE_MEMORY
+	select DEV_MEM
 	select COMMAND_SUPPORT
 	select POLLER
 	depends on CONSOLE_FULL
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

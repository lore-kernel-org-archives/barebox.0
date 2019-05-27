Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCOA-0001n9-Fp
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000226-Om
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003EK-UR
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:38 +0200
Message-Id: <20190527095744.5923-13-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/18] scripts: removes uses of <asm*/errno.h> in favor of
 <errno.h>
To: barebox@lists.infradead.org

We can't assume <asm/errno.h> to be available on non-Linux hosts.
Furthermore, errno constants values aren't fixed and passing them
to libc perror(3)/strerror (3) would yield wrong results.
Fix this by using the standard <errno.h> header instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/bareboximd.c        | 1 -
 scripts/include/linux/err.h | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 81a59ec63c23..5ef91831c457 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -23,7 +23,6 @@
 #include <stdio.h>
 #include <sys/types.h>
 #include <stdint.h>
-#include <asm-generic/errno.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
diff --git a/scripts/include/linux/err.h b/scripts/include/linux/err.h
index bdc3dd8131d4..9982ab17babe 100644
--- a/scripts/include/linux/err.h
+++ b/scripts/include/linux/err.h
@@ -4,7 +4,7 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 
-#include <asm/errno.h>
+#include <errno.h>
 
 /*
  * Original kernel header comment:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

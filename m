Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWg6-0007ux-1A
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 12:20:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 14:20:46 +0200
Message-Id: <20191021122047.12204-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] hwrng: dev-random: always use /dev/urandom
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

/dev/random can block long after boot time. It seems there's a consensus
that /dev/urandom is safe to use except for very early boot, which isn't
when barebox sandbox is usually run. To make the HWRNG more useful,
always use /dev/urandom.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/dev-random.c                | 7 +------
 arch/sandbox/mach-sandbox/include/mach/linux.h | 1 -
 drivers/hw_random/Kconfig                      | 6 +++---
 3 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/sandbox/board/dev-random.c b/arch/sandbox/board/dev-random.c
index f65e5ef6e5ed..60295e9fced2 100644
--- a/arch/sandbox/board/dev-random.c
+++ b/arch/sandbox/board/dev-random.c
@@ -4,10 +4,6 @@
 devrandom_t *devrandom_init(void) {
 	devrandom_t *fds = xzalloc(sizeof(*fds));
 
-	fds->randomfd = linux_open("/dev/random", false);
-	if (fds->randomfd < 0)
-		return ERR_PTR(-EPERM);
-
 	fds->urandomfd = linux_open("/dev/urandom", false);
 	if (fds->urandomfd < 0)
 		return ERR_PTR(-EPERM);
@@ -17,8 +13,7 @@ devrandom_t *devrandom_init(void) {
 
 int devrandom_read(devrandom_t *devrandom, void *buf, size_t len, int wait)
 {
-	if (wait)
-		return linux_read(devrandom->randomfd, buf, len);
+	(void)wait; /* /dev/urandom won't block */
 
 	return linux_read(devrandom->urandomfd, buf, len);
 }
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1e64d41c6a5e..9759a376ecb3 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -52,7 +52,6 @@ int barebox_libftdi1_update(struct ft2232_bitbang *ftbb);
 void barebox_libftdi1_close(void);
 
 typedef struct {
-	int randomfd;
 	int urandomfd;
 } devrandom_t;
 devrandom_t *devrandom_init(void);
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index c57928204d30..242a7ef27828 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -15,11 +15,11 @@ config HWRNG_MXC_RNGC
 	  Generator hardware found on some Freescale i.MX processors.
 
 config HWRNG_DEV_RANDOM
-	tristate "Linux /dev/random and /dev/urandom RNG"
+	tristate "Linux /dev/urandom RNG"
 	depends on SANDBOX
 	default y
 	help
-	  This driver allows use of the host provided /dev/random
-	  and /dev/urandom as barebox HWRNGs.
+	  This driver allows use of the host provided /dev/urandom
+	  as barebox HWRNGs.
 
 endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

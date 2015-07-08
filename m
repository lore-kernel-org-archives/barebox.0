Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCn3D-0003FD-OK
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 10:58:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Jul 2015 12:57:40 +0200
Message-Id: <1436353060-22497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Build with -fno-delete-null-pointer-checks
To: Barebox List <barebox@lists.infradead.org>

This becomes important with gcc-4.9. Without this gcc assumes
that accessing NULL pointers traps and everything that happens
behind the access is not executed. This recently happened with
i.MX53 which has:

static int imx53_silicon_revision(void)
{
	void __iomem *rom = MX53_IROM_BASE_ADDR;

	rev = readl(rom + SI_REV);
	...
}

This resulted in object code in which the last instruction is
the readl, the reset of the function is missing because gcc assumes this
is never executed.

Disable this optimization with -fno-delete-null-pointer-checks since
in barebox NULL pointers can indeed be valid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e7db67a..0fe9274 100644
--- a/Makefile
+++ b/Makefile
@@ -301,7 +301,8 @@ CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffre
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -Werror-implicit-function-declaration \
-                   -fno-strict-aliasing -fno-common -Os -pipe
+                   -fno-strict-aliasing -fno-common -Os -pipe \
+                   -fno-delete-null-pointer-checks
 AFLAGS          := -D__ASSEMBLY__
 
 LDFLAGS_barebox	:= -Map barebox.map
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

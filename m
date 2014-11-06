Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMzh-0007NV-0l
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:20:57 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu,  6 Nov 2014 14:20:28 +0100
Message-Id: <1415280028-18240-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1415280028-18240-1-git-send-email-jlu@pengutronix.de>
References: <1415280028-18240-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] sandbox: avoid symbol conflict for fstat
To: barebox@lists.infradead.org

Recently, a fstat function was added to barebox. Redefine it as usual
to avoid problems for the sandbox. This fixes loading files into the
sandbox.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/sandbox/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 596c8f8309f0..ed5d3a3dab2f 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -20,7 +20,7 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dfputs=barebox_fputs -Dsetenv=barebox_setenv \
 		-Dgetenv=barebox_getenv -Dprintf=barebox_printf \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
-		-Dioctl=barebox_ioctl
+		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

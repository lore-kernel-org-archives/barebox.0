Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvmOK-0007NC-14
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 07:26:52 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 15 Sep 2010 09:26:36 +0200
Message-Id: <1284535596-26814-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
References: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/3] unlzo: add poller call to unlzo routine
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 lib/decompress_unlzo.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 8f9cdcf..e9378c4 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -37,6 +37,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <xfuncs.h>
+#include <poller.h>
 
 #include <linux/compiler.h>
 #include <asm/unaligned.h>
@@ -187,6 +188,8 @@ int unlzo(int in_fd, int out_fd, int *dest_len)
 		}
 
 		obytes_processed += dst_len;
+
+		poller_call();
 	}
 
 exit_free:
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duH1w-0002A2-3o
 for barebox@lists.infradead.org; Tue, 19 Sep 2017 11:49:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Sep 2017 13:49:07 +0200
Message-Id: <20170919114907.17916-1-mkl@pengutronix.de>
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
Subject: [PATCH] bootm: bootm_open_initrd_uimage(): propagate error if initrd
 verification fails
To: barebox@lists.infradead.org

If the verification of an initrd inside of an uImage fails an error message is
printed but the error is not propagated. Although this is not security
relevant, as the verification is currently only a CRC32 check, the error should
be returned. This patch fixes the problem.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index 81625d9157cc..eebaa799f548 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -173,6 +173,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 			if (ret) {
 				printf("Checking data crc failed with %s\n",
 					strerror(-ret));
+				return ret;
 			}
 		}
 		uimage_print_contents(data->initrd);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

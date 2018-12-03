Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTlGg-0007yk-1D
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 10:16:01 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Dec 2018 11:15:32 +0100
Message-Id: <20181203101532.25180-1-r.hieber@pengutronix.de>
In-Reply-To: <20181203080156.ekhbcvljcxzuf6sy@pengutronix.de>
References: <20181203080156.ekhbcvljcxzuf6sy@pengutronix.de>
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
Subject: [PATCH] fixup! drivers: caam: add RNG software self-test
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <r.hieber@pengutronix.de>

Fix compile error and warning:

    drivers/crypto/caam/rng_self_test.c: In function 'caam_rng_self_test':
    drivers/crypto/caam/rng_self_test.c:167:2: error: expected ';' before '}' token
      }
      ^
    drivers/crypto/caam/rng_self_test.c:134:11: warning: unused variable 'i' [-Wunused-variable]
      int ret, i, desc_size = 0, result_size = 0, job_err = 0;
               ^

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
Hi Sascha,

On Mon, Dec 03, 2018 at 09:01:56AM +0100, Sascha Hauer wrote:
> Hi Roland,
> 
> Applied with several adjustments, see below.

Right, thank you for those! I found two small problems left.

 - Roland
---
 drivers/crypto/caam/rng_self_test.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index 149b334f23..aab4fa2e47 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -131,7 +131,7 @@ static void rng_self_test_done(struct device_d *dev, u32 *desc, u32 err, void *a
  */
 int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev)
 {
-	int ret, i, desc_size = 0, result_size = 0, job_err = 0;
+	int ret, desc_size = 0, result_size = 0, job_err = 0;
 	const u32 *rng_st_dsc;
 	const u8 *exp_result;
 	u32 *desc;
@@ -163,7 +163,7 @@ int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid,
 
 	if (!result || !desc) {
 		ret = -ENOMEM;
-		goto err
+		goto err;
 	}
 
 	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

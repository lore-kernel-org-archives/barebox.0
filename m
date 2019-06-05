Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRMa-00017i-6u
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 08:33:41 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jun 2019 10:33:21 +0200
Message-Id: <20190605083320.16130-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: Initial OP-TEE support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

---
 arch/arm/lib32/bootm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index a653374e5f..180624445d 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -185,14 +185,13 @@ static int bootm_load_tee_from_file(struct image_data *data)
 	if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
 		pr_err("%s", strerror(errno));
 		ret = -errno;
-		goto out_res;
+		release_region(data->tee_res);
+		goto out;
 	}
 
 	printf("Read optee file to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
 
 	ret = 0;
-out_res:
-	release_region(data->tee_res);
 out:
 	close(fd);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

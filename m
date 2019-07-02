Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiD3Q-0006cq-1a
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 07:18:17 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  2 Jul 2019 09:17:54 +0200
Message-Id: <20190702071754.32431-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/2] blspec: invalidate only necessary bootm variables
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of removing all global bootm variables, remove only the ones
which will be set by the blspec entries. This allows setting the
bootm.tee variable to load OP-TEE for blspec entries or setting the
image load address.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 41f2a4c534..66e5033e35 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -63,7 +63,11 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	};
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.", "");
+	globalvar_set_match("bootm.image", "");
+	globalvar_set_match("bootm.oftree", "");
+	globalvar_set_match("bootm.initrd", "");
+
+	bootm_data_init_defaults(&data);
 
 	devicetree = blspec_entry_var_get(entry, "devicetree");
 	initrd = blspec_entry_var_get(entry, "initrd");
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

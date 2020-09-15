Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4kU-00030y-Tm
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 06:47:31 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 15 Sep 2020 08:47:20 +0200
Message-Id: <20200915064722.17355-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20200915064722.17355-1-r.czerwinski@pengutronix.de>
References: <20200915064722.17355-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/4] blspec: only reset variable locations, not paths
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Configuration of the loadaddresses for image oftree and initrd can not
be done inside the bootloader spec yet, so using bootloader spec should
not override settings from the environment.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 9e1036c834..14c98d4f7b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -137,9 +137,9 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	};
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.image", "");
-	globalvar_set_match("bootm.oftree", "");
-	globalvar_set_match("bootm.initrd", "");
+	globalvar_set("bootm.image", "");
+	globalvar_set("bootm.oftree", "");
+	globalvar_set("bootm.initrd", "");
 
 	bootm_data_init_defaults(&data);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGzpO-0000yW-DK
 for barebox@lists.infradead.org; Sat, 12 Sep 2020 07:20:07 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sat, 12 Sep 2020 09:12:40 +0200
Message-Id: <20200912071241.29924-4-r.czerwinski@pengutronix.de>
In-Reply-To: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
References: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/4] blspec: fix bootm_data initialization
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Remove initialization of the verbose struct member, it will be
overwritten by the call to bootm_data_init_defaults(). Also remove
members which are initialized in the call.
Verbose should be enabled if either the argument or variable is set, so
|| both.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index b3b1fe422e..7d5b4a482e 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -130,9 +130,6 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	const char *overlays;
 	const char *appendroot;
 	struct bootm_data data = {
-		.initrd_address = UIMAGE_INVALID_ADDRESS,
-		.os_address = UIMAGE_SOME_ADDRESS,
-		.verbose = verbose,
 		.dryrun = dryrun,
 	};
 
@@ -143,6 +140,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 
 	bootm_data_init_defaults(&data);
 
+	data.verbose = verbose || data.verbose;
+
 	devicetree = blspec_entry_var_get(entry, "devicetree");
 	initrd = blspec_entry_var_get(entry, "initrd");
 	options = blspec_entry_var_get(entry, "options");
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

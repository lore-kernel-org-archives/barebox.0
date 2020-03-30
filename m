Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvUJ-0006Eg-54
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:34:05 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A298A40010
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:33:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:33:55 +0200
Message-Id: <20200330143355.652318-1-ahmad@a3f.at>
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
Subject: [PATCH] commands: of_property: fix crashes on incorrect number of
 arguments
To: barebox@lists.infradead.org

of_property needs at least two parameters, the path and the property
name. If we supply less, we risk crashes, e.g. by running
of_property -fs /test

Verify we got at least two parameters.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/of_property.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 31e9b71dd7d1..1d7ba181d5f0 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -315,7 +315,7 @@ static int do_of_property(int argc, char *argv[])
 	int delete = 0;
 	int set = 0;
 	int fixup = 0;
-	char *path = NULL, *propname = NULL;
+	char *path, *propname;
 
 	while ((opt = getopt(argc, argv, "dsf")) > 0) {
 		switch (opt) {
@@ -333,14 +333,11 @@ static int do_of_property(int argc, char *argv[])
 		}
 	}
 
-	if (optind == argc)
+	if (argc - optind < 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (optind < argc)
-		path = argv[optind];
-
-	if (optind + 1 < argc)
-		propname = argv[optind + 1];
+	path = argv[optind];
+	propname = argv[optind + 1];
 
 	debug("path: %s propname: %s\n", path, propname);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

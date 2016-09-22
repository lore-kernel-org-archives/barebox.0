Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn9UT-0002pp-QS
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 19:17:03 +0000
Date: Thu, 22 Sep 2016 21:16:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160922191634.GA23455@ravnborg.org>
References: <20160922050041.GA12923@ravnborg.org>
 <20160922080839.ypjpltpcdsyjmle5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160922080839.ypjpltpcdsyjmle5@pengutronix.de>
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
Subject: [PATCH v2] environment: "wrong magic" gives the impression of an error
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

From 15e7ff689cfda27eab10aacda5c26a1ba47979ec Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Thu, 22 Sep 2016 06:54:42 +0200
Subject: [PATCH 1/1] environment: "wrong magic" give the impression of an
 error

Introduce a more soft wording when the magic of
the superblock does not match.
Include a hint to the typical reason "(envfs never written?)"

This prevents a "what is wrong?" moment when looking at
the boot log.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---

v2:
Dropped change in envfs_load_data(). envfs_load_data() is used
to traverse the inodes and if we reach this far we
have encountered a real error which should be reported.
Thanks to Sascha for spottign this mistake!

	Sam

 common/environment.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index db127d7..c9cef63 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -382,7 +382,7 @@ EXPORT_SYMBOL(envfs_save);
 static int envfs_check_super(struct envfs_super *super, size_t *size)
 {
 	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
-		printf("envfs: wrong magic\n");
+		printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");
 		return -EIO;
 	}
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

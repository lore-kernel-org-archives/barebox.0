Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp0-0005HY-RW
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:17 +0200
Message-Id: <1469191472-14491-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/18] blspec: remove unused function prototype
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/blspec.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/blspec.h b/include/blspec.h
index 4b61ef8..a73dd72 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -25,8 +25,6 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 		const char *val);
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
 
-int blspec_entry_save(struct blspec_entry *entry, const char *path);
-
 int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
 
 int blspec_scan_devices(struct blspec *blspec);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

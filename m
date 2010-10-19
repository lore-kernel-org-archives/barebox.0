Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8BjB-0000se-La
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:18 +0200
Message-Id: <1287492930-15716-31-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 30/42] common/environment.c: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 0eb7e6b..e5f24ec 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -109,7 +109,7 @@ int envfs_save(char *filename, char *dirname)
 	struct action_data data;
 	void *buf = NULL;
 
-	data.writep = 0;
+	data.writep = NULL;
 	data.base = dirname;
 
 	/* first pass: calculate size */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

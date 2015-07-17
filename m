Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002KF-P8
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:28 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:46 +0200
Message-Id: <1437160969-31517-14-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 13/16] fs: efivars: use xstrdup_* when appropriate
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 fs/efivarfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index ebace8bc8fb1..925e8e8be113 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -153,7 +153,7 @@ static int efivars_create(struct device_d *dev, const char *pathname, mode_t mod
 	inode->vendor = vendor;
 
 
-	name8 = strdup_wchar_to_char(inode->name);
+	name8 = xstrdup_wchar_to_char(inode->name);
 	inode->full_name = asprintf("%s-%pUl", name8, &inode->vendor);
 	free(name8);
 
@@ -391,11 +391,11 @@ static int efivarfs_probe(struct device_d *dev)
 			break;
 
 		inode = xzalloc(sizeof(*inode));
-		inode->name = strdup_wchar(name);
+		inode->name = xstrdup_wchar(name);
 
 		inode->vendor = vendor;
 
-		name8 = strdup_wchar_to_char(inode->name);
+		name8 = xstrdup_wchar_to_char(inode->name);
 		inode->full_name = asprintf("%s-%pUl", name8, &vendor);
 		free(name8);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

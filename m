Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6y8M-00079a-QC
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:07:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 10 Dec 2015 11:07:24 +0100
Message-Id: <1449742046-20906-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
References: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ubiformat: fix the subpage size hint on the error path
To: Barebox List <barebox@lists.infradead.org>

From mtd-utils commit:

| commit 15685fe39f1665d53d8b316c8f837f20f8700d4b
| Author: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
| Date:   Mon Sep 8 15:05:54 2014 +0300
|
|     ubiformat: fix the subpage size hint on the error path
|
|     David Binderman <dcb314@hotmail.com> reports that the following piece of looks
|     wrong:
|
|     if (!args.subpage_size != mtd->min_io_size)
|         normsg("may be sub-page size is incorrect?");
|
|     I totally agree with him and I believe that we actually meant to have no
|     negation in fron to f 'args.subpage_size', so instead, the code should look
|     like this:
|
|     if (args.subpage_size != mtd->min_io_size)
|         normsg("may be sub-page size is incorrect?");
|
|     Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 8516e11..f9c50b7 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -503,9 +503,8 @@ static int format(const struct mtd_dev_info *mtd,
 				   write_size, eb);
 
 			if (errno != EIO) {
-				if (!args.subpage_size != mtd->min_io_size)
-					normsg("may be sub-page size is "
-					       "incorrect?");
+				if (args.subpage_size != mtd->min_io_size)
+					normsg("may be sub-page size is incorrect?");
 				goto out_free;
 			}
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

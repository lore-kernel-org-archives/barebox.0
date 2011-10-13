Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoO-0002Gm-R6
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:29 +0000
Received: by ggnr4 with SMTP id r4so504492ggn.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:26 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:07 +0200
Message-Id: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 1/8] block: Sparse fix.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 common/block.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/block.c b/common/block.c
index 24377c6..ac4f2b2 100644
--- a/common/block.c
+++ b/common/block.c
@@ -221,7 +221,7 @@ static int block_flush(struct cdev *cdev)
 	return writebuffer_flush(blk);
 }
 
-struct file_operations block_ops = {
+static struct file_operations block_ops = {
 	.read	= block_read,
 #ifdef CONFIG_BLOCK_WRITE
 	.write	= block_write,
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

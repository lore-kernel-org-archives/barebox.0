Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0X-00030b-A6
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:39 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:14 +0200
Message-Id: <20190822055114.931-12-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 11/11] fs: fat: fix use of wrong enumeration type
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

disk_read returns a DRESULT, not enum filetype. Change the return value
appropriately.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fat/ff.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index ba4adfc13389..4d30433e5f03 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -1538,7 +1538,7 @@ static enum filetype check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:No
 	DWORD *bootsec
 )
 {
-	enum filetype ret;
+	DRESULT ret;
 
 	/* Load boot record */
 	ret = disk_read(fs, fs->win, sect, 1);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

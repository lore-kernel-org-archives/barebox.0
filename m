Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCa-0007Jx-0Z
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:21 +0200
Message-Id: <20200615060229.7533-4-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] fs: Make iput() accept NULL pointers
To: Barebox List <barebox@lists.infradead.org>

Let iput() accept NULL pointers so that users do not have to test for
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index d8389323aa..cecb3d70e0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1087,6 +1087,9 @@ void iget_failed(struct inode *inode)
 
 void iput(struct inode *inode)
 {
+	if (!inode)
+		return;
+
 	if (!inode->i_count)
 		return;
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

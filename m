Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5597-0002La-BB
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 08:26:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2018 10:25:35 +0200
Message-Id: <20180926082535.10118-2-s.hauer@pengutronix.de>
In-Reply-To: <20180926082535.10118-1-s.hauer@pengutronix.de>
References: <20180926082535.10118-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: stat: Do not forget to set errno
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

stat() needs to set errno correctly when returning with an error.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index d4ac37943e..2a4d78c9d7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2535,6 +2535,9 @@ static int stat_filename(const char *filename, struct stat *s, unsigned int flag
 out_put:
 	path_put(&path);
 out:
+	if (ret)
+		errno = -ret;
+
 	return ret;
 }
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmi-00051B-1R
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:47 +0000
Received: by mail-pf1-x42c.google.com with SMTP id q17so10800985pfh.10
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:17 -0800
Message-Id: <20190307074926.20539-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/17] bpkfs: Fix lseek error check in bpkfs_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/bpkfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 655cde09b..90d3a6bf1 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -455,9 +455,9 @@ static int bpkfs_probe(struct device_d *dev)
 		list_add_tail(&d->list, &h->list_data);
 		priv->nb_data_entries++;
 
-		ret = lseek(fd, d->size, SEEK_CUR);
-		if (ret < 0) {
+		if (lseek(fd, d->size, SEEK_CUR) != d->size) {
 			dev_err(dev, "could not seek: %s\n", errno_str());
+			ret = -errno;
 			goto err;
 		}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

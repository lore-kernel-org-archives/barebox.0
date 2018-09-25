Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4tMH-0005rq-CA
 for barebox@lists.infradead.org; Tue, 25 Sep 2018 19:51:00 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Tue, 25 Sep 2018 21:50:16 +0200
Message-Id: <20180925195016.3683-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] fs: improve ramfs_truncate speed
To: barebox@lists.infradead.org
Cc: Maciej Zagrabski <m.zagrabski@grinn-global.com>, Marcin Niestroj <m.niestroj@grinn-global.com>

During sequential writes into single file, fs layer is consequently
calling ramfs_truncate() function. When file size grows
ramfs_truncate() takes more and more time to complete, due to
interations through all already written data chunks. As an example
loading ~450M image using usb fastboot protocol took over 500s to
complete.

Use ramfs_find_chunk() function to search for last chunk of data in
ramfs_truncate() implementation, which saves a lot of loop
iterations. As a result loading ~450M image using usb fastboot
protocol takes around 25s now.

Tested-by: Maciej Zagrabski <m.zagrabski@grinn-global.com>
Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 fs/ramfs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 7548bdac9..6f4aa0675 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -362,6 +362,9 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 			if (!node->data)
 				return -ENOMEM;
 			data = node->data;
+		} else {
+			data = ramfs_find_chunk(node, oldchunks - 1);
+			newchunks -= (oldchunks - 1);
 		}
 
 		newchunks--;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

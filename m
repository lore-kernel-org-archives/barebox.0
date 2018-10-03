Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7fYN-0002Vk-BS
 for barebox@lists.infradead.org; Wed, 03 Oct 2018 11:42:57 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  3 Oct 2018 13:42:16 +0200
Message-Id: <20181003114216.22102-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] fs: fix NULL pointer dereference in ramfs_truncate
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

This patch fixes lately introduced speed improvement of ramfs_truncate
function. Number of chunks were passed to ramfs_find_chunk function,
which returned NULL as result. Chunks are indexed from 0, hence we
need to pass (number_of_chunks - 1) to get pointer to the last chunk.

Fixes: d49dd1d840d7 ("fs: improve ramfs_truncate speed")
Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Hi,

Just few words to clarify where this bug come from.

We are fixing now patch [1], which was rebased on top of patch [2].
Simple file transfer using fastboot protocol worked fine in such
configuration. However it turned out that [2] had bug (`newchunks = 1`
instead of `oldchunks = 1`). After [2] was fixed it turned out that
[1] has also bug, which results in NULL pointer dereference during
file upload with fastboot protocol.

Patch tested on `next` branch.

[1] http://lists.infradead.org/pipermail/barebox/2018-September/034859.html
[2] http://lists.infradead.org/pipermail/barebox/2018-September/034855.html

 fs/ramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index bad126c65..84ecfa0dd 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -380,7 +380,7 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 
 	if (newchunks > oldchunks) {
 		if (data) {
-			data = ramfs_find_chunk(node, oldchunks);
+			data = ramfs_find_chunk(node, oldchunks - 1);
 		} else {
 			node->data = ramfs_get_chunk();
 			if (!node->data)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

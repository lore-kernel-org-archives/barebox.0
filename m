Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002my-GI
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:04 +0200
Message-Id: <20200930072005.1407-11-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/12] sandbox: fix behavior with images >= 4G on 32-bit
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

hf->base may remain uninitialized if an image is > 4G, but sandbox
barebox is compiled for 32-bit. Fix this.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/common.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 43ee95edb6e3..72bb35464f25 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -289,6 +289,7 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	hf->fd = fd;
 	hf->filename = filename;
 	hf->is_blockdev = blkdev;
+	hf->base = (unsigned long)MAP_FAILED;
 
 	if (fd < 0) {
 		perror("open");
@@ -311,15 +312,16 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 		if (!cdev)
 			hf->is_blockdev = 1;
 	}
-	if (hf->size <= SIZE_MAX)
+	if (hf->size <= SIZE_MAX) {
 		hf->base = (unsigned long)mmap(NULL, hf->size,
 				PROT_READ | (readonly ? 0 : PROT_WRITE),
 				MAP_SHARED, fd, 0);
-	else
-		printf("warning: %s: contiguous map failed\n", filename);
 
-	if (hf->base == (unsigned long)MAP_FAILED)
-		printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
+		if (hf->base == (unsigned long)MAP_FAILED)
+			printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
+	} else {
+		printf("warning: %s: contiguous map failed\n", filename);
+	}
 
 	if (blkdev && hf->size % 512 != 0) {
 		printf("warning: registering %s as block device failed: invalid block size\n",
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

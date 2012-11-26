Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TctcG-0007yl-Ey
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 08:00:34 +0000
Date: Mon, 26 Nov 2012 09:00:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126080030.GT10369@pengutronix.de>
References: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] Some corrections on archosG9
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 24, 2012 at 04:24:22AM +0100, Vicente Bergas wrote:
> In the patch series for archosG9 there were an attempt to improve file
> transfers by reading files at once, but finally this solution was discarded.
> Today I've checked the repository and found this solution there, perhaps this
> is a misunderstanding and it's corrected here.
> Sorry for not checking before.
> 
> The other change is just the inverse: a submitted patch that was not applied.
> 
> Vicente Bergas (2):
>   uimage: fix misunderstanding in common/uimage.c
>   archosg9: improve configuration
> 
>  arch/arm/boards/archosg9/env/config       |  4 +++-
>  arch/arm/boards/archosg9/env/init/usbboot |  9 +++++----
>  arch/arm/configs/archosg9_defconfig       |  2 +-
>  common/uimage.c                           | 24 ------------------------
>  4 files changed, 9 insertions(+), 30 deletions(-)

Applied, thanks

As a side note, I still have this patch in my queue which fixes
read_file for tftp severs which do not pass the size. My tftp server at
home is one of these, I'll repost the patch once I tested it again.

Sascha


From 1508618b3bc53abf122b9c7473f468e67b391b19 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 17:59:46 +0100
Subject: [PATCH] read_file: Make it work on tftp servers which do not pass
 size

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |   11 +++++++++++
 fs/tftp.c    |    5 ++++-
 include/fs.h |    2 ++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index db4621a..871dc26 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -41,10 +41,21 @@ void *read_file(const char *filename, size_t *size)
 	int fd;
 	struct stat s;
 	void *buf = NULL;
+	const char *tmpfile = "/_read_file_tmp";
+	int ret;
 
+again:
 	if (stat(filename, &s))
 		return NULL;
 
+	if (s.st_size == FILESIZE_MAX) {
+		ret = copy_file(filename, tmpfile, 0);
+		if (ret)
+			return NULL;
+		filename = tmpfile;
+		goto again;
+	}
+
 	buf = xzalloc(s.st_size + 1);
 
 	fd = open(filename, O_RDONLY);
diff --git a/fs/tftp.c b/fs/tftp.c
index b58d6fc..13e117a 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -590,7 +590,10 @@ static int tftp_stat(struct device_d *dev, const char *filename, struct stat *s)
 		return PTR_ERR(priv);
 
 	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
-	s->st_size = priv->filesize;
+	if (priv->filesize)
+		s->st_size = priv->filesize;
+	else
+		s->st_size = FILESIZE_MAX;
 
 	tftp_do_close(priv);
 
diff --git a/include/fs.h b/include/fs.h
index 3d5714c..b6a46bb 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,6 +147,8 @@ int protect(int fd, size_t count, unsigned long offset, int prot);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
 
+#define FILESIZE_MAX	((size_t)-1)
+
 #define PROT_READ	1
 #define PROT_WRITE	2
 
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

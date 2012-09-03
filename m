Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8T8S-0007UC-LF
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 09:40:02 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 971C1DC430E
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 11:45:16 +0200 (CEST)
Date: Mon, 3 Sep 2012 11:40:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120903094016.GB24296@game.jcrosoft.org>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <20120903083520.GD26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903083520.GD26594@pengutronix.de>
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
Subject: Re: [PATCH 00/18 v2] fs: add symlink and readlink support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:35 Mon 03 Sep     , Sascha Hauer wrote:
> On Sat, Sep 01, 2012 at 02:35:11PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	v2:
> > 	 addres comments
> > 
> > please pull
> > The following changes since commit b77300ac6c6bbbc7eac774ff0076c7c05d39735f:
> > 
> >   command/mount: add autodetection support (2012-08-21 18:53:00 +0800)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git tags/fs-symlink
> > 
> 
> The following results in a crash here:
> 
> # mkdir mymount
> # mount -t ramfs none mymount/
> # ln /env/boot/net /mymount/link

found

this will fix it

diff --git a/fs/fs.c b/fs/fs.c
index 05a1b85..53d8316 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1060,17 +1060,24 @@ int symlink(const char *pathname, const char *newpath)
 {
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
-	char *p = normalise_path(pathname);
+	char *p;
+	char *freep = normalise_path(pathname);
 	int ret;
 	struct stat s;
 
-	if (!stat(p, &s) && S_ISDIR(s.st_mode)) {
+	if (!freep)
+		return -ENOMEM;
+
+	if (!stat(freep, &s) && S_ISDIR(s.st_mode)) {
 		ret = -ENOSYS;
 		goto out;
 	}
 
-	free(p);
-	p = normalise_path(newpath);
+	free(freep);
+	freep = p = normalise_path(newpath);
+
+	if (!p)
+		return -ENOMEM;
 
 	ret = stat(p, &s);
 	if (!ret) {
@@ -1092,7 +1099,7 @@ int symlink(const char *pathname, const char *newpath)
 	}
 
 out:
-	free(p);
+	free(freep);
 	if (ret)
 		errno = -ret;
 


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

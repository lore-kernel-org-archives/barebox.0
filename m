Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkVXq-0003jM-7h
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 11:09:03 +0000
Received: by lbwr8 with SMTP id r8so76315302lbw.2
 for <barebox@lists.infradead.org>; Fri, 09 Oct 2015 04:08:39 -0700 (PDT)
Date: Fri, 9 Oct 2015 14:11:07 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151009141107.39681df1@berta>
In-Reply-To: <20151009063149.GD7858@pengutronix.de>
References: <1444233177-21491-1-git-send-email-pmamonov@gmail.com>
 <20151009063149.GD7858@pengutronix.de>
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
Subject: Re: [PATCH] fixup! detect_fs: use device instead of file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, vicencb@gmail.com

On Fri, 9 Oct 2015 08:31:49 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Oct 07, 2015 at 06:52:57PM +0300, Peter Mamonov wrote:
> > ---
> >  fs/fs.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index c041e41..6283cea 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -1201,7 +1201,7 @@ EXPORT_SYMBOL(register_fs_driver);
> >  
> >  static const char *detect_fs(const char *filename)
> >  {
> > -	enum filetype type = cdev_detect_type(filename);
> > +	enum filetype type = cdev_detect_type(basename(filename));
> 
> basename is not so nice since we do not know whether the the part of
> the path we drop is really what we expect. Can we rather have a:
> 
> 	if (!strncmp(filename, "/dev/", 5))
> 		filename += 5;

What if devfs is mounted somehere else (not on /dev)?

Let me clarify the situation. After applying "detect_fs: use device
instead of file" the mount command becomes completely broken for me,
since detect_fs() is supplied with the full path to the device file,
while cdev_by_name() expects device file name rather than full path:

static const char *detect_fs(const char *filename)
{
	enum filetype type = cdev_detect_type(filename);
	...
	if (type == filetype_unknown)
		return NULL;
	...
}
struct cdev *cdev_by_name(const char *filename)
{
	struct cdev *cdev;

	list_for_each_entry(cdev, &cdev_list, list) {
		if (!strcmp(cdev->name, filename)) <<<<<<< NO MATCH
			return cdev;
	}
	return NULL;
}
struct cdev {
	...
	char *name; /* filename under /dev/ */
	...
}

Can you explain how could it work for Vicente:
http://lists.infradead.org/pipermail/barebox/2015-October/024832.html
?

Peter

> 
> Sascha
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkbI0-0006WA-6t
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 17:17:05 +0000
Received: by ykdg206 with SMTP id g206so84351310ykd.1
 for <barebox@lists.infradead.org>; Fri, 09 Oct 2015 10:16:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151009162123.GH7858@pengutronix.de>
References: <1444233177-21491-1-git-send-email-pmamonov@gmail.com>
 <20151009063149.GD7858@pengutronix.de>
 <20151009141107.39681df1@berta>
 <20151009162123.GH7858@pengutronix.de>
Date: Fri, 9 Oct 2015 18:16:42 +0100
Message-ID: <CAAMcf8Dc1N-7=fnVYY=_suPWLkFueSbiP-pB+iKe57wwgE6Kug@mail.gmail.com>
From: Vicente <vicencb@gmail.com>
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
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, Oct 9, 2015 at 5:21 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Oct 09, 2015 at 02:11:07PM +0300, Peter Mamonov wrote:
>> On Fri, 9 Oct 2015 08:31:49 +0200
>> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>
>> > On Wed, Oct 07, 2015 at 06:52:57PM +0300, Peter Mamonov wrote:
>> > > ---
>> > >  fs/fs.c | 2 +-
>> > >  1 file changed, 1 insertion(+), 1 deletion(-)
>> > >
>> > > diff --git a/fs/fs.c b/fs/fs.c
>> > > index c041e41..6283cea 100644
>> > > --- a/fs/fs.c
>> > > +++ b/fs/fs.c
>> > > @@ -1201,7 +1201,7 @@ EXPORT_SYMBOL(register_fs_driver);
>> > >
>> > >  static const char *detect_fs(const char *filename)
>> > >  {
>> > > - enum filetype type = cdev_detect_type(filename);
>> > > + enum filetype type = cdev_detect_type(basename(filename));
>> >
>> > basename is not so nice since we do not know whether the the part of
>> > the path we drop is really what we expect. Can we rather have a:
>> >
>> >     if (!strncmp(filename, "/dev/", 5))
>> >             filename += 5;
>>
>> What if devfs is mounted somehere else (not on /dev)?
>
> Hm, Let's erm, consider that not supported ;)
> We already have some places where we expect devfs mounted to /dev/.
> Not particularly nice I must admit.
>
>>
>> Let me clarify the situation. After applying "detect_fs: use device
>> instead of file" the mount command becomes completely broken for me,
>> since detect_fs() is supplied with the full path to the device file,
>> while cdev_by_name() expects device file name rather than full path:
>>
>> static const char *detect_fs(const char *filename)
>> {
>>       enum filetype type = cdev_detect_type(filename);
>>       ...
>>       if (type == filetype_unknown)
>>               return NULL;
>>       ...
>> }
>> struct cdev *cdev_by_name(const char *filename)
>> {
>>       struct cdev *cdev;
>>
>>       list_for_each_entry(cdev, &cdev_list, list) {
>>               if (!strcmp(cdev->name, filename)) <<<<<<< NO MATCH
>>                       return cdev;
>>       }
>>       return NULL;
>> }
>> struct cdev {
>>       ...
>>       char *name; /* filename under /dev/ */
>>       ...
>> }
>>
>> Can you explain how could it work for Vicente:
>> http://lists.infradead.org/pipermail/barebox/2015-October/024832.html
>> ?
>
> Presumely He passes the device name (without /dev/) to mount.

Yes, that is correct, from
http://git.pengutronix.de/?p=barebox.git;a=blob;f=arch/arm/mach-omap/xload.c#l104
what is mount is just the partition name.
The only thing is that it is not me, that was already there.

Regards,
  Vicente.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

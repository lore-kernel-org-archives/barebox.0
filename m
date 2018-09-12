Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g06ip-0002Qf-CN
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 15:06:29 +0000
Date: Wed, 12 Sep 2018 17:06:07 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <239331798.146117.1536764767235@mail.vodafone.de>
In-Reply-To: <20180912071257.GC7949@pengutronix.de>
References: <25ad4979-9e11-45a4-7e17-efa903435574@arcor.de>
 <20180912071257.GC7949@pengutronix.de>
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
Subject: Re: problems writing an fs image to a disk partition
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


> On September 12, 2018 at 9:12 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> Hi Giorgio,
> 
> On Tue, Sep 11, 2018 at 10:33:52PM +0200, Giorgio Dal Molin wrote:
> > Hi,
> > 
> > today I've tried barebox v2018.09.0 on an EFI system.
> > It basically runs but I have problems when writing an fs image file
> > to a disk partition:
> > 
> >  > cp rootfs.img /dev/disk1.userland
> > 
> > barebox v2018.09.0 returns a 'no space left on device' error.
> > 
> > First of all I must ask if this is still the proper way to
> > write a content to a disk partition.
> 
> Yes, it is. You found a bug.
> 
> > 
> > In case this should still work as expected here is a pseudo
> > backtrace of how the error happens on my system:
> > 
> > commands/cp.c:do_cp() ret = copy_file(argv[i], argv[argc - 1], verbose);
> > lib/libfile.c:copy_file() dstfd = open(dst, mode);
> > fs/fs.c:open() error = fsdrv->truncate(&fsdev->dev, f, 0);
> > fs/devfs.c: devfs_truncate()
> > 
> > in the call to devfs_truncate() I see cdev->ops->truncate == NULL
> > and f->fsdev->dev.num_resources == 0 and this makes the function
> > return -ENOSPC.
> > 
> > Hope the report helps identify a problem.
> 
> Yes, indeed, thanks. The problem was that with the switch to dentry
> cache implementation the files in /dev/ no longer appear as character
> devices but as regular files. the copy_file function then does a
> truncate on the files which fails. I just sent out a patch addressing
> this issue, please test. I would also recommend to take the second patch
> although this fixes another issue.
> 
> Sascha
> 

Hi,

I've applied the two patches and I can confirm that they fix the problem
for me.

Thanks again.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

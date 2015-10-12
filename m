Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlaIL-0000tk-BP
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 10:25:30 +0000
Received: by lbbk10 with SMTP id k10so26046496lbb.0
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 03:25:07 -0700 (PDT)
Date: Mon, 12 Oct 2015 13:27:35 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151012132735.5f1a30ff@berta>
In-Reply-To: <20151009161143.GG7858@pengutronix.de>
References: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
 <20151009080624.GF7858@pengutronix.de>
 <20151009154037.389bb1ab@berta>
 <20151009161143.GG7858@pengutronix.de>
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
Subject: Re: [RFC] common: filetype: is_fat_or_mbr() considered harmful
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 9 Oct 2015 18:11:44 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Oct 09, 2015 at 03:40:37PM +0300, Peter Mamonov wrote:
> > On Fri, 9 Oct 2015 10:06:24 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > Hi Peter,
> > > 
> > > On Wed, Oct 07, 2015 at 09:03:56PM +0300, Peter Mamonov wrote:
> > > > Deleted pieces of code detect MBR-containig device as a FAT-type
> > > > device, if it's first partition contains a FAT filesystem. So,
> > > > one can mount the first partition of a hard drive containing
> > > > FAT FS using the following command: barebox:
> > > > mount /dev/ata0.0 /mnt/0 as well as this one:
> > > > 	barebox: mount /dev/ata0 /mnt/1
> > > > Both commands mount the same FS.
> > > > 
> > > > This behaviour causes automount (mount -a) to mount FAT FS
> > > > on a first partition twice:
> > > > 	barebox: mount
> > > > 	none on / type ramfs
> > > > 	none on /dev type devfs
> > > > 	/dev/ata0 on /mnt/ata0 type fat
> > > > 	/dev/ata0.0 on /mnt/ata0.0 type fat
> > > > 	/dev/ata0.1 on /mnt/ata0.1 type ext4
> > > 
> > > This is_fat_or_mbr mechanism never worked very well and had funny
> > > side effects. Would be nice to get rid of it.
> > > Simply removing this option is not a solution though, we have to
> > > find a proper way to keep the current feature and make it more
> > > sane.
> > 
> > Ok, the patch comment is misleading a bit. I do not propose to get
> > rid of the is_fat_or_mbr() completely. However, I do not see the
> > point to check for a FAT FS, after the device was correctly
> > detected as an MBR-type device:
> > 
> > enum filetype file_name_detect_type(const char *filename)
> >        ... 
> >        type = file_detect_type(buf, ret);
> >  
> >        if (type == filetype_mbr) {
> >                /*
> >                 * Get the first partition start sector
> >                 * and check for FAT in it
> >                 */
> >                is_fat_or_mbr(buf, &bootsec);
> >                ret = lseek(fd, (bootsec) * 512, SEEK_SET);
> >                if (ret < 0)
> >                        goto err_out;
> >                ret = read(fd, buf, 512);
> >                if (ret < 0)
> >                        goto err_out;
> >                type = is_fat_or_mbr((u8 *)buf, NULL);
> >        }
> > 
> > 
> > The deleted code snippet was introduced by this patch:
> > 
> > commit 010ee209b75c5732ae4144e3ee9ce14158193c1f
> > Author: Franck Jullien <franck.jullien@gmail.com>
> > Date:   Wed Sep 19 13:09:01 2012 +0200
> > 
> >     filetype: Improve FAT detection
> >     
> >     We may have some disk with MBR as a first sector. In this case,
> > the current FAT check returns an error. However, the FAT sector
> > exist and the MBR can tell us where it is.
> >     
> >     This patch add to file_name_detect_type function the ability to
> > find the FAT boot sector on the first sector of the first partition
> > in case it is not on sector 0.
> >     
> >     It also introduce is_fat_or_mbr to check if a buffer is a FAT
> > boot or MBR sector
> >     
> >     Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > According to the patch message it was introduced to workaround FAT
> > detection. However, after deletion of the code I'm still able to
> > detect and mount FAT-containig partiotions.
> 
> But can you mount /dev/disk0 if this disk contains a partition table
> and the FAT is on /dev/disk0.0?

No. This is actually the purpose of my patch, since I don't want
"mount -a" to mount the same partition (FAT on /dev/disk0.0) twice.

> This is what the patch is about. The
> problem the patches solved is that when you plug in a USB drive then
> you don't know whether a FAT is directly on the device or if the
> device is partitioned. You want to be able to mount both ways with
> the same command, so no matter if the FAT is on /dev/disk0
> or /dev/disk0.0 you can mount both using /dev/disk0.

Ok. So what is the preferred way to prevent "mount -a" from mounting
/dev/disk0 and /dev/disk0.0 at the same time?

> The way this problem is solved currently is not very good, we should
> find a better way.
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

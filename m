Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZleEO-0001JU-SB
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 14:37:42 +0000
Received: by iodv82 with SMTP id v82so52563672iod.0
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 07:37:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151012172156.526ede520dd2436118ae36f4@gmail.com>
References: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
 <20151009080624.GF7858@pengutronix.de>
 <20151009154037.389bb1ab@berta>
 <20151009161143.GG7858@pengutronix.de>
 <20151012132735.5f1a30ff@berta>
 <20151012135105.GW7858@pengutronix.de>
 <20151012172156.526ede520dd2436118ae36f4@gmail.com>
Date: Mon, 12 Oct 2015 16:37:18 +0200
Message-ID: <CAJfOKBxKz5K865kE-6yo2kb+G-E_9yu3j9J32122w0YXx=+YTQ@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, Peter Mamonov <pmamonov@gmail.com>

2015-10-12 16:21 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> On Mon, 12 Oct 2015 15:51:05 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
>> On Mon, Oct 12, 2015 at 01:27:35PM +0300, Peter Mamonov wrote:
>> > On Fri, 9 Oct 2015 18:11:44 +0200
>> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> >
>> > > On Fri, Oct 09, 2015 at 03:40:37PM +0300, Peter Mamonov wrote:
>> > > > On Fri, 9 Oct 2015 10:06:24 +0200
>> > > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > > >
>> > > > > Hi Peter,
>> > > > >
>> > > > > On Wed, Oct 07, 2015 at 09:03:56PM +0300, Peter Mamonov wrote:
>> > > > > > Deleted pieces of code detect MBR-containig device as a FAT-type
>> > > > > > device, if it's first partition contains a FAT filesystem. So,
>> > > > > > one can mount the first partition of a hard drive containing
>> > > > > > FAT FS using the following command: barebox:
>> > > > > > mount /dev/ata0.0 /mnt/0 as well as this one:
>> > > > > >     barebox: mount /dev/ata0 /mnt/1
>> > > > > > Both commands mount the same FS.
>> > > > > >
>> > > > > > This behaviour causes automount (mount -a) to mount FAT FS
>> > > > > > on a first partition twice:
>> > > > > >     barebox: mount
>> > > > > >     none on / type ramfs
>> > > > > >     none on /dev type devfs
>> > > > > >     /dev/ata0 on /mnt/ata0 type fat
>> > > > > >     /dev/ata0.0 on /mnt/ata0.0 type fat
>> > > > > >     /dev/ata0.1 on /mnt/ata0.1 type ext4
>> > > > >
>> > > > > This is_fat_or_mbr mechanism never worked very well and had funny
>> > > > > side effects. Would be nice to get rid of it.
>> > > > > Simply removing this option is not a solution though, we have to
>> > > > > find a proper way to keep the current feature and make it more
>> > > > > sane.
>> > > >
>> > > > Ok, the patch comment is misleading a bit. I do not propose to get
>> > > > rid of the is_fat_or_mbr() completely. However, I do not see the
>> > > > point to check for a FAT FS, after the device was correctly
>> > > > detected as an MBR-type device:
>> > > >
>> > > > enum filetype file_name_detect_type(const char *filename)
>> > > >        ...
>> > > >        type = file_detect_type(buf, ret);
>> > > >
>> > > >        if (type == filetype_mbr) {
>> > > >                /*
>> > > >                 * Get the first partition start sector
>> > > >                 * and check for FAT in it
>> > > >                 */
>> > > >                is_fat_or_mbr(buf, &bootsec);
>> > > >                ret = lseek(fd, (bootsec) * 512, SEEK_SET);
>> > > >                if (ret < 0)
>> > > >                        goto err_out;
>> > > >                ret = read(fd, buf, 512);
>> > > >                if (ret < 0)
>> > > >                        goto err_out;
>> > > >                type = is_fat_or_mbr((u8 *)buf, NULL);
>> > > >        }
>> > > >
>> > > >
>> > > > The deleted code snippet was introduced by this patch:
>> > > >
>> > > > commit 010ee209b75c5732ae4144e3ee9ce14158193c1f
>> > > > Author: Franck Jullien <franck.jullien@gmail.com>
>> > > > Date:   Wed Sep 19 13:09:01 2012 +0200
>> > > >
>> > > >     filetype: Improve FAT detection
>> > > >
>> > > >     We may have some disk with MBR as a first sector. In this case,
>> > > > the current FAT check returns an error. However, the FAT sector
>> > > > exist and the MBR can tell us where it is.
>> > > >
>> > > >     This patch add to file_name_detect_type function the ability to
>> > > > find the FAT boot sector on the first sector of the first partition
>> > > > in case it is not on sector 0.
>> > > >
>> > > >     It also introduce is_fat_or_mbr to check if a buffer is a FAT
>> > > > boot or MBR sector
>> > > >
>> > > >     Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
>> > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> > > >
>> > > > According to the patch message it was introduced to workaround FAT
>> > > > detection. However, after deletion of the code I'm still able to
>> > > > detect and mount FAT-containig partiotions.
>> > >
>> > > But can you mount /dev/disk0 if this disk contains a partition table
>> > > and the FAT is on /dev/disk0.0?
>> >
>> > No. This is actually the purpose of my patch, since I don't want
>> > "mount -a" to mount the same partition (FAT on /dev/disk0.0) twice.
>>
>> I know, and this is valid. It just conflicts with what Franck wants. He
>> just wants to mount a USB device without having to know if the FAT is on
>> the raw device or on the first partition.
>>
>> >
>> > > This is what the patch is about. The
>> > > problem the patches solved is that when you plug in a USB drive then
>> > > you don't know whether a FAT is directly on the device or if the
>> > > device is partitioned. You want to be able to mount both ways with
>> > > the same command, so no matter if the FAT is on /dev/disk0
>> > > or /dev/disk0.0 you can mount both using /dev/disk0.
>> >
>> > Ok. So what is the preferred way to prevent "mount -a" from mounting
>> > /dev/disk0 and /dev/disk0.0 at the same time?
>>
>> Sorry, I do not have a solution currently. I'll have a look into it.
>
> Can we just add a .config option for disabling "Frank mode"?
>
> --
> Best regards,
>   Antony Pavlov
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

This is not important for me.
I faced this situation when I was playing with SD cards controllers.

However, if I had a problem it may arise for someone else.

Feel free to remove this detection or, as Antony suggested, add a config option.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

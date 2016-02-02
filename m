Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x232.google.com ([2607:f8b0:400d:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQVNF-0001mV-Bn
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 07:27:42 +0000
Received: by mail-qg0-x232.google.com with SMTP id b35so140916881qge.0
 for <barebox@lists.infradead.org>; Mon, 01 Feb 2016 23:27:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160201084731.GM13058@pengutronix.de>
References: <1454076381-17375-1-git-send-email-yegorslists@googlemail.com>
 <1454076381-17375-2-git-send-email-yegorslists@googlemail.com>
 <20160201084731.GM13058@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 2 Feb 2016 08:27:00 +0100
Message-ID: <CAGm1_kvs5C7szOpBgHAQe1oQRbWrcS+HxxjfOxizvy2S2b2dVg@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] fs: add super_operations infrastructure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Feb 1, 2016 at 9:47 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Jan 29, 2016 at 03:06:21PM +0100, yegorslists@googlemail.com wrote:
>> From: Yegor Yefremov <yegorslists@googlemail.com>
>>
>> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> ---
>>  fs/Makefile        |  1 +
>>  fs/inode.c         | 34 ++++++++++++++++++++++++++++++++++
>>  fs/ubifs/super.c   | 26 +++++++++++---------------
>>  include/linux/fs.h |  6 ++++++
>>  4 files changed, 52 insertions(+), 15 deletions(-)
>>  create mode 100644 fs/inode.c
>>
>> diff --git a/fs/Makefile b/fs/Makefile
>> index 7896e38..320e6fa 100644
>> --- a/fs/Makefile
>> +++ b/fs/Makefile
>> @@ -5,6 +5,7 @@ obj-y                 += devfs-core.o
>>  obj-$(CONFIG_FS_DEVFS)       += devfs.o
>>  obj-$(CONFIG_FS_FAT) += fat/
>>  obj-y        += fs.o
>> +obj-y        += inode.o
>>  obj-$(CONFIG_FS_UBIFS)       += ubifs/
>>  obj-$(CONFIG_FS_TFTP)        += tftp.o
>>  obj-$(CONFIG_FS_OMAP4_USBBOOT)       += omap4_usbbootfs.o
>> diff --git a/fs/inode.c b/fs/inode.c
>> new file mode 100644
>> index 0000000..f9b1b63
>> --- /dev/null
>> +++ b/fs/inode.c
>> @@ -0,0 +1,34 @@
>> +/*
>> + * (C) 1997 Linus Torvalds
>> + * (C) 1999 Andrea Arcangeli <andrea@suse.de> (dynamic inode allocation)
>> + */
>> +
>> +#include <linux/mount.h>
>> +
>> +/**
>> + * iget_locked - obtain an inode from a mounted file system
>> + * @sb:              super block of file system
>> + * @ino:     inode number to get
>> + *
>> + * Search for the inode specified by @ino in the inode cache and if present
>> + * return it with an increased reference count. This is for file systems
>> + * where the inode number is sufficient for unique identification of an inode.
>> + *
>> + * If the inode is not in cache, allocate a new inode and return it locked,
>> + * hashed, and with the I_NEW flag set.  The file system gets to fill it in
>> + * before unlocking it via unlock_new_inode().
>> + */
>> +struct inode *iget_locked(struct super_block *sb, unsigned long ino)
>> +{
>> +     struct inode *inode;
>> +
>> +     inode = sb->s_op->alloc_inode(sb);
>> +     if (inode) {
>> +             inode->i_ino = ino;
>> +             inode->i_sb = sb;
>> +             list_add(&inode->i_sb_list, &sb->s_inodes);
>> +             inode->i_state = I_SYNC | I_NEW;
>> +     }
>> +
>> +     return inode;
>> +}
>
> Let's stop here, the border has been crossed. We can introduce no-op
> wrappers for functions which do not have any meaning in barebox
> (spinlocks and the like), we can introduce convenience wrappers for
> functions that have a different name in barebox (like kmalloc), but
> please let's not introduce functions which do more complicated things
> which depend on structures being ordered the way they are in the Linux
> kernel. I'm really afraid this way we merge more and more code from
> Linux that doesn't really make sense in the barebox context and that we
> have to keep code in the filesystem drivers just to make the parallel
> universe of the Linux wrappers happy. That's a can of worms I don't want
> to open.

OK. We'll see, what can be generalized between ubifs and squashfs
after I'm finished.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

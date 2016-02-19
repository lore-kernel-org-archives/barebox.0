Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x236.google.com ([2607:f8b0:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWmSE-0002Ob-Lb
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 14:54:47 +0000
Received: by mail-vk0-x236.google.com with SMTP id e6so75976188vkh.2
 for <barebox@lists.infradead.org>; Fri, 19 Feb 2016 06:54:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160217071847.GK19372@pengutronix.de>
References: <1455610997-7608-1-git-send-email-yegorslists@googlemail.com>
 <1455610997-7608-3-git-send-email-yegorslists@googlemail.com>
 <CAGm1_ksKCs70eR+rmw-iWfzZO7SdGA1T6JEmkuwwhXzA=eqNWw@mail.gmail.com>
 <20160217071847.GK19372@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 19 Feb 2016 15:54:05 +0100
Message-ID: <CAGm1_ksOepaJBAQm3ciinJx5pDX7ZBS-KhsBq=Wjfis+9syw2w@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/3] fs: add support for SquashFS 4.0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Feb 17, 2016 at 8:18 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Feb 16, 2016 at 09:38:03AM +0100, Yegor Yefremov wrote:
>> On Tue, Feb 16, 2016 at 9:23 AM,  <yegorslists@googlemail.com> wrote:
>> > From: Yegor Yefremov <yegorslists@googlemail.com>
>> >
>> > The driver was imported from Linux 4.4.
>> >
>> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> > ---
>> > Changes:
>> >         v2: - fix checkpatch errors
>> >             - remove spinlock/wait code from cache implementation
>> >             - fix directory listing
>> >             - add documentation entry about SquashFS
>> >             - fix compiling without XZ enabled
>> >             - fix some memory leaks
>>
>> Memory leaks:
>>
>> 1. mount still produces 20 bytes, that I still haven't identified
>
> Does this accumulate if you repeat mount/unmount? Usually when
> allocating/freeing bunches of memory you don't have the exact amount of
> memory free afterwards.

hm, here is my output:

barebox:/ mkdir -p /mnt; meminfo; mount -t squashfs
/dev/spiflash.FileSystem /mnt; umount /mnt; meminfo
used: 101804
free: 4087068
squashfs squashfs0: squashfs_mount
used: 101816
free: 4087052
barebox:/ mkdir -p /mnt; meminfo; mount -t squashfs
/dev/spiflash.FileSystem /mnt; umount /mnt; meminfo
used: 101848
free: 4087024
squashfs squashfs0: squashfs_mount
used: 101860
free: 4087004
barebox:/ mkdir -p /mnt; meminfo; mount -t squashfs
/dev/spiflash.FileSystem /mnt; umount /mnt; meminfo
used: 101844
free: 4087024
squashfs squashfs0: squashfs_mount
used: 101864
free: 4086996

>> 2. ls -l has about 300 bytes, how do I best handle qstr duplicating?
>> Its name is *const char **. If I'm doing alloc() I'm breaking this
>> qualifier.

Fixed.

> Why do you alloc? In squashfs_readdir() you can do a
> nm.name = dentry->d_name.name instead of doing an extra allocation for
> the string.
>
>> 3. reading a file, i.e. cat has no memory leak so far according to meminfo
>
> \o/

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

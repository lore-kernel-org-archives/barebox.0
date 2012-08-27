Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T5u0f-000787-Jk
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 07:45:22 +0000
Received: by bkcji2 with SMTP id ji2so1172907bkc.36
 for <barebox@lists.infradead.org>; Mon, 27 Aug 2012 00:45:17 -0700 (PDT)
Message-ID: <503B2587.2090809@crane-soft.de>
Date: Mon, 27 Aug 2012 09:45:11 +0200
From: Peter <sailingsmoky@googlemail.com>
MIME-Version: 1.0
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de> <4FEBFF6C.6010304@crane-soft.de>
 <20120628104341.GW1623@pengutronix.de> <50366F9B.2080007@crane-soft.de>
 <1345797986.3519.4.camel@coredoba.hi.pengutronix.de>
In-Reply-To: <1345797986.3519.4.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: barebox@lists.infradead.org

Am 24.08.2012 10:46, schrieb Jan L=FCbbe:

Jan, thanks very much for pointing me into the right direction

> Hi!
> =

> On Thu, 2012-08-23 at 19:59 +0200, Peter wrote:
>> I am able to boot the kernel from NOR flash and use the mmc as rootfs. H=
owever
>> I did not yet find a way to boot the kernel from the MMC. I set up the M=
MC
>> with 255 heads, 63 sectors/track, 245 cylinders and formated partition 1=
 as
>> VFAT and made it bootable. I then copied uImage to it. Partition 2 conta=
ins
>> the rootfs which can be used when booting the kernel from flash.
>>
>> Barebox /env/config contains: (besides others)
>> ...
>>  kernel_loc=3Ddisk
>>  rootfs_loc=3Ddisk
>>  rootfs_type=3Dext2
>>  rootfs_part_linux_dev=3Dmmcblk0p2
>>  kernel_part=3Ddisk0.0
>> ...
>>
>> Trying to boot results in:
>> booting kernel from /dev/disk0.0
>>
>> and then followed by the barebox prompt.
> =

> You're using the old default-env which does not support uImage on FAT
> (only a kernel directly in a partition). Either switch to default-env-2
> and mount the FAT ('mount /dev/disk0.0 fat /mnt') before loading the
> kernel from /mnt/uImage.
> Otherwise for the old default-env take a look at
> <1345472428-17417-13-git-send-email-jlu@pengutronix.de>. Note that for
> that to work, the FAT must be mounted by the board code or you need to
> setup an automount.


After implementing all required driver and support into barebox, it turns
out that I also need to increase it's partition size to 512K. I then was
able to use the existing environment and changed the boot script as follows

elif [ x$kernel_loc =3D xdisk ]; then
     kdev=3D"/dev/$kernel_part"
+    mkdir /boot
+    mount $kdev fat /boot
+    kdev=3D/boot/UIMAGE

Many thanks, Peter


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

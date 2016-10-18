Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwXgg-0006tx-15
 for barebox@lists.infradead.org; Tue, 18 Oct 2016 16:56:27 +0000
Received: by mail-lf0-x232.google.com with SMTP id l131so32550036lfl.2
 for <barebox@lists.infradead.org>; Tue, 18 Oct 2016 09:56:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABvwO2AvfKwc==BhRfw14CzeX4ALwAFp5Zxn1t0MEj2bsn50zQ@mail.gmail.com>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610181017.27843.jbe@pengutronix.de>
 <CABvwO2AvfKwc==BhRfw14CzeX4ALwAFp5Zxn1t0MEj2bsn50zQ@mail.gmail.com>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Tue, 18 Oct 2016 18:56:03 +0200
Message-ID: <CABvwO2A6jNWz7_MOcxxAdJh_fAoV06uA9qk28dKZ5icfV07kQg@mail.gmail.com>
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
Subject: Re: Loading kernel issues
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi all!
Trying to autoboot from nand, I set my /env/config file like that (and
after that a "saveenv"). Although it doesn't work automaGically! :)

What do you think about this guys?
Thanks a lot!
(I'm gonna try the nfs mounting right now!)
mini2440:/ cat env/config
#!/bin/sh

machine=mini2440
user=

# use 'dhcp' to do dhcp in barebox and in kernel
# use 'none' if you want to skip kernel ip autoconfiguration
ip=dhcp

# or set your networking parameters here
#eth0.ipaddr=a.b.c.d
#eth0.netmask=a.b.c.d
#eth0.gateway=a.b.c.d
eth0.serverip=192.168.0.10
#eth0.ethaddr=a:b:b:d:e:f

# autoboot settings
# can be either 'tftp', 'nfs', 'nand' or 'mmc'
kernel_loc=nand
# can be either 'net', 'nand', 'initrd' or 'mmc'
rootfs_loc=nand
# can be either 'jffs2' or 'ubifs' for flash or 'ext3' for mmc
rootfs_type=jffs2

rootfsimage=root-${machine}.${rootfs_type}

# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
#kernelimage_type=zimage
#kernelimage=zImage-${machine}
kernelimage_type=uimage
kernelimage=uImage-$machine
#kernelimage_type=raw
#kernelimage=Image-$machine
#kernelimage_type=raw_lzo
#kernelimage=Image-$machine.lzo

# the name of the barebox image used by the update script
bareboximage=barebox-$machine

# the name of the barebox default environment used by the update script
bareboxenvimage=barebox-environment-$machine

if [ -n $user ]; then
kernelimage="${user}"-"${kernelimage}"
nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${machine}"
rootfsimage="${user}"-"${rootfsimage}"
else
nfsroot="/path/to/nfs/root"
fi

autoboot_timeout=3

if [ -e /dev/nor0 ]; then
       nor_parts="512k(barebox)"

       # Skip autoboot if not booting from NAND
       autoboot_disable=1
fi

#
# "mini2440" kernel parameter
# 0 .. 9 = screen type
# b = backlight enabled
# t = touch enabled
# c = camera enabled
# Note: can be "mini2440= " if nothing of these components are connected
#
bootargs="console=ttySAC0,115200 mini2440=0tbc rootdelay=5"

# NAND boot settings
# Device name used by the kernel
nand_device="nand"
# partition definition in the NAND
nand_parts="512k(barebox),384k(bareboxenv),2048k(kernel),-(root)"
# rootfs's partition number in the NAND
rootfs_mtdblock_nand=3
# used when manually booting with "boot nand" command
rootfs_mtdblock_type=jffs2

# MMC/SD boot settings
# partition number to read the kernel from
# (starting with # 0, Barebox's counting scheme)
kernel_mmc_part=0
# rootfs's partition number
# (starting with # 1, Kernel's counting scheme)
rootfs_mmc_part=2
# used when manually booting with "boot mmc" command
rootfs_mmc_type=ext2

2016-10-18 10:24 GMT+02:00 Javier Fileiv <javier.fileiv@gmail.com>:
> Yes I did it and the values are ok. When I get home I'll send my config file!
>
> Thanks
>
> 2016-10-18 10:17 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
>> Hi Javier,
>>
>> On Sunday 16 October 2016 23:06:15 Javier Fileiv wrote:
>>> I've just flashed barebox on my Mini2440. I have 2 questions/issues now
>>>
>>> 1) When trying to load the kernel from TFTP, everything is ok but when
>>> it's trying to mount the rootfs something is not working, even though
>>> I set the rootdelay param to 5 secs.
>>>
>>> 2) I tried also the boot from nand and is working just fine, but there
>>> no is auto boot when reseting the board... it just give me the barebox
>>> prompt each time, and if i run from there boot nand it works OK, but
>>> no automaGically. :)
>>
>> Did you modify the "/env/config"[1] file to define the default boot source?
>>
>> Cheers,
>> Juergen
>>
>> [1] "kernel_loc" and "rootfs_loc"
>>
>> --
>> Pengutronix e.K.                              | Juergen Borleis             |
>> Industrial Linux Solutions                    | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

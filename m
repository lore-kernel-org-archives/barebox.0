Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa5B0-0000Wo-RY
 for barebox@lists.infradead.org; Thu, 31 May 2012 13:12:33 +0000
Received: by yhjj52 with SMTP id j52so718667yhj.36
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 06:12:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120530054738.GF30400@pengutronix.de>
References: <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
 <20120530054738.GF30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 31 May 2012 15:12:08 +0200
Message-ID: <CAONxwYNf7_+H1oC2AuL2A_edBXqqkdSjxt6eFwPvU4VS+UzU0g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1812210611426009173=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1812210611426009173==
Content-Type: multipart/alternative; boundary=14dae9340b8dd2285d04c154d1ad

--14dae9340b8dd2285d04c154d1ad
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi

> +#
> > +# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
>
> You should replace this with your own copyright. I think J=FCrgen can liv=
e
> with not having a copyright on trivial files ;)
>

Ok, will do.


> > diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/config
>
> Have you considered using one of the environment templates? You
> shouldn't duplicate them.


I haven't, I'll have look into them once I get NOR and SD card
functionality inside barebox ... for which I have exactly one day left :).


> > +# or set your networking parameters here
> > +#eth0.ipaddr=3D192.168.1.80
> > +#eth0.netmask=3D255.255.255.0
> > +#eth0.gateway=3Da.b.c.d
> > +eth0.serverip=3D192.168.1.23
> > +eth0.ethaddr=3D00:50:c2:8c:e6:0e
>
> *never* *ever* add MAC addresses to the default environment.


 Ok. In my case, the MAC address is actually stored inside a secured at24
EEPROM buffer. Unfortunately, at24 via I2C does not seem to be available in
barebox. I reckon I have to port it from the kernel or uboot :).


> > + { .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, }, /* i=
nitial
> > value for ESDCFG0 */
>
> Your mailer wraps lines.


Yeah, sorry for that, gmail is all I have at the moment, however for
serious inclusion or review of any patches, I'll definitely try to resort
to ``git send-email''


> > +#endif
> > +#ifdef CONFIG_DRIVER_VIDEO_IMX
> > + //imx25_add_fb(&noah_fb_data);
>
> Please remove dead code before posting this for inclusion


Will do, thanks.

I have included some more debugging and also workarounds for the mx25. This
is the current debug output, where it clearly indicates that for some
reason the mx25 esdhc related registers never show a transfer complete for
a multiblock write:

Board: SID1 NOAH
registered netconsole as cs1
noah_read_ccm_regs: CCM CRDR =3D 00000000
noah_read_ccm_regs: CCM RCSR =3D 01020820
noah_read_ccm_regs: Booting from WEIM: NOR
imx-esdhc@mci0: registered as mci0
imx-esdhc@imx-esdhc0: set clock: wanted: 400000 got: 377840
imx-esdhc@imx-esdhc0: pre_div: 8 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
mci@mci0: SD Card Rev. 2.00 or later detected
mci@mci0: Put the Card in Identify Mode
mci@mci0: Card's identification data is: 1B534D30-30303030-101ABB6A-9500AB0=
0
mci@mci0: Get/Set relative address
mci@mci0: Get card's specific data
mci@mci0: Card's specific data is: 007FFF32-5B5A83BA-F6DBDFFF-0E800000
mci@mci0: Transfer speed: 25000000
mci@mci0: Max. block length are: Write=3D1024, Read=3D1024 Bytes
mci@mci0: Capacity: 1910 MiB
mci@mci0: Limiting max. read block size down to 512
mci@mci0: Limiting max. write block size down to 512
mci@mci0: Read block length: 512, Write block length: 512
mci@mci0: Select the card, and put it into Transfer Mode
mci@mci0: Changing transfer frequency
mci@mci0: Trying to read the SCR (try 1 of 3)
esdhc_setup_data: Check if workaround ENGcm01112 is needed
    on i.MX25 (0x00000008)
esdhc_setup_data: Enabling workaround for ENGcm01112 on i.MX25
esdhc_setup_data: Check if workaround ENGcm01112 is needed
    on i.MX25 (0x00000008)
esdhc_setup_data: Enabling workaround for ENGcm01112 on i.MX25
esdhc_setup_data: Check if workaround ENGcm01112 is needed
    on i.MX25 (0x00000040)
esdhc_setup_data: Enabling workaround for ENGcm01112 on i.MX25
mci@mci0: Prepare for bus width change
mci@mci0: Set SD bus width to 4 bit
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 50000000 got: 33250000
imx-esdhc@imx-esdhc0: pre_div: 0 div: 1
mci@mci0: Card is up and running now, registering as a disk
mci@mci0: registered disk0
mci@mci0: mci_sd_read: Read 1 block(s), starting at 0
mci@mci0: READ: Activating single block transfer
esdhc_setup_data: Check if workaround ENGcm01112 is needed
    on i.MX25 (0x00000040)
esdhc_setup_data: Enabling workaround for ENGcm01112 on i.MX25
mci@mci0: SD Card successfully added
imx25_devices_init: Adding NOR flash device
cfi_flash@cfi_flash0: cfi flash (id=3D01000000 vend=3D000002 manu=3D000001
devid=3D00007E extid=3D002301) at a0000000, size 64MB
imx25_devices_init: Adding initial NOR flash partitions
ehci@ehci0: USB EHCI 1.00
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  4

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash

sid1-noah:/ mkdir /mnt
sid1-noah:/ mount /dev/disk0.0 fat /mnt
mci@mci0: mci_sd_read: Read 128 block(s), starting at 2048
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
sid1-noah:/ cp /mnt/conmci@mci0: mci_sd_read: Read 128 block(s), starting
at 2560
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
sole_image.jffs2 /mnt/console_image.jffs2-backup
mci@mci0: mci_sd_read: Read 128 block(s), starting at 3584
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_read: Read 128 block(s), starting at 2304
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_read: Read 128 block(s), starting at 53760
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_read: Read 128 block(s), starting at 3712
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_read: Read 128 block(s), starting at 53888
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_read: Read 128 block(s), starting at 3840
mci@mci0: READ: Activating multiple block transfer
block_cache: blk->ops->read returned 0
mci@mci0: mci_sd_write: Write 128 block(s), starting at 2560
mci@mci0: WRITE: Activating multiple block transfer

Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Writing block 2560 failed with -110
mci@mci0: mci_sd_read: Read 128 block(s), starting at 54016
mci@mci0: READ: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x01a60000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x01a60000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x01a60000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Reading block 54016 failed with -110
block_cache: blk->ops->read returned -110
write: I/O error
mci@mci0: mci_sd_write: Write 128 block(s), starting at 2048
mci@mci0: WRITE: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x00100000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00100000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00100000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Writing block 2048 failed with -110
mci@mci0: mci_sd_write: Write 128 block(s), starting at 2304
mci@mci0: WRITE: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x00120000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00120000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00120000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Writing block 2304 failed with -110
mci@mci0: mci_sd_write: Write 128 block(s), starting at 53888
mci@mci0: WRITE: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x01a50000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x01a50000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x01a50000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Writing block 53888 failed with -110
mci@mci0: mci_sd_write: Write 128 block(s), starting at 53760
mci@mci0: WRITE: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x01a40000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x01a40000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x01a40000 (0x00000019) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Writing block 53760 failed with -110
mci@mci0: mci_sd_read: Read 128 block(s), starting at 2560
mci@mci0: READ: Activating multiple block transfer
esdhc_send_cmd: busy loop 1 CMD=3D0x00140000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00140000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00140000 (0x00000012) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000
    irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf7880587
 xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200
imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Reading block 2560 failed with -110
block_cache: blk->ops->read returned -110

I'll start looking at the uboot drivers, since the kernel drivers are quite
messy with regard to the software stack a SD cmd has to travel. In any
case, you before dropping a new barebox  release, you might want to
consider this cosmetic change:

diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 19fed5a..d9be69e 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -39,7 +39,6 @@
 #define SYSCTL_PEREN           0x00000004
 #define SYSCTL_HCKEN           0x00000002
 #define SYSCTL_IPGEN           0x00000001
-#define SYSCTL_RSTA            0x01000000

 #define IRQSTAT                        0x0002e030
 #define IRQSTAT_DMAE           (0x10000000)

Best regards
Roberto

--14dae9340b8dd2285d04c154d1ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"im">&gt; +#<br>
&gt; +# (C) Copyright 2007 Juergen Beisert &lt;<a href=3D"mailto:jbe@pengut=
ronix.de">jbe@pengutronix.de</a>&gt;<br>
<br>
</div>You should replace this with your own copyright. I think J=FCrgen can=
 live<br>
with not having a copyright on trivial files ;)<br></blockquote><div><br></=
div><div>Ok, will do.</div><div>=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/config<br>
<br>
Have you considered using one of the environment templates? You<br>
shouldn&#39;t duplicate them.</blockquote><div><br></div><div>I haven&#39;t=
, I&#39;ll have look into them once I get NOR and SD card functionality ins=
ide barebox ... for which I have exactly one day left :).</div><div>=A0</di=
v>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
&gt; +# or set your networking parameters here<br>
&gt; +#eth0.ipaddr=3D192.168.1.80<br>
&gt; +#eth0.netmask=3D255.255.255.0<br>
&gt; +#eth0.gateway=3Da.b.c.d<br>
&gt; +eth0.serverip=3D192.168.1.23<br>
&gt; +eth0.ethaddr=3D00:50:c2:8c:e6:0e<br>
<br>
</div></div>*never* *ever* add MAC addresses to the default environment.</b=
lockquote><div><br></div><div>=A0Ok. In my case, the MAC address is actuall=
y stored inside a secured at24 EEPROM buffer. Unfortunately, at24 via I2C d=
oes not seem to be available in barebox. I reckon I have to port it from th=
e kernel or uboot :).</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; + { .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, }, /* =
initial<br>
&gt; value for ESDCFG0 */<br>
<br>
</div>Your mailer wraps lines.</blockquote><div><br></div><div>Yeah, sorry =
for that, gmail is all I have at the moment, however for serious inclusion =
or review of any patches, I&#39;ll definitely try to resort to ``<span styl=
e=3D"background-color:rgb(255,245,245)">git send-email&#39;&#39;</span></di=
v>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; +#endif<br>
&gt; +#ifdef CONFIG_DRIVER_VIDEO_IMX<br>
&gt; + //imx25_add_fb(&amp;noah_fb_data);<br>
<br>
</div>Please remove dead code before posting this for inclusion</blockquote=
><div><br></div><div>Will do, thanks.</div><div><br></div><div>I have inclu=
ded some more debugging and also workarounds for the mx25. This is the curr=
ent debug output, where it clearly indicates that for some reason the mx25 =
esdhc related registers never show a transfer complete for a multiblock wri=
te:</div>

<div><br></div><div>Board: SID1 NOAH</div><div>registered netconsole as cs1=
</div><div>noah_read_ccm_regs: CCM CRDR =3D 00000000</div><div>noah_read_cc=
m_regs: CCM RCSR =3D 01020820</div><div>noah_read_ccm_regs: Booting from WE=
IM: NOR</div>

<div>imx-esdhc@mci0: registered as mci0</div><div>imx-esdhc@imx-esdhc0: set=
 clock: wanted: 400000 got: 377840</div><div>imx-esdhc@imx-esdhc0: pre_div:=
 8 div: 10</div><div>imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 1=
88920</div>

<div>imx-esdhc@imx-esdhc0: pre_div: 16 div: 10</div><div>imx-esdhc@imx-esdh=
c0: set clock: wanted: 200000 got: 188920</div><div>imx-esdhc@imx-esdhc0: p=
re_div: 16 div: 10</div><div>mci@mci0: SD Card Rev. 2.00 or later detected<=
/div>

<div>mci@mci0: Put the Card in Identify Mode</div><div>mci@mci0: Card&#39;s=
 identification data is: 1B534D30-30303030-101ABB6A-9500AB00</div><div>mci@=
mci0: Get/Set relative address</div><div>mci@mci0: Get card&#39;s specific =
data</div>

<div>mci@mci0: Card&#39;s specific data is: 007FFF32-5B5A83BA-F6DBDFFF-0E80=
0000</div><div>mci@mci0: Transfer speed: 25000000</div><div>mci@mci0: Max. =
block length are: Write=3D1024, Read=3D1024 Bytes</div><div>mci@mci0: Capac=
ity: 1910 MiB</div>

<div>mci@mci0: Limiting max. read block size down to 512</div><div>mci@mci0=
: Limiting max. write block size down to 512</div><div>mci@mci0: Read block=
 length: 512, Write block length: 512</div><div>mci@mci0: Select the card, =
and put it into Transfer Mode</div>

<div>mci@mci0: Changing transfer frequency</div><div>mci@mci0: Trying to re=
ad the SCR (try 1 of 3)</div><div>esdhc_setup_data: Check if workaround ENG=
cm01112 is needed =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 on i.MX25 (0x0000=
0008)</div><div>

esdhc_setup_data: Enabling workaround for ENGcm01112 on i.MX25</div><div>es=
dhc_setup_data: Check if workaround ENGcm01112 is needed =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 on i.MX25 (0x00000008)</div><div>esdhc_setup_data: =
Enabling workaround for ENGcm01112 on i.MX25</div>

<div>esdhc_setup_data: Check if workaround ENGcm01112 is needed =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 on i.MX25 (0x00000040)</div><div>esdhc_setup_d=
ata: Enabling workaround for ENGcm01112 on i.MX25</div><div>mci@mci0: Prepa=
re for bus width change</div>

<div>mci@mci0: Set SD bus width to 4 bit</div><div>imx-esdhc@imx-esdhc0: se=
t clock: wanted: 200000 got: 188920</div><div>imx-esdhc@imx-esdhc0: pre_div=
: 16 div: 10</div><div>imx-esdhc@imx-esdhc0: set clock: wanted: 50000000 go=
t: 33250000</div>

<div>imx-esdhc@imx-esdhc0: pre_div: 0 div: 1</div><div>mci@mci0: Card is up=
 and running now, registering as a disk</div><div>mci@mci0: registered disk=
0</div><div>mci@mci0: mci_sd_read: Read 1 block(s), starting at 0</div>

<div>mci@mci0: READ: Activating single block transfer</div><div>esdhc_setup=
_data: Check if workaround ENGcm01112 is needed =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 on i.MX25 (0x00000040)</div><div>esdhc_setup_data: Enabling wo=
rkaround for ENGcm01112 on i.MX25</div>

<div>mci@mci0: SD Card successfully added</div><div>imx25_devices_init: Add=
ing NOR flash device</div><div>cfi_flash@cfi_flash0: cfi flash (id=3D010000=
00 vend=3D000002 manu=3D000001 devid=3D00007E extid=3D002301) at a0000000, =
size 64MB</div>

<div>imx25_devices_init: Adding initial NOR flash partitions</div><div>ehci=
@ehci0: USB EHCI 1.00</div><div>Malloc space: 0x83b00000 -&gt; 0x83efffff (=
size =A04 MB)</div><div>Stack space : 0x83af8000 -&gt; 0x83b00000 (size 32 =
kB)</div>

<div>envfs: wrong magic on /dev/env0</div><div>no valid environment found o=
n /dev/env0. Using default environment</div><div>running /env/bin/init...</=
div><div><br></div><div>Hit any key to stop autoboot: =A04</div><div><br>

</div><div>type update_kernel nor [&lt;imagename&gt;] to update kernel into=
 flash</div><div>type update_root nor [&lt;imagename&gt;] to update rootfs =
into flash</div><div><br></div><div>sid1-noah:/ mkdir /mnt</div><div>sid1-n=
oah:/ mount /dev/disk0.0 fat /mnt</div>

<div>mci@mci0: mci_sd_read: Read 128 block(s), starting at 2048</div><div>m=
ci@mci0: READ: Activating multiple block transfer</div><div>block_cache: bl=
k-&gt;ops-&gt;read returned 0</div><div>sid1-noah:/ cp /mnt/conmci@mci0: mc=
i_sd_read: Read 128 block(s), starting at 2560</div>

<div>mci@mci0: READ: Activating multiple block transfer</div><div>block_cac=
he: blk-&gt;ops-&gt;read returned 0</div><div>sole_image.jffs2 /mnt/console=
_image.jffs2-backup</div><div>mci@mci0: mci_sd_read: Read 128 block(s), sta=
rting at 3584</div>

<div>mci@mci0: READ: Activating multiple block transfer</div><div>block_cac=
he: blk-&gt;ops-&gt;read returned 0</div><div>mci@mci0: mci_sd_read: Read 1=
28 block(s), starting at 2304</div><div>mci@mci0: READ: Activating multiple=
 block transfer</div>

<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>mci@mci0: mci_s=
d_read: Read 128 block(s), starting at 53760</div><div>mci@mci0: READ: Acti=
vating multiple block transfer</div><div>block_cache: blk-&gt;ops-&gt;read =
returned 0</div>

<div>mci@mci0: mci_sd_read: Read 128 block(s), starting at 3712</div><div>m=
ci@mci0: READ: Activating multiple block transfer</div><div>block_cache: bl=
k-&gt;ops-&gt;read returned 0</div><div>mci@mci0: mci_sd_read: Read 128 blo=
ck(s), starting at 53888</div>

<div>mci@mci0: READ: Activating multiple block transfer</div><div>block_cac=
he: blk-&gt;ops-&gt;read returned 0</div><div>mci@mci0: mci_sd_read: Read 1=
28 block(s), starting at 3840</div><div>mci@mci0: READ: Activating multiple=
 block transfer</div>

<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>mci@mci0: mci_s=
d_write: Write 128 block(s), starting at 2560</div><div>mci@mci0: WRITE: Ac=
tivating multiple block transfer</div><div><br></div><div>Data Write Failed=
 in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2</div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x0000=
0000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>mci@mci0: Writing block 2560=
 failed with -110</div><div>mci@mci0: mci_sd_read: Read 128 block(s), start=
ing at 54016</div><div>mci@mci0: READ: Activating multiple block transfer</=
div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x01a60000 (0x00000012) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x01a60000 (0x00000012) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x01a6=
0000 (0x00000012) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x=
00000000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</d=
iv>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>mci@mci0: Reading block 54016 failed with -110</div><div>block_cache: =
blk-&gt;ops-&gt;read returned -110</div><div>write: I/O error</div><div>mci=
@mci0: mci_sd_write: Write 128 block(s), starting at 2048</div><div>mci@mci=
0: WRITE: Activating multiple block transfer</div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x00100000 (0x00000019) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x00100000 (0x00000019) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x0010=
0000 (0x00000019) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x=
00000000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</d=
iv>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>mci@mci0: Writing block 2048 failed with -110</div><div>mci@mci0: mci_=
sd_write: Write 128 block(s), starting at 2304</div><div>mci@mci0: WRITE: A=
ctivating multiple block transfer</div><div>esdhc_send_cmd: busy loop 1 CMD=
=3D0x00120000 (0x00000019) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x000=
00000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x00120000 (0x00000019) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x00120000 (0x00000019) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x0000=
0000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>mci@mci0: Writing block 2304=
 failed with -110</div><div>mci@mci0: mci_sd_write: Write 128 block(s), sta=
rting at 53888</div><div>mci@mci0: WRITE: Activating multiple block transfe=
r</div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x01a50000 (0x00000019) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x01a50000 (0x00000019) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x01a5=
0000 (0x00000019) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x=
00000000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</d=
iv>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>mci@mci0: Writing block 53888 failed with -110</div><div>mci@mci0: mci=
_sd_write: Write 128 block(s), starting at 53760</div><div>mci@mci0: WRITE:=
 Activating multiple block transfer</div><div>esdhc_send_cmd: busy loop 1 C=
MD=3D0x01a40000 (0x00000019) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x0=
0000000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</d=
iv>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x01a40000 (0x00000019) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x01a40000 (0x00000019) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x0000=
0000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>mci@mci0: Writing block 5376=
0 failed with -110</div><div>mci@mci0: mci_sd_read: Read 128 block(s), star=
ting at 2560</div><div>mci@mci0: READ: Activating multiple block transfer</=
div>

<div>esdhc_send_cmd: busy loop 1 CMD=3D0x00140000 (0x00000012) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 2 CMD=3D0x00140000 (0x00000012) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>esdhc_send_cmd: busy loop 3 CMD=3D0x0014=
0000 (0x00000012) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 pro=
ctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xf=
ertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =A0 =A0 =A0 =A0 irqstat=3D0x=
00000000 proctl=3D0x00000022 prsstat=3D0xf7880587 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0017 blkattr=3D0x00700200</d=
iv>

<div>esdhc_send_cmd: busy loop 2 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f3=
0000 =A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf=
7880587 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x=
000e0017 blkattr=3D0x00700200</div><div>

esdhc_send_cmd: busy loop 3 CMD=3D0x00000000 (0x0000000c) cap=3D0x07f30000 =
=A0 =A0 =A0 =A0 irqstat=3D0x00000000 proctl=3D0x00000022 prsstat=3D0xf78805=
87 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0xfertyp=3D0x0c3b0022 sysctl=3D0x000e0=
017 blkattr=3D0x00700200</div><div>imx-esdhc@imx-esdhc0: timeout 1</div>

<div>mci@mci0: Reading block 2560 failed with -110</div><div>block_cache: b=
lk-&gt;ops-&gt;read returned -110</div><div><br></div><div>I&#39;ll start l=
ooking at the uboot drivers, since the kernel drivers are quite messy with =
regard to the software stack a SD cmd has to travel. In any case, you befor=
e dropping a new barebox=A0=A0release, you might want to consider this cosm=
etic change:</div>

<div><br></div><div><div>diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci=
/imx-esdhc.h</div><div>index 19fed5a..d9be69e 100644</div><div>--- a/driver=
s/mci/imx-esdhc.h</div><div>+++ b/drivers/mci/imx-esdhc.h</div><div>@@ -39,=
7 +39,6 @@</div>

<div>=A0#define SYSCTL_PEREN =A0 =A0 =A0 =A0 =A0 0x00000004</div><div>=A0#d=
efine SYSCTL_HCKEN =A0 =A0 =A0 =A0 =A0 0x00000002</div><div>=A0#define SYSC=
TL_IPGEN =A0 =A0 =A0 =A0 =A0 0x00000001</div><div>-#define SYSCTL_RSTA =A0 =
=A0 =A0 =A0 =A0 =A00x01000000</div><div>=A0</div>

<div>=A0#define IRQSTAT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x00=
02e030</div><div>=A0#define IRQSTAT_DMAE =A0 =A0 =A0 =A0 =A0 (0x10000000)</=
div></div><div><br></div><div>Best regards</div><div>Roberto</div><div><br>=
</div><div><br></div></div>

--14dae9340b8dd2285d04c154d1ad--


--===============1812210611426009173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1812210611426009173==--

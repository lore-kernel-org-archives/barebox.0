Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SX933-0005rh-WC
 for barebox@lists.infradead.org; Wed, 23 May 2012 10:44:12 +0000
Received: by yhjj52 with SMTP id j52so7266124yhj.36
 for <barebox@lists.infradead.org>; Wed, 23 May 2012 03:44:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120522184240.GM30400@pengutronix.de>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Wed, 23 May 2012 12:43:47 +0200
Message-ID: <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8528234880286309263=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============8528234880286309263==
Content-Type: multipart/alternative; boundary=14dae93412419c3eec04c0b1d0ec

--14dae93412419c3eec04c0b1d0ec
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha

> I have been trying to boot a customized mx25 based device using barebox
> and
> > I seem to be missing a few basic pointers, I believe, since it does not
> > work. I have attached my config and put my current patch-set online:
> > http://pastebin.com/KUVAwWRk. It's based on git commit 'dadcf5bd8f715'.
> >
> > I don't know if the way of adding the boatloader to the SD card for lat=
er
> > installing it onto NOR flash is the correct one. I currently issue a:
> >
> > sudo dd if=3Dbarebox.bin of=3D/dev/sdc bs=3D512 skip=3D2 seek=3D2 && sy=
nc
> >
>
> You have configured barebox for external boot mode. This is not suitable
> for SD cards, you have to use internal bootmode instead. This requires
> that you provide a dtd header, see for example the babbage board for how
> to do this.
>
>
To be honest, after reading section 7 in the RM of the mx24, reading dozens
of post, your comments in the source code with regard to internal vs.
external boot, I still seem to be confused.

Nevertheless, your suggestion works!! Also, they way I setup my SD card was
slightly wrong; the reserved 2048 sectors on my SD card confused me, but
the reason is the 8-byte alignment boundary for speed reasons. To better
document things, here are the steps that lead to my mx25 based device
booting barebox as first stage boot loader from SD card in internal boot
mode  (my SD card being detected as /dev/sdc):

root@pc-develop:~# fdisk -l /dev/sdc

Disk /dev/sdc: 2002 MB, 2002780160 bytes
62 heads, 62 sectors/track, 1017 cylinders, total 3911680 sectors
Units =3D sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0xfb7a8756

   Device Boot      Start         End      Blocks   Id  System
/dev/sdc1   *        2048        4095        1024   83  Linux
/dev/sdc2            4096     1052671      524288    b  W95 FAT32
/dev/sdc3         1052672     3911679     1429504   83  Linux
root@pc-develop:~# umount /media/216B-BCD2
root@pc-develop:~# mkfs.vfat /dev/sdc2
mkfs.vfat 3.0.12 (29 Oct 2011)
root@pc-develop:~# mkfs.ext3 /dev/sdc3
mke2fs 1.42 (29-Nov-2011)
[...]
root@pc-develop:~# dd if=3D./barebox.bin of=3D/dev/sdc1 bs=3D512
553+1 records in
553+1 records out
283144 bytes (283 kB) copied, 0.0504609 s, 5.6 MB/s

Set the switches to boot from SD on the mx25 device and power on. It
successfully loads barebox and I can mount the fat partition (of course the
other partition is unmountable, because there is no ext2/3 support in
barebox). Booting from my environment currently fails, but I reckon it has
to do with my configuration settings. Here is where it gets so far:

[    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes=
)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Memory: 64MB =3D 64MB total
[    0.000000] Memory: 57860k/57860k available, 7676k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xc4800000 - 0xff000000   ( 936 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xc4000000   (  64 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc062e608   (6298 kB)
[    0.000000]       .init : 0xc062f000 - 0xc0665000   ( 216 kB)
[    0.000000]       .data : 0xc0666000 - 0xc06a4a48   ( 251 kB)
[    0.000000]        .bss : 0xc06a4a6c - 0xc06e7084   ( 266 kB)
[    0.000000] SLUB: Genslabs=3D13, HWalign=3D32, Order=3D0-3, MinObjects=
=3D0,
CPUs=3D1, Nodes=3D1
[    0.000000] NR_IRQS:336
[    0.000000] MXC IRQ initialized
[    0.000000] CPU identified as i.MX25, unknown revision
[    0.000000] sched_clock: 32 bits at 66MHz, resolution 15ns, wraps every
64585ms
[    0.000000] Console: colour dummy device 80x30
[    0.000494] Calibrating delay loop... 199.06 BogoMIPS (lpj=3D995328)
[    0.070322] pid_max: default: 32768 minimum: 301
[    0.070847] Mount-cache hash table entries: 512
[    0.072033] CPU: Testing write buffer coherency: ok
[    0.072302] ftrace: allocating 15086 entries in 45 pages
[    0.168557] Setting up static identity map for 0x80480fc8 - 0x80481004
[    0.171939] devtmpfs: initialized
[    0.175457] NET: Registered protocol family 16
[    0.187052] gpiochip_add: registered GPIOs 0 to 31 on device:
imx31-gpio.0
[    0.189598] gpiochip_add: registered GPIOs 32 to 63 on device:
imx31-gpio.1
[    0.191705] gpiochip_add: registered GPIOs 64 to 95 on device:
imx31-gpio.2
[    0.193832] gpiochip_add: registered GPIOs 96 to 127 on device:
imx31-gpio.3
[    0.320820] bio: create slab <bio-0> at 0
[    0.326517] SCSI subsystem initialized
[    0.330858] usbcore: registered new interface driver usbfs
[    0.331815] usbcore: registered new interface driver hub
[    0.332898] usbcore: registered new device driver usb
[    0.343553] Advanced Linux Sound Architecture Driver Version 1.0.24.
[    0.347646] Bluetooth: Core ver 2.16
[    0.348460] NET: Registered protocol family 31
[    0.348508] Bluetooth: HCI device and connection manager initialized
[    0.348556] Bluetooth: HCI socket layer initialized
[    0.348590] Bluetooth: L2CAP socket layer initialized
[    0.348704] Bluetooth: SCO socket layer initialized
[    0.351609] cfg80211: Calling CRDA to update world regulatory domain
[    0.353985] Switching to clocksource mxc_timer1
[    0.499000] NET: Registered protocol family 2
[    0.499750] IP route cache hash table entries: 1024 (order: 0, 4096
bytes)
[    0.501890] TCP established hash table entries: 2048 (order: 2, 16384
bytes)
[    0.502117] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
[    0.502236] TCP: Hash tables configured (established 2048 bind 2048)
[    0.502269] TCP reno registered
[    0.502316] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.502402] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.503200] NET: Registered protocol family 1
[    0.504788] RPC: Registered named UNIX socket transport module.
[    0.504838] RPC: Registered udp transport module.
[    0.504867] RPC: Registered tcp transport module.
[    0.504894] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.507432] FQ mxc_sim driver started: v1.1 (2012/02/21)
[    0.585854] NTFS driver 2.1.30 [Flags: R/W].
[    0.588284] JFFS2 version 2.2. (NAND) =AC=A9 2001-2006 Red Hat, Inc.
[    0.591345] fuse init (API version 7.18)
[    0.595203] msgmni has been set to 113
[    0.601501] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 253)
[    0.601562] io scheduler noop registered
[    0.601755] io scheduler cfq registered (default)
[    0.607105] imx-sdma imx35-sdma: loaded firmware 1.0
[    0.635752] imx-sdma imx35-sdma: initialized
[    0.637804] Serial: IMX driver
[    0.638199] imx21-uart.0: ttymxc0 at MMIO 0x43f90000 (irq =3D 45) is a I=
MX
[    1.089977] console [ttymxc0] enabled
[    1.118473] loop: module loaded
[    1.121838] at24 0-0050: 65024 byte 24c16 EEPROM, writable, 128
bytes/write
[    1.135587] physmap platform flash device: 04000000 at a0000000
[    1.146468] physmap-flash physmap-flash.0: map_probe failed
[    1.181758] spi_imx_setup: mode 3, 8 bpw, 20000000 hz
[    1.187997] spi_imx imx35-cspi.2: probed
[    1.196679] FEC Ethernet Driver
[    1.207440] fec_enet_mii_bus: probed
[    1.216038] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.222774] mxc-ehci mxc-ehci.0: initializing i.MX USB Controller
[    1.254156] mxc-ehci mxc-ehci.0: Freescale On-Chip EHCI Host Controller
[    1.261079] mxc-ehci mxc-ehci.0: new USB bus registered, assigned bus
number 1
[    1.294278] mxc-ehci mxc-ehci.0: irq 37, io mem 0x53ff4000
[    1.314205] mxc-ehci mxc-ehci.0: USB 2.0 started, EHCI 1.00
[    1.320074] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002
[    1.327010] usb usb1: New USB device strings: Mfr=3D3, Product=3D2,
SerialNumber=3D1
[    1.334342] usb usb1: Product: Freescale On-Chip EHCI Host Controller
[    1.340823] usb usb1: Manufacturer: Linux 3.3.4-00448-g80850fc-dirty
ehci_hcd
[    1.348051] usb usb1: SerialNumber: mxc-ehci.0
[    1.355432] hub 1-0:1.0: USB hub found
[    1.359293] hub 1-0:1.0: 1 port detected
[    1.363954] mxc-ehci mxc-ehci.1: initializing i.MX USB Controller
[    1.394159] mxc-ehci mxc-ehci.1: Freescale On-Chip EHCI Host Controller
[    1.400983] mxc-ehci mxc-ehci.1: new USB bus registered, assigned bus
number 2
[    1.434279] mxc-ehci mxc-ehci.1: irq 35, io mem 0x53ff4400
[    1.454377] mxc-ehci mxc-ehci.1: USB 2.0 started, EHCI 1.00
[    1.460251] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002
[    1.467188] usb usb2: New USB device strings: Mfr=3D3, Product=3D2,
SerialNumber=3D1
[    1.474518] usb usb2: Product: Freescale On-Chip EHCI Host Controller
[    1.480999] usb usb2: Manufacturer: Linux 3.3.4-00448-g80850fc-dirty
ehci_hcd
[    1.488224] usb usb2: SerialNumber: mxc-ehci.1
[    1.495664] hub 2-0:1.0: USB hub found
[    1.499525] hub 2-0:1.0: 1 port detected
[    1.506043] usbcore: registered new interface driver uas
[    1.511399] Initializing USB Mass Storage driver...
[    1.517643] usbcore: registered new interface driver usb-storage
[    1.523694] USB Mass Storage support registered.
[    1.529647] usbcore: registered new interface driver libusual
[    1.537456] usbcore: registered new interface driver usbserial
[    1.544447] USB Serial support registered for generic
[    1.550387] usbcore: registered new interface driver usbserial_generic
[    1.557266] usbserial: USB Serial Driver core
[    1.562532] usbcore: registered new interface driver fq_cpr40
[    1.569460] usbcore: registered new interface driver sisusb
[    1.579705] imxdi_rtc imxdi_rtc.0: rtc core: registered imxdi_rtc as rtc=
0
[    1.587516] i2c /dev entries driver
[    1.592996] Driver for 1-wire Dallas network protocol.
[    1.603270] imx2-wdt imx2-wdt.0: IMX2+ Watchdog Timer enabled.
timeout=3D60s (nowayout=3D0)
[    1.613364] usbcore: registered new interface driver btusb
[    1.619238] cpuidle: using governor ladder
[    1.623379] cpuidle: using governor menu
[    1.628129] sdhci: Secure Digital Host Controller Interface driver
[    1.634609] sdhci: Copyright(c) Pierre Ossman
[    1.639176] spi_imx_setup: mode 3, 8 bpw, 20000000 hz
[    1.644533] mmc_spi spi2.0: ASSUMING 3.2-3.4 V slot power
[    1.651878] mmc_spi spi2.0: SD/MMC host mmc0, no DMA, no WP, no poweroff
[    1.659804] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.681925] sdhci_pltfm_init: MMC quirks: 651ec000 (1696514048)
[    1.814297] usb 2-1: new full-speed USB device number 2 using mxc-ehci
[    1.838533] sdhci [sdhci_add_host()]: mmc1: Auto-CMD23 unavailable
[    1.985712] usb 2-1: not running at top speed; connect to a high speed
hub
[    2.011883] usb 2-1: New USB device found, idVendor=3D0424, idProduct=3D=
2513
[    2.043754] usb 2-1: New USB device strings: Mfr=3D0, Product=3D0,
SerialNumber=3D0
[    2.055683] esdhc_set_clock: Current dividers: pre_div=3D2 div=3D1
[    2.077609] mmc1: SDHCI controller on sdhci-esdhc-imx25.0
[sdhci-esdhc-imx25.0] using DMA
[    2.134930] hub 2-1:1.0: USB hub found
[    2.145712] hub 2-1:1.0: 3 ports detected
[    2.176905] usbcore: registered new interface driver usbhid
[    2.182523] usbhid: USB HID core driver
[    4.674272] spi_imx_setup: mode 7, 8 bpw, 20000000 hz
[    4.681104] spi_imx_setup: mode 3, 8 bpw, 20000000 hz
[    4.688547] aic3x_i2c_probe: Probing for TLV320AIC3x (selected
model=3DAIC3101)
[    4.696167] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.701859] aic3x_modinit: Success registering the TLV320AIC3x I2C drive=
r
[    4.713884] aic3x_probe: Probing AIC3x
[    4.718488] aic3x_init: Setting Default Volume, Routes and Mute
[    4.724688] aic3x_probe: Setting AIC3x snd_controls
[    4.729819] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.735520] aic3x_probe: Adding AIC3x widgets
[    4.745137] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.752725] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.759139] asoc: tlv320aic3x-hifi <-> imx-ssi.0 mapping ok
[    4.766926] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.775269] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.780267] mmc0: host doesn't support card's voltages
[    4.787462] ASoC: Platform initialized
[    4.791252] ALSA device list:
[    4.794576]   #0: noah-audio
[    4.800269] TCP cubic registered
[    4.803540] NET: Registered protocol family 17
[    4.808211] mmc0: error -22 whilst initialising SDIO card
[    4.814457] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.819633] Bluetooth: RFCOMM TTY layer initialized
[    4.824939] Bluetooth: RFCOMM socket layer initialized
[    4.830245] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.835465] Bluetooth: RFCOMM ver 1.11
[    4.839258] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    4.844912] Bluetooth: BNEP filters: protocol multicast
[    4.850216] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    4.856400] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.863768] imxdi_rtc imxdi_rtc.0: setting system clock to 1970-01-01
00:00:03 UTC (3)
[    4.872019] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.877172] mmc0: host doesn't support card's voltages
[    4.882342] mmc0: error -22 whilst initialising SD card
[    4.889411] eth0: Freescale FEC PHY driver [SMSC LAN8710/LAN8720]
(mii_bus:phy_addr=3Dimx25-fec-1:00, irq=3D-1)
[    4.900151] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.906156] spi_imx_setup: mode 3, 8 bpw, 400000 hz
[    4.911135] mmc0: host doesn't support card's voltages
[    4.916461] mmc0: error -22 whilst initialising MMC card
[    4.922858] esdhc_set_clock: Current dividers: pre_div=3D2 div=3D1
[    4.944164] esdhc_set_clock: Current dividers: pre_div=3D2 div=3D1
[    4.950040] esdhc_set_clock: Adjustment 1 dividers: pre_div=3D16 div=3D1=
1
[    4.956510] desired SD clock: 400000, actual=3D377840 (max=3D66500000)
[    4.962715] esdhc_set_clock: Adjustment 2 dividers: pre_div=3D1 div=3D1
[    5.010020] mmc1: host does not support reading read-only switch.
assuming write-enable.
[    5.019134] esdhc_set_clock: Current dividers: pre_div=3D2 div=3D1
[    5.025008] esdhc_set_clock: Adjustment 1 dividers: pre_div=3D2 div=3D1
[    5.031304] desired SD clock: 50000000, actual=3D33250000 (max=3D6650000=
0)
[    5.037857] esdhc_set_clock: Adjustment 2 dividers: pre_div=3D1 div=3D1
[    5.045723] mmc1: new high speed SD card at address 0002
[    5.052267] blk_limits_max_hw_sectors: set to minimum 8
[    5.058272] mmcblk0: mmc1:0002 00000 1.86 GiB
[    5.072167]  mmcblk0: p1 p2 p3
[    6.884651] PHY: imx25-fec-1:00 - Link is Up - 100/Full
[    6.924205] Sending DHCP requests ., OK
[    7.934638] IP-Config: Got DHCP answer from 0.0.0.0, my address is
192.168.1.211
[    7.942931] IP-Config: Complete:
[    7.946490]      device=3Deth0, addr=3D192.168.1.211, mask=3D255.255.255=
.0,
gw=3D192.168.1.1,
[    7.954238]      host=3D192.168.1.211, domain=3Ddomini.int,
nis-domain=3D(none),
[    7.961160]      bootserver=3D0.0.0.0, rootserver=3D192.168.1.23, rootpa=
th=3D
[  103.029081] VFS: Unable to mount root fs via NFS, trying floppy.
[  103.036763] VFS: Cannot open root device "nfs" or unknown-block(2,0)
[  103.043157] Please append a correct "root=3D" boot option; here are the
available partitions:
[  103.052007] b300         1955840 mmcblk0  driver: mmcblk
[  103.057512]   b301            1024 mmcblk0p1
00000000-0000-0000-0000-000000000mmcblk0p1
[  103.065670]   b302          524288 mmcblk0p2
00000000-0000-0000-0000-000000000mmcblk0p2
[  103.073744]   b303         1429504 mmcblk0p3
00000000-0000-0000-0000-000000000mmcblk0p3
[  103.081904] Kernel panic - not syncing: VFS: Unable to mount root fs on
unknown-block(2,0)
[  103.090367] [<c000fb8c>] (unwind_backtrace+0x0/0x13c) from [<c047e360>]
(dump_stack+0x20/0x24)
[  103.099148] [<c047e360>] (dump_stack+0x20/0x24) from [<c047e3f0>]
(panic+0x8c/0x1d0)
[  103.107044] [<c047e3f0>] (panic+0x8c/0x1d0) from [<c062fc38>]
(mount_block_root+0x164/0x214)
[  103.115630] [<c062fc38>] (mount_block_root+0x164/0x214) from
[<c062fdc4>] (mount_root+0xdc/0x100)
[  103.124644] [<c062fdc4>] (mount_root+0xdc/0x100) from [<c062ff0c>]
(prepare_namespace+0x124/0x188)
[  103.133674] [<c062ff0c>] (prepare_namespace+0x124/0x188) from
[<c062f890>] (kernel_init+0xf4/0x128)
[  103.142860] [<c062f890>] (kernel_init+0xf4/0x128) from [<c000a5c8>]
(kernel_thread_exit+0x0/0x8)

Thank you very much for your pointers.

Best regards
Roberto

--14dae93412419c3eec04c0b1d0ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha<div><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"im">&gt; I have been trying to boot a customized mx25 based =
device using barebox and<br>


&gt; I seem to be missing a few basic pointers, I believe, since it does no=
t<br>
&gt; work. I have attached my config and put my current patch-set online:<b=
r>
&gt; <a href=3D"http://pastebin.com/KUVAwWRk" target=3D"_blank">http://past=
ebin.com/KUVAwWRk</a>. It&#39;s based on git commit &#39;dadcf5bd8f715&#39;=
.<br>
&gt;<br>
&gt; I don&#39;t know if the way of adding the boatloader to the SD card fo=
r later<br>
&gt; installing it onto NOR flash is the correct one. I currently issue a:<=
br>
&gt;<br>
&gt; sudo dd if=3Dbarebox.bin of=3D/dev/sdc bs=3D512 skip=3D2 seek=3D2 &amp=
;&amp; sync<br>
&gt;<br>
<br>
</div>You have configured barebox for external boot mode. This is not suita=
ble<br>
for SD cards, you have to use internal bootmode instead. This requires<br>
that you provide a dtd header, see for example the babbage board for how<br=
>
to do this.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div>To be honest, after reading section 7 in the RM of t=
he mx24, reading dozens of post, your comments in the source code with rega=
rd to internal vs. external boot, I still seem to be confused.</div>

<div><br></div><div>Nevertheless, your suggestion works!! Also, they way I =
setup my SD card was slightly wrong; the reserved 2048 sectors on my SD car=
d confused me, but the reason is the 8-byte alignment boundary for speed re=
asons. To better document things, here are the steps that lead to my mx25 b=
ased device booting barebox as first stage boot loader from SD card in inte=
rnal boot mode =A0(my SD card being detected as /dev/sdc):</div>

<div><br></div><div><div>root@pc-develop:~# fdisk -l /dev/sdc</div><div><br=
></div><div>Disk /dev/sdc: 2002 MB, 2002780160 bytes</div><div>62 heads, 62=
 sectors/track, 1017 cylinders, total 3911680 sectors</div><div>Units =3D s=
ectors of 1 * 512 =3D 512 bytes</div>

<div>Sector size (logical/physical): 512 bytes / 512 bytes</div><div>I/O si=
ze (minimum/optimal): 512 bytes / 512 bytes</div><div>Disk identifier: 0xfb=
7a8756</div><div><br></div><div>=A0 =A0Device Boot =A0 =A0 =A0Start =A0 =A0=
 =A0 =A0 End =A0 =A0 =A0Blocks =A0 Id =A0System</div>

<div>/dev/sdc1 =A0 * =A0 =A0 =A0 =A02048 =A0 =A0 =A0 =A04095 =A0 =A0 =A0 =
=A01024 =A0 83 =A0Linux</div><div>/dev/sdc2 =A0 =A0 =A0 =A0 =A0 =A04096 =A0=
 =A0 1052671 =A0 =A0 =A0524288 =A0 =A0b =A0W95 FAT32</div><div>/dev/sdc3 =
=A0 =A0 =A0 =A0 1052672 =A0 =A0 3911679 =A0 =A0 1429504 =A0 83 =A0Linux</di=
v>
<div>
root@pc-develop:~# umount /media/216B-BCD2=A0</div><div>root@pc-develop:~# =
mkfs.vfat /dev/sdc2</div><div>mkfs.vfat 3.0.12 (29 Oct 2011)</div><div>root=
@pc-develop:~# mkfs.ext3 /dev/sdc3</div><div>mke2fs 1.42 (29-Nov-2011)</div=
>

<div>[...]</div><div>root@pc-develop:~# dd if=3D./barebox.bin of=3D/dev/sdc=
1 bs=3D512</div><div>553+1 records in</div><div>553+1 records out</div><div=
>283144 bytes (283 kB) copied, 0.0504609 s, 5.6 MB/s</div></div><div><br></=
div>

<div>Set the switches to boot from SD on the mx25 device and power on. It s=
uccessfully loads barebox and I can mount the fat partition (of course the =
other partition is unmountable, because there is no ext2/3 support in bareb=
ox). Booting from my environment currently fails, but I reckon it has to do=
 with my configuration settings. Here is where it gets so far:</div>

<div><br></div><div><div>[ =A0 =A00.000000] PID hash table entries: 256 (or=
der: -2, 1024 bytes)</div><div>[ =A0 =A00.000000] Dentry cache hash table e=
ntries: 8192 (order: 3, 32768 bytes)</div><div>[ =A0 =A00.000000] Inode-cac=
he hash table entries: 4096 (order: 2, 16384 bytes)</div>

<div>[ =A0 =A00.000000] Memory: 64MB =3D 64MB total</div><div>[ =A0 =A00.00=
0000] Memory: 57860k/57860k available, 7676k reserved, 0K highmem</div><div=
>[ =A0 =A00.000000] Virtual kernel memory layout:</div><div>[ =A0 =A00.0000=
00] =A0 =A0 vector =A0: 0xffff0000 - 0xffff1000 =A0 ( =A0 4 kB)</div>

<div>[ =A0 =A00.000000] =A0 =A0 fixmap =A0: 0xfff00000 - 0xfffe0000 =A0 ( 8=
96 kB)</div><div>[ =A0 =A00.000000] =A0 =A0 vmalloc : 0xc4800000 - 0xff0000=
00 =A0 ( 936 MB)</div><div>[ =A0 =A00.000000] =A0 =A0 lowmem =A0: 0xc000000=
0 - 0xc4000000 =A0 ( =A064 MB)</div>

<div>[ =A0 =A00.000000] =A0 =A0 modules : 0xbf000000 - 0xc0000000 =A0 ( =A0=
16 MB)</div><div>[ =A0 =A00.000000] =A0 =A0 =A0 .text : 0xc0008000 - 0xc062=
e608 =A0 (6298 kB)</div><div>[ =A0 =A00.000000] =A0 =A0 =A0 .init : 0xc062f=
000 - 0xc0665000 =A0 ( 216 kB)</div>

<div>[ =A0 =A00.000000] =A0 =A0 =A0 .data : 0xc0666000 - 0xc06a4a48 =A0 ( 2=
51 kB)</div><div>[ =A0 =A00.000000] =A0 =A0 =A0 =A0.bss : 0xc06a4a6c - 0xc0=
6e7084 =A0 ( 266 kB)</div><div>[ =A0 =A00.000000] SLUB: Genslabs=3D13, HWal=
ign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1</div>

<div>[ =A0 =A00.000000] NR_IRQS:336</div><div>[ =A0 =A00.000000] MXC IRQ in=
itialized</div><div>[ =A0 =A00.000000] CPU identified as i.MX25, unknown re=
vision</div><div>[ =A0 =A00.000000] sched_clock: 32 bits at 66MHz, resoluti=
on 15ns, wraps every 64585ms</div>

<div>[ =A0 =A00.000000] Console: colour dummy device 80x30</div><div>[ =A0 =
=A00.000494] Calibrating delay loop... 199.06 BogoMIPS (lpj=3D995328)</div>=
<div>[ =A0 =A00.070322] pid_max: default: 32768 minimum: 301</div><div>[ =
=A0 =A00.070847] Mount-cache hash table entries: 512</div>

<div>[ =A0 =A00.072033] CPU: Testing write buffer coherency: ok</div><div>[=
 =A0 =A00.072302] ftrace: allocating 15086 entries in 45 pages</div><div>[ =
=A0 =A00.168557] Setting up static identity map for 0x80480fc8 - 0x80481004=
</div><div>

[ =A0 =A00.171939] devtmpfs: initialized</div><div>[ =A0 =A00.175457] NET: =
Registered protocol family 16</div><div>[ =A0 =A00.187052] gpiochip_add: re=
gistered GPIOs 0 to 31 on device: imx31-gpio.0</div><div>[ =A0 =A00.189598]=
 gpiochip_add: registered GPIOs 32 to 63 on device: imx31-gpio.1</div>

<div>[ =A0 =A00.191705] gpiochip_add: registered GPIOs 64 to 95 on device: =
imx31-gpio.2</div><div>[ =A0 =A00.193832] gpiochip_add: registered GPIOs 96=
 to 127 on device: imx31-gpio.3</div><div>[ =A0 =A00.320820] bio: create sl=
ab &lt;bio-0&gt; at 0</div>

<div>[ =A0 =A00.326517] SCSI subsystem initialized</div><div>[ =A0 =A00.330=
858] usbcore: registered new interface driver usbfs</div><div>[ =A0 =A00.33=
1815] usbcore: registered new interface driver hub</div><div>[ =A0 =A00.332=
898] usbcore: registered new device driver usb</div>

<div>[ =A0 =A00.343553] Advanced Linux Sound Architecture Driver Version 1.=
0.24.</div><div>[ =A0 =A00.347646] Bluetooth: Core ver 2.16</div><div>[ =A0=
 =A00.348460] NET: Registered protocol family 31</div><div>[ =A0 =A00.34850=
8] Bluetooth: HCI device and connection manager initialized</div>

<div>[ =A0 =A00.348556] Bluetooth: HCI socket layer initialized</div><div>[=
 =A0 =A00.348590] Bluetooth: L2CAP socket layer initialized</div><div>[ =A0=
 =A00.348704] Bluetooth: SCO socket layer initialized</div><div>[ =A0 =A00.=
351609] cfg80211: Calling CRDA to update world regulatory domain</div>

<div>[ =A0 =A00.353985] Switching to clocksource mxc_timer1</div><div>[ =A0=
 =A00.499000] NET: Registered protocol family 2</div><div>[ =A0 =A00.499750=
] IP route cache hash table entries: 1024 (order: 0, 4096 bytes)</div><div>=
[ =A0 =A00.501890] TCP established hash table entries: 2048 (order: 2, 1638=
4 bytes)</div>

<div>[ =A0 =A00.502117] TCP bind hash table entries: 2048 (order: 1, 8192 b=
ytes)</div><div>[ =A0 =A00.502236] TCP: Hash tables configured (established=
 2048 bind 2048)</div><div>[ =A0 =A00.502269] TCP reno registered</div><div=
>[ =A0 =A00.502316] UDP hash table entries: 256 (order: 0, 4096 bytes)</div=
>

<div>[ =A0 =A00.502402] UDP-Lite hash table entries: 256 (order: 0, 4096 by=
tes)</div><div>[ =A0 =A00.503200] NET: Registered protocol family 1</div><d=
iv>[ =A0 =A00.504788] RPC: Registered named UNIX socket transport module.</=
div><div>

[ =A0 =A00.504838] RPC: Registered udp transport module.</div><div>[ =A0 =
=A00.504867] RPC: Registered tcp transport module.</div><div>[ =A0 =A00.504=
894] RPC: Registered tcp NFSv4.1 backchannel transport module.</div><div>[ =
=A0 =A00.507432] FQ mxc_sim driver started: v1.1 (2012/02/21)</div>

<div>[ =A0 =A00.585854] NTFS driver 2.1.30 [Flags: R/W].</div><div>[ =A0 =
=A00.588284] JFFS2 version 2.2. (NAND) =AC=A9 2001-2006 Red Hat, Inc.</div>=
<div>[ =A0 =A00.591345] fuse init (API version 7.18)</div><div>[ =A0 =A00.5=
95203] msgmni has been set to 113</div>

<div>[ =A0 =A00.601501] Block layer SCSI generic (bsg) driver version 0.4 l=
oaded (major 253)</div><div>[ =A0 =A00.601562] io scheduler noop registered=
</div><div>[ =A0 =A00.601755] io scheduler cfq registered (default)</div><d=
iv>[ =A0 =A00.607105] imx-sdma imx35-sdma: loaded firmware 1.0</div>

<div>[ =A0 =A00.635752] imx-sdma imx35-sdma: initialized</div><div>[ =A0 =
=A00.637804] Serial: IMX driver</div><div>[ =A0 =A00.638199] imx21-uart.0: =
ttymxc0 at MMIO 0x43f90000 (irq =3D 45) is a IMX</div><div>[ =A0 =A01.08997=
7] console [ttymxc0] enabled</div>

<div>[ =A0 =A01.118473] loop: module loaded</div><div>[ =A0 =A01.121838] at=
24 0-0050: 65024 byte 24c16 EEPROM, writable, 128 bytes/write</div><div>[ =
=A0 =A01.135587] physmap platform flash device: 04000000 at a0000000</div><=
div>[ =A0 =A01.146468] physmap-flash physmap-flash.0: map_probe failed</div=
>

<div>[ =A0 =A01.181758] spi_imx_setup: mode 3, 8 bpw, 20000000 hz</div><div=
>[ =A0 =A01.187997] spi_imx imx35-cspi.2: probed</div><div>[ =A0 =A01.19667=
9] FEC Ethernet Driver</div><div>[ =A0 =A01.207440] fec_enet_mii_bus: probe=
d</div><div>

[ =A0 =A01.216038] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller (EH=
CI) Driver</div><div>[ =A0 =A01.222774] mxc-ehci mxc-ehci.0: initializing i=
.MX USB Controller</div><div>[ =A0 =A01.254156] mxc-ehci mxc-ehci.0: Freesc=
ale On-Chip EHCI Host Controller</div>

<div>[ =A0 =A01.261079] mxc-ehci mxc-ehci.0: new USB bus registered, assign=
ed bus number 1</div><div>[ =A0 =A01.294278] mxc-ehci mxc-ehci.0: irq 37, i=
o mem 0x53ff4000</div><div>[ =A0 =A01.314205] mxc-ehci mxc-ehci.0: USB 2.0 =
started, EHCI 1.00</div>

<div>[ =A0 =A01.320074] usb usb1: New USB device found, idVendor=3D1d6b, id=
Product=3D0002</div><div>[ =A0 =A01.327010] usb usb1: New USB device string=
s: Mfr=3D3, Product=3D2, SerialNumber=3D1</div><div>[ =A0 =A01.334342] usb =
usb1: Product: Freescale On-Chip EHCI Host Controller</div>

<div>[ =A0 =A01.340823] usb usb1: Manufacturer: Linux 3.3.4-00448-g80850fc-=
dirty ehci_hcd</div><div>[ =A0 =A01.348051] usb usb1: SerialNumber: mxc-ehc=
i.0</div><div>[ =A0 =A01.355432] hub 1-0:1.0: USB hub found</div><div>[ =A0=
 =A01.359293] hub 1-0:1.0: 1 port detected</div>

<div>[ =A0 =A01.363954] mxc-ehci mxc-ehci.1: initializing i.MX USB Controll=
er</div><div>[ =A0 =A01.394159] mxc-ehci mxc-ehci.1: Freescale On-Chip EHCI=
 Host Controller</div><div>[ =A0 =A01.400983] mxc-ehci mxc-ehci.1: new USB =
bus registered, assigned bus number 2</div>

<div>[ =A0 =A01.434279] mxc-ehci mxc-ehci.1: irq 35, io mem 0x53ff4400</div=
><div>[ =A0 =A01.454377] mxc-ehci mxc-ehci.1: USB 2.0 started, EHCI 1.00</d=
iv><div>[ =A0 =A01.460251] usb usb2: New USB device found, idVendor=3D1d6b,=
 idProduct=3D0002</div>

<div>[ =A0 =A01.467188] usb usb2: New USB device strings: Mfr=3D3, Product=
=3D2, SerialNumber=3D1</div><div>[ =A0 =A01.474518] usb usb2: Product: Free=
scale On-Chip EHCI Host Controller</div><div>[ =A0 =A01.480999] usb usb2: M=
anufacturer: Linux 3.3.4-00448-g80850fc-dirty ehci_hcd</div>

<div>[ =A0 =A01.488224] usb usb2: SerialNumber: mxc-ehci.1</div><div>[ =A0 =
=A01.495664] hub 2-0:1.0: USB hub found</div><div>[ =A0 =A01.499525] hub 2-=
0:1.0: 1 port detected</div><div>[ =A0 =A01.506043] usbcore: registered new=
 interface driver uas</div>

<div>[ =A0 =A01.511399] Initializing USB Mass Storage driver...</div><div>[=
 =A0 =A01.517643] usbcore: registered new interface driver usb-storage</div=
><div>[ =A0 =A01.523694] USB Mass Storage support registered.</div><div>[ =
=A0 =A01.529647] usbcore: registered new interface driver libusual</div>

<div>[ =A0 =A01.537456] usbcore: registered new interface driver usbserial<=
/div><div>[ =A0 =A01.544447] USB Serial support registered for generic</div=
><div>[ =A0 =A01.550387] usbcore: registered new interface driver usbserial=
_generic</div>

<div>[ =A0 =A01.557266] usbserial: USB Serial Driver core</div><div>[ =A0 =
=A01.562532] usbcore: registered new interface driver fq_cpr40</div><div>[ =
=A0 =A01.569460] usbcore: registered new interface driver sisusb</div><div>=
[ =A0 =A01.579705] imxdi_rtc imxdi_rtc.0: rtc core: registered imxdi_rtc as=
 rtc0</div>

<div>[ =A0 =A01.587516] i2c /dev entries driver</div><div>[ =A0 =A01.592996=
] Driver for 1-wire Dallas network protocol.</div><div>[ =A0 =A01.603270] i=
mx2-wdt imx2-wdt.0: IMX2+ Watchdog Timer enabled. timeout=3D60s (nowayout=
=3D0)</div><div>

[ =A0 =A01.613364] usbcore: registered new interface driver btusb</div><div=
>[ =A0 =A01.619238] cpuidle: using governor ladder</div><div>[ =A0 =A01.623=
379] cpuidle: using governor menu</div><div>[ =A0 =A01.628129] sdhci: Secur=
e Digital Host Controller Interface driver</div>

<div>[ =A0 =A01.634609] sdhci: Copyright(c) Pierre Ossman</div><div>[ =A0 =
=A01.639176] spi_imx_setup: mode 3, 8 bpw, 20000000 hz</div><div>[ =A0 =A01=
.644533] mmc_spi spi2.0: ASSUMING 3.2-3.4 V slot power</div><div>[ =A0 =A01=
.651878] mmc_spi spi2.0: SD/MMC host mmc0, no DMA, no WP, no poweroff</div>

<div>[ =A0 =A01.659804] sdhci-pltfm: SDHCI platform and OF driver helper</d=
iv><div>[ =A0 =A01.681925] sdhci_pltfm_init: MMC quirks: 651ec000 (16965140=
48)</div><div>[ =A0 =A01.814297] usb 2-1: new full-speed USB device number =
2 using mxc-ehci</div>

<div>[ =A0 =A01.838533] sdhci [sdhci_add_host()]: mmc1: Auto-CMD23 unavaila=
ble</div><div>[ =A0 =A01.985712] usb 2-1: not running at top speed; connect=
 to a high speed hub</div><div>[ =A0 =A02.011883] usb 2-1: New USB device f=
ound, idVendor=3D0424, idProduct=3D2513</div>

<div>[ =A0 =A02.043754] usb 2-1: New USB device strings: Mfr=3D0, Product=
=3D0, SerialNumber=3D0</div><div>[ =A0 =A02.055683] esdhc_set_clock: Curren=
t dividers: pre_div=3D2 div=3D1</div><div>[ =A0 =A02.077609] mmc1: SDHCI co=
ntroller on sdhci-esdhc-imx25.0 [sdhci-esdhc-imx25.0] using DMA</div>

<div>[ =A0 =A02.134930] hub 2-1:1.0: USB hub found</div><div>[ =A0 =A02.145=
712] hub 2-1:1.0: 3 ports detected</div><div>[ =A0 =A02.176905] usbcore: re=
gistered new interface driver usbhid</div><div>[ =A0 =A02.182523] usbhid: U=
SB HID core driver</div>

<div>[ =A0 =A04.674272] spi_imx_setup: mode 7, 8 bpw, 20000000 hz</div><div=
>[ =A0 =A04.681104] spi_imx_setup: mode 3, 8 bpw, 20000000 hz</div><div>[ =
=A0 =A04.688547] aic3x_i2c_probe: Probing for TLV320AIC3x (selected model=
=3DAIC3101)</div>

<div>[ =A0 =A04.696167] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[=
 =A0 =A04.701859] aic3x_modinit: Success registering the TLV320AIC3x I2C dr=
iver</div><div>[ =A0 =A04.713884] aic3x_probe: Probing AIC3x</div><div>[ =
=A0 =A04.718488] aic3x_init: Setting Default Volume, Routes and Mute</div>

<div>[ =A0 =A04.724688] aic3x_probe: Setting AIC3x snd_controls</div><div>[=
 =A0 =A04.729819] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[ =A0 =
=A04.735520] aic3x_probe: Adding AIC3x widgets</div><div>[ =A0 =A04.745137]=
 spi_imx_setup: mode 3, 8 bpw, 400000 hz</div>

<div>[ =A0 =A04.752725] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[=
 =A0 =A04.759139] asoc: tlv320aic3x-hifi &lt;-&gt; imx-ssi.0 mapping ok</di=
v><div>[ =A0 =A04.766926] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div=
>[ =A0 =A04.775269] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div>

<div>[ =A0 =A04.780267] mmc0: host doesn&#39;t support card&#39;s voltages<=
/div><div>[ =A0 =A04.787462] ASoC: Platform initialized</div><div>[ =A0 =A0=
4.791252] ALSA device list:</div><div>[ =A0 =A04.794576] =A0 #0: noah-audio=
</div><div>[ =A0 =A04.800269] TCP cubic registered</div>

<div>[ =A0 =A04.803540] NET: Registered protocol family 17</div><div>[ =A0 =
=A04.808211] mmc0: error -22 whilst initialising SDIO card</div><div>[ =A0 =
=A04.814457] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[ =A0 =A04.8=
19633] Bluetooth: RFCOMM TTY layer initialized</div>

<div>[ =A0 =A04.824939] Bluetooth: RFCOMM socket layer initialized</div><di=
v>[ =A0 =A04.830245] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[ =
=A0 =A04.835465] Bluetooth: RFCOMM ver 1.11</div><div>[ =A0 =A04.839258] Bl=
uetooth: BNEP (Ethernet Emulation) ver 1.3</div>

<div>[ =A0 =A04.844912] Bluetooth: BNEP filters: protocol multicast</div><d=
iv>[ =A0 =A04.850216] Bluetooth: HIDP (Human Interface Emulation) ver 1.2</=
div><div>[ =A0 =A04.856400] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><d=
iv>[ =A0 =A04.863768] imxdi_rtc imxdi_rtc.0: setting system clock to 1970-0=
1-01 00:00:03 UTC (3)</div>

<div>[ =A0 =A04.872019] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[=
 =A0 =A04.877172] mmc0: host doesn&#39;t support card&#39;s voltages</div><=
div>[ =A0 =A04.882342] mmc0: error -22 whilst initialising SD card</div><di=
v>[ =A0 =A04.889411] eth0: Freescale FEC PHY driver [SMSC LAN8710/LAN8720] =
(mii_bus:phy_addr=3Dimx25-fec-1:00, irq=3D-1)</div>

<div>[ =A0 =A04.900151] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[=
 =A0 =A04.906156] spi_imx_setup: mode 3, 8 bpw, 400000 hz</div><div>[ =A0 =
=A04.911135] mmc0: host doesn&#39;t support card&#39;s voltages</div><div>[=
 =A0 =A04.916461] mmc0: error -22 whilst initialising MMC card</div>

<div>[ =A0 =A04.922858] esdhc_set_clock: Current dividers: pre_div=3D2 div=
=3D1</div><div>[ =A0 =A04.944164] esdhc_set_clock: Current dividers: pre_di=
v=3D2 div=3D1</div><div>[ =A0 =A04.950040] esdhc_set_clock: Adjustment 1 di=
viders: pre_div=3D16 div=3D11</div>

<div>[ =A0 =A04.956510] desired SD clock: 400000, actual=3D377840 (max=3D66=
500000)</div><div>[ =A0 =A04.962715] esdhc_set_clock: Adjustment 2 dividers=
: pre_div=3D1 div=3D1</div><div>[ =A0 =A05.010020] mmc1: host does not supp=
ort reading read-only switch. assuming write-enable.</div>

<div>[ =A0 =A05.019134] esdhc_set_clock: Current dividers: pre_div=3D2 div=
=3D1</div><div>[ =A0 =A05.025008] esdhc_set_clock: Adjustment 1 dividers: p=
re_div=3D2 div=3D1</div><div>[ =A0 =A05.031304] desired SD clock: 50000000,=
 actual=3D33250000 (max=3D66500000)</div>

<div>[ =A0 =A05.037857] esdhc_set_clock: Adjustment 2 dividers: pre_div=3D1=
 div=3D1</div><div>[ =A0 =A05.045723] mmc1: new high speed SD card at addre=
ss 0002</div><div>[ =A0 =A05.052267] blk_limits_max_hw_sectors: set to mini=
mum 8</div>
<div>
[ =A0 =A05.058272] mmcblk0: mmc1:0002 00000 1.86 GiB</div><div>[ =A0 =A05.0=
72167] =A0mmcblk0: p1 p2 p3</div><div>[ =A0 =A06.884651] PHY: imx25-fec-1:0=
0 - Link is Up - 100/Full</div><div>[ =A0 =A06.924205] Sending DHCP request=
s ., OK</div>
<div>
[ =A0 =A07.934638] IP-Config: Got DHCP answer from 0.0.0.0, my address is 1=
92.168.1.211</div><div>[ =A0 =A07.942931] IP-Config: Complete:</div><div>[ =
=A0 =A07.946490] =A0 =A0 =A0device=3Deth0, addr=3D192.168.1.211, mask=3D255=
.255.255.0, gw=3D192.168.1.1,</div>

<div>[ =A0 =A07.954238] =A0 =A0 =A0host=3D192.168.1.211, domain=3D<a href=
=3D"http://domini.int">domini.int</a>, nis-domain=3D(none),</div><div>[ =A0=
 =A07.961160] =A0 =A0 =A0bootserver=3D0.0.0.0, rootserver=3D192.168.1.23, r=
ootpath=3D</div><div>[ =A0103.029081] VFS: Unable to mount root fs via NFS,=
 trying floppy.</div>

<div>[ =A0103.036763] VFS: Cannot open root device &quot;nfs&quot; or unkno=
wn-block(2,0)</div><div>[ =A0103.043157] Please append a correct &quot;root=
=3D&quot; boot option; here are the available partitions:</div><div>[ =A010=
3.052007] b300 =A0 =A0 =A0 =A0 1955840 mmcblk0 =A0driver: mmcblk</div>

<div>[ =A0103.057512] =A0 b301 =A0 =A0 =A0 =A0 =A0 =A01024 mmcblk0p1 000000=
00-0000-0000-0000-000000000mmcblk0p1</div><div>[ =A0103.065670] =A0 b302 =
=A0 =A0 =A0 =A0 =A0524288 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk=
0p2</div><div>[ =A0103.073744] =A0 b303 =A0 =A0 =A0 =A0 1429504 mmcblk0p3 0=
0000000-0000-0000-0000-000000000mmcblk0p3</div>

<div>[ =A0103.081904] Kernel panic - not syncing: VFS: Unable to mount root=
 fs on unknown-block(2,0)</div><div>[ =A0103.090367] [&lt;c000fb8c&gt;] (un=
wind_backtrace+0x0/0x13c) from [&lt;c047e360&gt;] (dump_stack+0x20/0x24)</d=
iv>

<div>[ =A0103.099148] [&lt;c047e360&gt;] (dump_stack+0x20/0x24) from [&lt;c=
047e3f0&gt;] (panic+0x8c/0x1d0)</div><div>[ =A0103.107044] [&lt;c047e3f0&gt=
;] (panic+0x8c/0x1d0) from [&lt;c062fc38&gt;] (mount_block_root+0x164/0x214=
)</div>

<div>[ =A0103.115630] [&lt;c062fc38&gt;] (mount_block_root+0x164/0x214) fro=
m [&lt;c062fdc4&gt;] (mount_root+0xdc/0x100)</div><div>[ =A0103.124644] [&l=
t;c062fdc4&gt;] (mount_root+0xdc/0x100) from [&lt;c062ff0c&gt;] (prepare_na=
mespace+0x124/0x188)</div>

<div>[ =A0103.133674] [&lt;c062ff0c&gt;] (prepare_namespace+0x124/0x188) fr=
om [&lt;c062f890&gt;] (kernel_init+0xf4/0x128)</div><div>[ =A0103.142860] [=
&lt;c062f890&gt;] (kernel_init+0xf4/0x128) from [&lt;c000a5c8&gt;] (kernel_=
thread_exit+0x0/0x8)</div>

</div><div><br></div><div>Thank you very much for your pointers.</div><div>=
<br></div><div>Best regards</div><div>Roberto</div><div><br></div></div></d=
iv>

--14dae93412419c3eec04c0b1d0ec--


--===============8528234880286309263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8528234880286309263==--

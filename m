Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f173.google.com ([74.125.82.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YL311-0002c9-Ve
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 05:05:40 +0000
Received: by mail-we0-f173.google.com with SMTP id w55so19685799wes.4
 for <barebox@lists.infradead.org>; Mon, 09 Feb 2015 21:05:15 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150209073610.GS12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <20150206073318.GI12209@pengutronix.de>
 <CA+nEJinXNs1G4tSctRPqxSV0PT5WnvSyBU1pKF7nbwwp9GzKNw@mail.gmail.com>
 <20150209073610.GS12209@pengutronix.de>
Date: Mon, 9 Feb 2015 22:05:15 -0700
Message-ID: <CA+nEJinTHda4R+crTWODbc2MxqMF9vtTLOReph-Bn_THY2oNMQ@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Okay this is probably a dumb question because I'm fairly new to git,
but I've got everything working with the new environment and checked
in locally, but now when I try to do a "git push origin master", I get
an access denied error:

fatal: remote error: access denied or repository not exported: /git/barebox.git

What do I need to do to push the changes back up?

Thanks,

Doug


On Mon, Feb 9, 2015 at 12:36 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, Feb 07, 2015 at 11:55:12AM -0700, Doug Brainard wrote:
>> Sascha,
>>
>> I've begun working on upgrading to the new environment, but I've
>> gotten stuck as far as getting Linux to boot.  I've attached the
>> device list from the old environment and the new one that I'm
>> currently working on.  I believe they are the same.  My globals are
>> currently set up as:
>>
>>   version: 2015.02.0-00003-ga17b7cd-dirty
>>   model: Atmel sama5d4ek
>> * hostname: sama5d4ek
>>   loglevel: 7
>>   console.input_allow: 1
>>   bootm.image:
>>   bootm.image.loadaddr:
>>   bootm.oftree:
>>   bootm.initrd:
>>   bootm.initrd.loadaddr:
>>   dhcp.rootpath:
>>   dhcp.tftp_server_name:
>>   dhcp.bootfile:
>>   dhcp.oftree_file:
>>   dhcp.vendor_id:
>>   dhcp.client_id:
>>   dhcp.user_class:
>>   dhcp.client_uuid:
>> * autoboot_timeout: 3
>> * allow_color: true
>> * user: none
>> * boot.default: nand-ubi
>> * bootargs.base: console=ttyS0,115200
>>   linux.bootargs.base:
>>   linux.bootargs.console:
>>   linux.bootargs.dyn.ip:
>>   linux.bootargs.dyn.root:
>>   editcmd: sedit
>>   linux.mtdparts.nand0:
>> atmel_nand:256k(nand0.at91bootstrap),512k(nand0.barebox)ro,256k(nand0.bareboxenv),256k(nand0.bareboxenv2),256k(nand0.spare),512k(nand0.oftree),6M(nand0.kernel),-(nand0.rootfs)
>>
>> With these settings, it says that it loads the kernel and is booting,
>> but then just sits there indefinitely.  Any ideas?  Below is the boot
>> information I get:
>>
>> barebox 2015.02.0-00003-ga17b7cd-dirty #24 Sat Feb 7 11:19:26 MST 2015
>>
>>
>> Board: Atmel sama5d4ek
>> AT91: Detected soc type: sama5d4
>> AT91: Detected soc subtype: sama5d44
>> Clocks: CPU 528 MHz, master 176 MHz, main 12.000 MHz
>> gpio-at91 at91sam9x5-gpio0: AT91 gpio driver registered
>> gpio-at91 at91sam9x5-gpio1: AT91 gpio driver registered
>> gpio-at91 at91sam9x5-gpio2: AT91 gpio driver registered
>> gpio-at91 at91sam9x5-gpio3: AT91 gpio driver registered
>> gpio-at91 at91sam9x5-gpio4: AT91 gpio driver registered
>> i2c-gpio i2c-gpio0: using pins 30 (SDA) and 31 (SCL)
>> atmel_nand: Use On Flash BBT
>> nand: ONFI param page 0 valid
>> nand: ONFI flash detected
>> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
>> MT29F4G08ABAEAWP), 512MiB, page size: 4096, OOB size: 224
>> atmel_nand atmel_nand0: Initialize PMECC params, cap: 8, sector: 512
>> Bad block table found at page 131008, version 0x01
>> Bad block table found at page 130944, version 0x01
>> mdio_bus: miibus0: probed
>> macb macb0: Cadence GEM at 0xf8020000
>> m25p80 m25p800: at25df321a (4096 Kbytes)
>> atmel_mci atmel_mci1: version: 0x600
>> atmel_mci atmel_mci1: registered as atmel_mci1
>> mci0: no card inserted
>> malloc space: 0x26500000 -> 0x26efffff (size 10 MiB)
>> envfs: wrong magic
>> running /env/bin/init...
>>
>> Hit any key to stop autoboot:  0
>> booting nand-ubi
>>
>> Loading ARM Linux zImage '/dev/nand0.kernel.bb'
>> commandline:    root=ubi0:nand0.rootfs ubi.mtd=nand0.rootfs
>> rootfstype=ubifs
>> mtdparts=atmel_nand:256k(nand0.at91bootstrap),512k(nand0.barebox)ro,256k(nand0.bareboxenv),256k(nand0.bareboxenv2),256k(nand0.spare),512k(nand0.oftree),6M(nand0.kernel),-(nand0.rootfs)
>> arch_number: 0
>
> Here is your problem. barebox tries to boot Linux with an old style
> machine id which is not set for your board. You'll need a device tree
> for your board. If you've built your kernel correctly you'll find it
> in arch/arm/boot/dts/at91-sama5d4ek.dtb. Set global.bootm.oftree to the
> path to the device tree file and it should boot. See
> Documentation/user/networking.rst for a convenient way to get the
> devicetree onto the board. You can store it for example under /env/oftree
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJmKU-0003Rt-3k
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 17:04:31 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Fri, 6 Feb 2015 17:03:59 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB72A5@mail-ying>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
 <20150205101645.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
 <20150205212335.GF12209@pengutronix.de>
In-Reply-To: <20150205212335.GF12209@pengutronix.de>
Content-Language: en-US
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
Subject: RE: saveenv & erase with bad blocks present
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Ok, I did erase the nand0.bareboxenv partition and after a reset, partition size for the env looks good: 
barebox@Phytec phyCORE-OMAP4460:/ ls /dev/nand0.bareboxenv* -l
crw-------     131072 /dev/nand0.bareboxenv.bb   
crw-------     131072 /dev/nand0.bareboxenv 
barebox@Phytec phyCORE-OMAP4460:/ loadenv -d -s
loading environment from defaultenv
barebox@Phytec phyCORE-OMAP4460:/ saveenv
saving environment

So I can now save the environment without errors. But if I edit the config file and then do "saveenv" and then I reset, my changes are not there anymore as if the saveenv didn't work.

Furthermore, I have this message " wrong crc on env superblock" that appears  in the boot output...
What do you think ?

Thanks for your help,
Marc-Andre



barebox 2015.02.0-dirty #6 Fri Feb 6 11:44:51 EST 2015


Board: Phytec phyCORE-OMAP4460
i2c-omap i2c-omap40: bus 0 rev0.11 at 100 kHz
omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
mci0: detected SD card version 2.0
mci0: registered disk0
smc911x smc911x0: LAN911x identified, idrev: 0x92210000, generation: 4
mdio_bus: miibus0: probed
eth0: got preset MAC address: 50:2d:f4:05:65:82
nand: ONFI param page 0 valid
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xb3 (Micron MT29F8G16ADBDAH4), 1024MiB, page size: 2048, OOB size: 64
omap_fb omap_fb: HW-Revision 0x0040 0x0040
omap_fb omap_fb: registered
malloc space: 0x8d000000 -> 0x8effffff (size 32 MiB)
BCH decoding failed
wrong crc on env superblock
running /env/bin/init...



-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
Sent: February-05-15 4:24 PM
To: Boulais, Marc-Andre
Cc: barebox@lists.infradead.org
Subject: Re: saveenv & erase with bad blocks present

On Thu, Feb 05, 2015 at 07:09:51PM +0000, Boulais, Marc-Andre wrote:
> Sascha,
> I have installed the patches and tried erasing the environment with the nand0.erasebad flag. I am now able to execute the erase command on the nand device bareboxenv.bb without errors but I noticed its length is set to zero length....and finally, command "saveenv" still fails. Here's my output:
> ...
> barebox@Phytec phyCORE-OMAP4460:/ ls -l /dev/nand*
> crw------- 1064566784 /dev/nand0.root.bb
> crw------- 1064566784 /dev/nand0.root
> crw-------    4194304 /dev/nand0.splash.bb
> crw-------    4194304 /dev/nand0.splash
> crw-------    4194304 /dev/nand0.kernel.bb
> crw-------    4194304 /dev/nand0.kernel
> crw-------          0 /dev/nand0.bareboxenv.bb               <-------- This does not look good...

This is because the nand bb driver calculates the usable size of the partition. Here the size is 0 because the block is marked as bad due to writing it with the erroneous nand driver.

> crw-------     131072 /dev/nand0.bareboxenv
> crw-------     524288 /dev/nand0.barebox.bb
> crw-------     524288 /dev/nand0.barebox
> crw-------     131072 /dev/nand0.xload.bb
> crw-------     131072 /dev/nand0.xload
> cr--------   33554432 /dev/nand_oob0
> crw------- 1073610752 /dev/nand0.bb
> crw------- 1073741824 /dev/nand0
> barebox@Phytec phyCORE-OMAP4460:/ unprotect /dev/nand0.bareboxenv.bb 
> barebox@Phytec phyCORE-OMAP4460:/ nv nand0.erasebad=1

Ok, now you can erase bad blocks,

> barebox@Phytec phyCORE-OMAP4460:/ erase /dev/nand0.bareboxenv.bb

but the bb device skip the bad blocks, so this does effectively nothing.
Use /dev/nand0.bareboxenv (without the bb) instead. Restart barebox afterwards so that the size of the bb device gets recalculated.

> 
> I also have this " No renderer found for filetype UBI image"  error in 
> the startup messages, I am not sure it is related, but probably it's 
> the next thing I need to figure out...I have included the startup 
> messages right after my signature.

The phycore startup script contains a splash command which works directly on a Nand partition. For some reason this partition contains an mtd UBI image. This could be because you wrote it there or because the partition offsets are shifted so that the splash partition is now where your rootfs has been before.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

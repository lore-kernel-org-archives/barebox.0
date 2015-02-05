Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJTu1-00017O-LP
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 21:23:58 +0000
Date: Thu, 5 Feb 2015 22:23:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150205212335.GF12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
 <20150205101645.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
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
Subject: Re: saveenv & erase with bad blocks present
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

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

This is because the nand bb driver calculates the usable
size of the partition. Here the size is 0 because the block
is marked as bad due to writing it with the erroneous nand driver.

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
Use /dev/nand0.bareboxenv (without the bb) instead. Restart barebox
afterwards so that the size of the bb device gets recalculated.

> 
> I also have this " No renderer found for filetype UBI image"  error in
> the startup messages, I am not sure it is related, but probably it's
> the next thing I need to figure out...I have included the startup
> messages right after my signature.

The phycore startup script contains a splash command which works
directly on a Nand partition. For some reason this partition contains
an mtd UBI image. This could be because you wrote it there or because
the partition offsets are shifted so that the splash partition is now
where your rootfs has been before.

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

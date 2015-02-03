Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIY4g-00017n-BH
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 07:39:07 +0000
Date: Tue, 3 Feb 2015 08:38:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203073841.GE12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6D77@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB6D77@mail-ying>
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
Subject: Re: Modifying Barebox variables from Linux
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 02, 2015 at 09:20:18PM +0000, Boulais, Marc-Andre wrote:
> Hi,
> I am working on an Phytec Phycore-OMAP4460 platform with a Linux BSP (provided by Phytec) which uses Barebox 2013.1.0 to boot the OMAP4. Our application previously ran in a Linux system where U-Boot was used. We could change U-boot variables from the Linux command line as follows:
> 
> fw_setenv bootargs 'mem=512M console=ttyS0,115200n8 noinitrd root=/dev/mtdblock4 ro rootfstype=yaffs2'
> 
> How would I go doing the same with Barebox ? Is bareboxenv-target part of the solution ?

Yes.

On the target do:

bareboxenv -l /tmp/env /dev/mtdblockx

... modify stuff in /tmp/env ...

bareboxenv -s /tmp/env /dev/mtdblockx

Note that with a newer barebox (v2015.01.0) barebox has nonvolatile
variables that are stored in the environment. With that changing
variables is a matter of doing:

echo "mybootargs" > /tmp/env/nv/linux.bootargs.mine

With your older barebox the variables are created in scripts which means
you have to modify scripts from other scripts, or you would have to add
something like "source /env/vars/*" to a barebox startup script.

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

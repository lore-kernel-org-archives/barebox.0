Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJiye-00074z-DF
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 13:29:45 +0000
Date: Fri, 6 Feb 2015 14:29:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150206132920.GN12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB7263@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB7263@mail-ying>
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
Subject: Re: Generate MLO for phytec-phycore-omap4460
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 06, 2015 at 12:56:31PM +0000, Boulais, Marc-Andre wrote:
> Good morning,
> I am currently trying to build the MLO for the omap4460 on a Phytec Phycore board. In order to build it, I do the following procedure, but I get this size error at the end:
> 
> > make ARCH=arm CROSS_COMPILE=... phytec-phycore-omap4460-xload_defconfig
> > make
> ....
>   LD      barebox
>   SYSMAP  System.map
>   OBJCOPY barebox.bin
>   CHKSIZE barebox.bin
> barebox.bin size 53168 > of the maximum size 49152
> make: *** [barebox.bin] Error 1
> 
> Curiously enough, the MLO is bigger than the 2nd stage barebox.bin I would generate with the config phytec-phycore-omap4460_defconfig.
> In the documentation (boards/omap.rst), there is mention of a "barebox.bin.ift" file that corresponds to the MLO. However I don't have this file...only barebox and barebox.bin. 
> Is my build procedure correct ?

It's everything correct on your side, it's only that the config became
too big over time. So for now you have to disable either MMC or mtd
support in the config, depending on where you want to boot from.

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

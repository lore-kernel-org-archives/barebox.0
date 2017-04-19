Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mtW-00039h-Od
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 10:31:33 +0000
Date: Wed, 19 Apr 2017 12:31:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419103108.bmocd6whapavxs4q@pengutronix.de>
References: <CCE0355C-0078-435E-A307-9D64235CC014@moiji-mobile.com>
 <2CBFB5C4-AB2B-448E-9127-DEBE0B12E168@moiji-mobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2CBFB5C4-AB2B-448E-9127-DEBE0B12E168@moiji-mobile.com>
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
Subject: Re: Linking issue with ld.bfd 2.28.0.20170307
To: Holger Freyther <holger@moiji-mobile.com>
Cc: barebox@lists.infradead.org

Hi Holger,

On Mon, Apr 17, 2017 at 07:35:19AM +0200, Holger Freyther wrote:
> 
> > On 30. Mar 2017, at 20:49, Holger Freyther <holger@moiji-mobile.com> wrote:
> > 
> > Hi,
> 
> Hi!
> 
> > I am rebuilding the bootloader with gcc6 and the above version
> > of binutils and it is failing to link with .bfd but is working
> > with .gold.
> > 
> > Is this known? Is anyone else seeing this issue? And no I did
> > not try linking with -N and I have no idea what ld thinks is
> > the program headers here.
> 
> my steps to reproduce this with Yocto's gcc-6.3 and ld.bfd
> 2.28.0.20170307 are the following. CROSS_COMPILE points into
> the sysroot of a build on poky master.
> 
> git clone --branch=hfreyther/v2017.03-rebase git://git.sysmocom.de/barebox
> cd barebox/
> wget -O .config "http://git.sysmocom.de/poky/meta-sysmocom-bsp/plain/recipes-bsp/barebox/barebox-sysmobts/defconfig?id=39afcd35ae40b8468868f1e942706dec11e03961"
> make ARCH=arm
> 
> 
> .../arm-poky-linux-gnueabi-ld: .tmp_barebox1: Not enough room for program headers, try linking with -N
> .../arm-poky-linux-gnueabi-ld: final link failed: Bad value

I'm afraid nobody currently uses gcc6 for barebox. I have no idea what's
going wrong here, sorry. Does it work when you disable
CONFIG_RELOCATABLE?

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYsd7-00061W-L5
 for barebox@lists.infradead.org; Sun, 05 May 2013 06:41:06 +0000
Date: Sun, 5 May 2013 08:40:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130505064039.GY32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130504203213.GS31290@titan.lakedaemon.net>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Jason Cooper <jason@lakedaemon.net>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Sat, May 04, 2013 at 04:32:13PM -0400, Jason Cooper wrote:
> On Sat, May 04, 2013 at 09:51:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> > > The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> > > that understand a specific image format, composed of a main header,
> > > several extension headers and a paylod. This image can be booted from
> > > NAND, SPI, SATA, UART, NOR, etc.
> > > 
> > > This patch adds a tool that allows to extract the components and
> > > configuration of existing images, and to create new images.
> > 
> > I don't like this
> 
> Why?
> 
> > please as on imx in barebox directly
> 
> what?  Could you please explain?

I can only guess that he means that he doesn't want to have a separate
tool for generating images but instead wants to generate the images
using C structures in the original binary like we do on i.MX currently.
Anyway, what we do on i.MX doesn't really scale anymore since the more
complicated features of the image format can't be used with C
structures. I'm working on replacing this with a imx-image tool.
You seem to use checksums in your images. These can't be generated
in C or CPP anyway.

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

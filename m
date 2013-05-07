Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZbe8-0004dM-VO
 for barebox@lists.infradead.org; Tue, 07 May 2013 06:45:09 +0000
Date: Tue, 7 May 2013 08:44:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130507064443.GR20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130505111927.GK13393@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Sun, May 05, 2013 at 01:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:32 Sat 04 May     , Jason Cooper wrote:
> > On Sat, May 04, 2013 at 09:51:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> > > > The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> > > > that understand a specific image format, composed of a main header,
> > > > several extension headers and a paylod. This image can be booted from
> > > > NAND, SPI, SATA, UART, NOR, etc.
> > > > 
> > > > This patch adds a tool that allows to extract the components and
> > > > configuration of existing images, and to create new images.
> > > 
> > > I don't like this
> > 
> > Why?
> to geneate a simple header do it in C not with a tools
> > 
> > > please as on imx in barebox directly
> > 
> > what?  Could you please explain?
> 
> read the imx code we do it in C and place it at the begenning of the binary so
> no need such tools and we can use linker scirpt and CONFIG_xx
> 
> Stop to think u-boot here

If you want people to think positively about barebox you should try and
explain how barebox can be better and not tell them that they have the
wrong thinking. Thomas thinking can't be too wrong as he already sent
patches to barebox, right? ;)

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZRIT-0002mQ-Rb
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:42:07 +0000
Date: Mon, 6 May 2013 21:41:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506194143.GQ20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130504195125.GJ13393@game.jcrosoft.org>
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
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On Sat, May 04, 2013 at 09:51:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> > The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> > that understand a specific image format, composed of a main header,
> > several extension headers and a paylod. This image can be booted from
> > NAND, SPI, SATA, UART, NOR, etc.
> > 
> > This patch adds a tool that allows to extract the components and
> > configuration of existing images, and to create new images.
> 
> I don't like this
> 
> please as on imx in barebox directly

As said, on i.MX the linker magic makes enough problems so that I am
working on adding a tool like this one.

> 
> and drop this tool

And you drop the overlong context of the mails you are replying to. That
would be a first step to show that you actually care about other
people(s time)

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

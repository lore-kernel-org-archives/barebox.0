Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoRyT-0006Tl-0g
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:04:17 +0000
Date: Wed, 12 Nov 2014 08:03:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112070353.GG30369@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <54621C64.5070004@free-electrons.com>
 <20141111153111.5c275a43@free-electrons.com>
 <54621E76.7060805@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54621E76.7060805@free-electrons.com>
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
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Tue, Nov 11, 2014 at 11:34:30AM -0300, Ezequiel Garcia wrote:
> On 11/11/2014 11:31 AM, Thomas Petazzoni wrote:
> > Dear Ezequiel Garcia,
> > 
> > On Tue, 11 Nov 2014 11:25:40 -0300, Ezequiel Garcia wrote:
> > 
> >>   Fix the produced kwbimage.cfg to boot from UART (actually, I think it's not needed):
> >>
> >>   diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
> >>   index 219c2ec..fd6c0df 100644
> >>   --- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
> >>   +++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
> >>   @@ -1,5 +1,5 @@
> >>    VERSION 1
> >>   -BOOT_FROM spi
> >>   +BOOT_FROM uart
> >>    DESTADDR 00600000
> >>    EXECADDR 006b0000
> >>    NAND_BLKSZ 00000000
> > 
> > This is indeed not needed. The Barebox build system calls kwbimage
> > twice: once to generate an image that uses the BOOT_FROM media as the
> > boot media, and once to generate an image that can boot from the UART.
> > The former has a .kwb extension, the latter a .kwbuart extension.
> > 
> > Other than that, I think your tutorial is good. Is there a good place
> > in Barebox to put some documentation such as this?
> > 
> 
> Actually... it's a copy-paste of a something I wrote as
> Documentation/boards/mvebu.txt, but never sent as a patch.

s/txt/rst/ please. The docs are in restructured text format.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4S59-0001AD-OU
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 09:53:04 +0000
Date: Tue, 8 Jul 2014 11:52:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140708095242.GX23235@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
 <28D3DE7A-9B10-4AE0-858F-4C211B9D71C1@jcrosoft.com>
 <20140708085924.GT23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140708085924.GT23235@pengutronix.de>
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
Subject: Re: Initial EFI Support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 08, 2014 at 10:59:24AM +0200, Sascha Hauer wrote:
> On Tue, Jul 08, 2014 at 04:53:30PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 
> > On Jul 8, 2014, at 4:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > 
> > > The following adds initial support for running barebox as an EFI
> > > payload on X86 PCs.
> > > 
> > > Several things are implemented already to make it useful and
> > > to look around in an EFI system:
> > > 
> > > - Simple Network Protocol for networking
> > > - Start applications for installing drivers and starting Linux
> > > - Access EFI provided filesystems
> > > - Block device access
> > > 
> > > The EFI Port still has some rough edges. The screen output is limited
> > > to 80x25 and the keyboard driver doesn't recognize ctrl-C. I couldn't
> > > get find a proper UEFI serial driver yet, so the serial port is accessed
> > > via inb/outb on ioport 0x3f8 and not via UEFI.
> > > 
> > > For those interested in EFI and X86 hardware this port still offers
> > > some interesting insights in EFI.
> > > 
> > > There's also even Documentation available, see Patch 16/21.
> > > 
> > > Sascha
> > 
> > can you put on a git somewhere
> 
> Just did that:
> 
> git://git.pengutronix.de/git efi

I meant:

git://git.pengutronix.de/barebox.git

The master repository.

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

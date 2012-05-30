Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZbXZ-0004Uc-ED
 for barebox@lists.infradead.org; Wed, 30 May 2012 05:33:49 +0000
Date: Wed, 30 May 2012 07:33:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120530053342.GE30400@pengutronix.de>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
 <20120529101450.GS30400@pengutronix.de>
 <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
 <CAONxwYPuBCkUE2M6MgpgG7sJQjsYJ8WYhgfhaGUju4f7xcL89g@mail.gmail.com>
 <20120529185755.GD30400@pengutronix.de>
 <CAONxwYMJdybK9AgnOp5pVNPNFbDmb_-To=w0+S2P1098_mhGoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYMJdybK9AgnOp5pVNPNFbDmb_-To=w0+S2P1098_mhGoQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 09:57:38PM +0200, Roberto Nibali wrote:
> Hi
> 
> > Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2
> > > imx-esdhc@imx-esdhc0: timeout 1
> > > imx-esdhc@imx-esdhc0: timeout 1
> > > imx-esdhc@imx-esdhc0: timeout 1
> > > block_cache: blk->ops->read returned -110
> >
> > Ok, so your problem is inside the esdhc driver. Sorry, I don't know what
> > quirks we may need here. Might be worth looking at the kernel or U-Boot
> > to find out.
> 
> 
> I don't know where this driver comes from, however I have been revising the
> i.MX25 Chipset Errata and there are heaps of problems with regard to eSDHC.
> I will try to address some of them (for example WML related) and see if
> this fixes anything.

The driver comes from U-Boot, but the kernel might also be a good source
to see where the i.MX25 gets special handling.

> 
> 
> > > BUG: failure at common/block.c:249/block_put()!
> > > BUG!
> >
> > Nevertheless we'll need a fix for this. I'll prepare a patch for this if
> > noone else is faster ;)
> 
> 
> Well, the BUG() is legit, I just seem to be the first to hit it. I am not
> sure how you want to fix it, because if it's an issue with regard to
> chipset errata, at least a warning has to be issues. Maybe BUG() is a bit
> excessive ;).

I only want to get rid of the BUG() (see the patches I just sent). Of
course this won't fix your problems with the driver.

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

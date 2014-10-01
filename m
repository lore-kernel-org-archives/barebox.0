Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZDEO-0005xs-N1
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 06:17:45 +0000
Date: Wed, 1 Oct 2014 08:17:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141001061721.GB4992@pengutronix.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
 <20140925230238.18b41a52be8f3d5cc45d9bc7@gmail.com>
 <1411678015.2207.2.camel@tellur.intern.lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411678015.2207.2.camel@tellur.intern.lynxeye.de>
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
Subject: Re: [PATCH 00/15] PCI bridges and Tegra PCI stuff
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 25, 2014 at 10:46:55PM +0200, Lucas Stach wrote:
> Am Donnerstag, den 25.09.2014, 23:02 +0400 schrieb Antony Pavlov:
> > On Thu, 25 Sep 2014 19:04:54 +0200
> > Lucas Stach <dev@lynxeye.de> wrote:
> > 
> > > Ok, I'm sending this out before it gathers any more dust.
> > > 
> > > This still doesn't work on Tegra K1 and I also haven't got
> > > around to finish the rtl8169 network driver, but it seems
> > > this pile is already a worthwile improvement.
> > > 
> > > First 7 patches are general barebox PCI improvements for
> > > better tracking of PCI resources and handling bridge setup.
> > 
> > I have tryed this series.
> > 
> > I have got several 
> >   'BAR does not fit within bus IO res'
> > messages on qemu-malta. So not all available pci devices were registered.
> > 
> I think that's because patch 2 fixes a problem where IO resources would
> be populated from the host controllers MEM resource. IO resources are
> now properly accounted.
> 
> From a quick look at the code it seems you aren't properly assigning the
> resource.end for the IO region on malta. Can you please check this?
> Otherwise please post the PCI debug messages.

How do we proceed with this series? Antony, could you help debugging
this?

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

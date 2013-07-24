Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-02-ewr.mailhop.org ([204.13.248.72])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V20Al-0005dD-Qu
 for barebox@lists.infradead.org; Wed, 24 Jul 2013 14:36:12 +0000
Date: Wed, 24 Jul 2013 10:35:42 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130724143542.GE19736@titan.lakedaemon.net>
References: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
 <20130722072358.GD9434@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130722072358.GD9434@pengutronix.de>
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
Subject: Re: [PATCH] arm: mvebu: add board USI Topkick
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

On Mon, Jul 22, 2013 at 09:23:58AM +0200, Sascha Hauer wrote:
> On Fri, Jul 19, 2013 at 01:44:17PM +0000, Jason Cooper wrote:
> > Successfully boots to console via kwboot.  No other functionality yet.
> > 
> > Signed-off-by: Jason Cooper <jason@lakedaemon.net>
> > ---
> >  arch/arm/Makefile                        |  1 +
> >  arch/arm/boards/usi-topkick/Makefile     |  1 +
> >  arch/arm/boards/usi-topkick/board.c      | 17 ++++++++++++++++
> >  arch/arm/boards/usi-topkick/kwbimage.cfg | 35 ++++++++++++++++++++++++++++++++
> >  arch/arm/mach-mvebu/Kconfig              |  5 +++++
> >  5 files changed, 59 insertions(+)
> >  create mode 100644 arch/arm/boards/usi-topkick/Makefile
> >  create mode 100644 arch/arm/boards/usi-topkick/board.c
> >  create mode 100644 arch/arm/boards/usi-topkick/kwbimage.cfg
> > 
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 32bdd65..96c9a67 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -170,6 +170,7 @@ board-$(CONFIG_MACH_TX53)			+= karo-tx53
> >  board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
> >  board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
> >  board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
> > +board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
> 
> Please do not add items to this list. Use arch/arm/boards/Makefile
> instead. I fixed this while applying.

Yes, that was how I originally had it when I was based off of
origin/master.  However, I encountered the error where I needed to add
BOARD=... to the make command in order to build properly.  Realizing
that one should always base off of a tag, I then rebased off of
v2013.07.0, which doesn't contain

  6bbb24c ARM: Turn most board directories into regular build directories

In the future, just let me know if you want me to rebase off of a
branch.  No need to hand edit things on your side.

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

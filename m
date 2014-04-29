Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfFLc-00033t-Q8
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 21:13:53 +0000
Received: by mail-ee0-f51.google.com with SMTP id c13so736118eek.10
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 14:13:30 -0700 (PDT)
Date: Tue, 29 Apr 2014 23:13:14 +0200
From: Beniamino Galvani <b.galvani@gmail.com>
Message-ID: <20140429211313.GA15720@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
 <20140428072627.GN5858@pengutronix.de>
 <20140428205452.GA29091@gmail.com>
 <20140429070557.GB5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140429070557.GB5858@pengutronix.de>
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
Subject: Re: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>

On Tue, Apr 29, 2014 at 09:05:58AM +0200, Sascha Hauer wrote:
> On Mon, Apr 28, 2014 at 10:54:53PM +0200, Beniamino Galvani wrote:
> > On Mon, Apr 28, 2014 at 09:26:27AM +0200, Sascha Hauer wrote:
> > > Hi Beniamino,
> > > 
> > > On Sun, Apr 27, 2014 at 11:30:33AM +0200, Beniamino Galvani wrote:
> > > > This series adds an initial support for Rockchip SoCs and has been
> > > > tested on a Radxa Rock board, on which I'm able to load a kernel from
> > > > the network and boot it [1].
> > > > 
> > > > At the moment Barebox must be chainloaded from the Rockchip binary
> > > > bootloader which performs low-level initializations and loads Barebox
> > > > from the "boot" partition on the NAND.
> > > > 
> > > > Barebox should be written using the same procedure used for kernels:
> > > > it must be prepared with the mkimage tool and then written with
> > > > rkflashkit.
> > > > 
> > > > There is a u-boot code released by Rockchip [2] which probably
> > > > includes all the low-level initializations but I'm not brave enough to
> > > > try it.
> > > > 
> > > > The patchset adds ethernet and pinctrl drivers, PLL and clocks
> > > > initialization, and code to power on the external PHY of the board
> > > > through the PMIC.
> > > 
> > > Awesome! I'm happy to see barebox support for one of the more popular
> > > Linux ARM architectures.
> > > 
> > > The patches look quite good and there's not much to be done to
> > > make them ready for merging.
> > > 
> > > I'm just on the way to merge the Linux devicetree files into barebox
> > > and use them where possible so we do not duplicate the devicetrees in
> > > barebox. Could you post a followup once to base the rockchip dts files
> > > on the Linux dts files once I have everything in place? I saw that you
> > > already use the mainline dts files, but these do not contain the
> > > ethernet nodes for example.
> > 
> > Ok, I will do. Just a question: my series is against -next because it
> > requires commit 6720ad6f16db5839a72aa8b53e89918a4f0059bd "clk: move
> > of_clk_get_parent_name() to common clk code", while your dts branch
> > derives from master and doesn't have this commit. Which branch should
> > I base the next version on?
> 
> I reshuffled the patches in -next so that your patches have the correct
> dependencies.

Thanks.

> 
> > 
> > > Also I'd like to let rockchip use the multi image mechanism. This is not
> > > much work when you know what to do. You could change it yourself or I do
> > > the change for you, but in this case, could you give the result a test?
> > 
> > I'm not familiar with multi-image support but I would be glad to try
> > it if you're willing to implement it.
> 
> Ok, I pushed everything to -next. The multi image conversion is in the
> attached patch (also included in -next). Try building rockchip_defconfig
> and start images/barebox-radxa-rock.img. If it works then we are lucky,
> if not we'll have to work out a way to debug the patch.

The image works. There is only a small change (below) to do in board
file to postpone the call of hostname_init() until the dt root node is
set, otherwise the check on board compatible always returns false.

> 
> BTW I noticed the upstream radxa rock dts file does not have a board
> specific compatible. I added this in my patch, but this should be done
> upstream.

CC'ing Heiko, who is the Linux Rockchip maintainer.

Beniamino

-----------------------------8<-------------------------------------
From 829e4a021e537d704e49aaa2b885ea9fb5484007 Mon Sep 17 00:00:00 2001
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Tue, 29 Apr 2014 20:11:46 +0200
Subject: [PATCH] ARM: radxa-rock: call hostname_init() after DT initialization

---
 arch/arm/boards/radxa-rock/board.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 691f243..3d9b5be 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -84,4 +84,4 @@ static int hostname_init(void)
 
 	return 0;
 }
-core_initcall(hostname_init);
+postcore_initcall(hostname_init);
-- 
1.7.10.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

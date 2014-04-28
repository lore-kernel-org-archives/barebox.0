Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WesaD-00007r-N8
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 20:55:26 +0000
Received: by mail-ee0-f52.google.com with SMTP id e49so5138481eek.25
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2014 13:55:03 -0700 (PDT)
Date: Mon, 28 Apr 2014 22:54:53 +0200
From: Beniamino Galvani <b.galvani@gmail.com>
Message-ID: <20140428205452.GA29091@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
 <20140428072627.GN5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428072627.GN5858@pengutronix.de>
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
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 09:26:27AM +0200, Sascha Hauer wrote:
> Hi Beniamino,
> 
> On Sun, Apr 27, 2014 at 11:30:33AM +0200, Beniamino Galvani wrote:
> > This series adds an initial support for Rockchip SoCs and has been
> > tested on a Radxa Rock board, on which I'm able to load a kernel from
> > the network and boot it [1].
> > 
> > At the moment Barebox must be chainloaded from the Rockchip binary
> > bootloader which performs low-level initializations and loads Barebox
> > from the "boot" partition on the NAND.
> > 
> > Barebox should be written using the same procedure used for kernels:
> > it must be prepared with the mkimage tool and then written with
> > rkflashkit.
> > 
> > There is a u-boot code released by Rockchip [2] which probably
> > includes all the low-level initializations but I'm not brave enough to
> > try it.
> > 
> > The patchset adds ethernet and pinctrl drivers, PLL and clocks
> > initialization, and code to power on the external PHY of the board
> > through the PMIC.
> 
> Awesome! I'm happy to see barebox support for one of the more popular
> Linux ARM architectures.
> 
> The patches look quite good and there's not much to be done to
> make them ready for merging.
> 
> I'm just on the way to merge the Linux devicetree files into barebox
> and use them where possible so we do not duplicate the devicetrees in
> barebox. Could you post a followup once to base the rockchip dts files
> on the Linux dts files once I have everything in place? I saw that you
> already use the mainline dts files, but these do not contain the
> ethernet nodes for example.

Ok, I will do. Just a question: my series is against -next because it
requires commit 6720ad6f16db5839a72aa8b53e89918a4f0059bd "clk: move
of_clk_get_parent_name() to common clk code", while your dts branch
derives from master and doesn't have this commit. Which branch should
I base the next version on?

> Also I'd like to let rockchip use the multi image mechanism. This is not
> much work when you know what to do. You could change it yourself or I do
> the change for you, but in this case, could you give the result a test?

I'm not familiar with multi-image support but I would be glad to try
it if you're willing to implement it.

Beniamino

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k53Kc-0003nv-B5
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 08:38:59 +0000
Date: Mon, 10 Aug 2020 10:38:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20200810083855.u3aeqdner7nhesyn@pengutronix.de>
References: <20200806092919.1892-1-m.felsch@pengutronix.de>
 <20200806092919.1892-3-m.felsch@pengutronix.de>
 <20200810071614.GW31536@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810071614.GW31536@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: i.MX: setup ENET_CLK_SEL in imx6_init for every
 imx6q/imx6d
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20-08-10 09:16, Sascha Hauer wrote:
> Hi Marco,
> 
> On Thu, Aug 06, 2020 at 11:29:19AM +0200, Marco Felsch wrote:
> > Setup the ENET TX reference clk to get it from the internal clock from
> > anatop. This is the default value for newer imx6 processors like: 6sx,
> > 6ul, 6ull. So it should be safe to set it as default for imx6q/d too.
> 
> I don't follow this reasoning. We only ever know the boards that are
> unhappy with the reset default, because these are the ones that change
> it. Now if we change the register default we can't know which boards
> stop working because they relied on the previous reset default value.
> 
> Here is an example from U-Boot where this bit is explicitly cleared:
> 
> board/tqc/tqma6/tqma6_mba6.c:85: clrbits_le32(&iomuxc_regs->gpr[1], IOMUXC_GPR1_ENET_CLK_SEL_MASK);
> 
> We support this board in barebox as well and it might break with your
> change, so I don't think this patch is a good idea.

Okay, after talking with Oleksij I thought this would be the common
case instead of using an external osc and it would drop confusions
why it's working 'magicaly' out of the box for all other imx devices.

Anyway got your point.

Regards,
  Marco

> Sascha

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

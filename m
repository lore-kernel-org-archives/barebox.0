Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmfIp-0006H2-4q
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 07:17:08 +0000
Message-ID: <1371021405.4131.3.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 12 Jun 2013 09:16:45 +0200
In-Reply-To: <20130608132138.GI32299@pengutronix.de>
References: <1370425962.3824.1.camel@lws-weitzel>
 <1370522836-11258-1-git-send-email-j.weitzel@phytec.de>
 <CAGo_u6rixBCzggcuLAfOLuxgTrzyDhY7ipf2garfTiDb_Ce0WA@mail.gmail.com>
 <20130608132138.GI32299@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH v2] omap4: set voltage according to mpu freq
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version
	2 (barebox)" <barebox@lists.infradead.org>

Am Samstag, den 08.06.2013, 15:21 +0200 schrieb Sascha Hauer:
> On Thu, Jun 06, 2013 at 08:40:46AM -0500, menon.nishanth@gmail.com wrote:
> > On Thu, Jun 6, 2013 at 7:47 AM, Jan Weitzel <j.weitzel@phytec.de> wrote:
> > > +noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
> > > +{
> > > +       void __iomem *base;
> > > +       u32 val = 0;
> > > +
> > > +       /* For VC bypass only VCOREx_CGF_FORCE  is necessary and
> > > +        * VCOREx_CFG_VOLTAGE  changes can be discarded
> > > +        */
> > > +       writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
> > > +       writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
> > > +
> > > +       /* TPS - supplies vdd_mpu on 4460
> > > +        * Setup SET1 and SET0 with right values so that kernel
> > > +        * can use either of them based on its needs.
> > > +        */
> > > +
> > > +       omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
> > Just a nitpick - the general rule of TPS+OMAP4460 integration is *NOT*
> > to program SET0 register. this is intended to be at boot voltage
> > required to be used when reboot due to s/w controlled or h/w watchdog.
> 
> So this line should simply be removed?
> 
> Ok, this line is only moved and not introduced in this patch, so it
> should be fine to apply this patch and leave this for a separate patch.
I create a separate patch. I had the problem that our gpio module
(gpio6) goes low due to a reset at init time. Must fix this in kernel.

Jan
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

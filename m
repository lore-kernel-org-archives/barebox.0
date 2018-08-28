Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fujcj-00086B-M2
 for barebox@lists.infradead.org; Tue, 28 Aug 2018 19:25:59 +0000
Received: by mail-it0-x242.google.com with SMTP id u13-v6so4049147iti.1
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2018 12:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062853.18301-1-andrew.smirnov@gmail.com>
 <20180821062853.18301-2-andrew.smirnov@gmail.com>
 <20180822073142.7qdg427bwklqdt5r@pengutronix.de>
 <CAHQ1cqGW=wZjsJuBGEiHv9pubLyMYXFJ67vCDaWXuy+0TDSt0w@mail.gmail.com>
 <20180823065412.njdojhvteuflacy6@pengutronix.de>
In-Reply-To: <20180823065412.njdojhvteuflacy6@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Aug 2018 12:25:34 -0700
Message-ID: <CAHQ1cqECuwnJy4jdqv-F0Zn_DgicHytfCtNZVkdjede48CB1Kw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] clk: clk-sccg-pll: Drop prepare/unprepare for
 SCCG_PLL2
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 22, 2018 at 11:54 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Aug 22, 2018 at 06:07:01PM -0700, Andrey Smirnov wrote:
> > On Wed, Aug 22, 2018 at 12:31 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > On Mon, Aug 20, 2018 at 11:28:53PM -0700, Andrey Smirnov wrote:
> > > > A number of PLL pairs (e.g. "sys1_pll1" and "sys1_pll2") share the
> > > > same configuration register, so touching PD bit, as is done for
> > > > SCCG_PLL2 in its prepare/unprepare methods will result in shut down of
> > > > both PLLs. This is very undesireable, since attempting to re-parent a
> > > > clock to "sys1_pll2" might result in complete system shutdown due to
> > > > "sys1_pll1" being shut-down as a part of re-parenting process.
> > >
> > > I can imagine that there are problems with the way it is currently
> > > handled, but the scenario you describe shouldn't happen. "sys1_pll1"
> > > will never be shut down because it doesn't have a disable hook:
> > >
> > > static const struct clk_ops clk_sccg_pll1_ops = {
> > >         .is_enabled     = clk_pll1_is_prepared,
> > >         .recalc_rate    = clk_pll1_recalc_rate,
> > >         .round_rate     = clk_pll1_round_rate,
> > >         .set_rate       = clk_pll1_set_rate,
> > > };
> > >
> > > static const struct clk_ops clk_sccg_pll2_ops = {
> > >         .enable         = clk_pll1_prepare,
> > >         .disable        = clk_pll1_unprepare,
> > >         .recalc_rate    = clk_pll2_recalc_rate,
> > >         .round_rate     = clk_pll2_round_rate,
> > >         .set_rate       = clk_pll2_set_rate,
> > > };
> > >
> > > Have I missed something?
> > >
> >
> > Yes, but that's probably due to my explanation being too vague, so let
> > me try again. Both clocks "sys1_pll1" and "sys1_pll2" are
> > controlled/configured via separate bit fields in the _same_ register.
> > That register also has a single "powerdown"/"PD" bit that is shared
> > between both PLLs and affects them both. The way code is currently
> > implemented calling clk_disable() on "sys1_pll2" will clear PD bit and
> > as a result "sys1_pll1" will be shut down as well. This is not that
> > far-fetched of a scenario because a number of derived clocks that go
> > out to individual peripherals are specified with
> > CLK_OPS_PARENT_ENABLE, so trivial clock re-parenting like this one:
> > https://github.com/ndreys/barebox/commit/802d1d5be1f1f3df996ba26b115dd3a55bc10c67
> > will result in hung system.
> >
> > Hopefully this does a better job of explaining what I was trying to fix.
>
> Yeah, I thought you mixed up both PLLs, but reading your initial
> eplanation again you were right from the start.
>
> I agree that we should just remove the enable/disable hooks and see what
> we have to do when somebody actually tries to do something with the
> clocks (other than get the rate from)
>

Hmm, revisiting this in light of a related kernel thread [1], I think
this problem can be avoided if reference counters of critical clocks
are properly initialized. Unless you already applied this patch, I
think we should just wait for the kernel code to land, I'll backport
it and we can work on resolving any issues if they arise then.

Thanks,
Andrey Smirnov

[1] https://lore.kernel.org/lkml/1534945703-4730-4-git-send-email-abel.vesa@nxp.com/T/#u

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

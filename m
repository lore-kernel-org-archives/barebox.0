Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAslh-0002BC-8P
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:49:11 +0000
Date: Wed, 17 May 2017 08:48:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517064847.yxpz3cviz76ywvgg@pengutronix.de>
References: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
 <1494493768-42043-2-git-send-email-s.riedmueller@phytec.de>
 <20170516054739.kkfk5c3xr4nmvabn@pengutronix.de>
 <OF32A232A4.871E3CE8-ONC1258122.0050FDDF-C1258122.00511D61@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF32A232A4.871E3CE8-ONC1258122.0050FDDF-C1258122.00511D61@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Antwort: Re: [PATCH 2/3] ARM: i.MX6ul: Add Clock support for
 i.MX6ull
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <S.Riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, May 16, 2017 at 04:46:00PM +0200, Stefan Riedm=FCller wrote:
> Sascha Hauer <s.hauer@pengutronix.de> wrote on 16/05/2017 07:47:39:
> =

> > Von: Sascha Hauer <s.hauer@pengutronix.de>
> > An: Stefan Riedmueller <s.riedmueller@phytec.de>
> > Kopie: barebox@lists.infradead.org
> > Datum: 16/05/2017 07:47
> > Betreff: Re: [PATCH 2/3] ARM: i.MX6ul: Add Clock support for i.MX6ull
> > =

> > On Thu, May 11, 2017 at 11:09:27AM +0200, Stefan Riedmueller wrote:
> > > From linux-4.10 clock support, only skipped some unnecessary clocks
> > > =

> > > Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> > > ---
> > >  drivers/clk/imx/clk-imx6ul.c | 73 +++++++++++++++++++++++++++++++
> > ++++++-------
> > >  1 file changed, 62 insertions(+), 11 deletions(-)
> > > =

> > > diff --git a/drivers/clk/imx/clk-imx6ul.c =

> b/drivers/clk/imx/clk-imx6ul.c
> > > index f28660d..b0a6bb0 100644
> > > --- a/drivers/clk/imx/clk-imx6ul.c
> > > +++ b/drivers/clk/imx/clk-imx6ul.c
> > > @@ -66,10 +66,24 @@ static const char *perclk_sels[] =3D { "ipg", "os=
c", =

> };
> > >  static const char *lcdif_sels[] =3D { "lcdif_podf", "ipp_di0", =

> > "ipp_di1", "ldb_di0", "ldb_di1", };
> > >  static const char *csi_sels[] =3D { "osc", "pll2_pfd2_396m", =

> > "pll3_120m", "pll3_pfd1_540m", };
> > >  static const char *sim_sels[] =3D { "sim_podf", "ipp_di0", =

> > "ipp_di1", "ldb_di0", "ldb_di1", };
> > > +/* epdc_pre_sels, epdc_sels, esai_sels only exists on i.MX6ULL */
> > > +static const char *epdc_pre_sels[] =3D { "pll2_bus", =

> > "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", =

> > "pll2_pfd2_396m", "pll3_pfd2_508m", };
> > > +static const char *esai_sels[] =3D { "pll4_audio_div", =

> > "pll3_pfd2_508m", "pll5_video_div", "pll3_usb_otg", };
> > > +static const char *epdc_sels[] =3D { "epdc_podf", "ipp_di0", =

> > "ipp_di1", "ldb_di0", "ldb_di1", };
> > > =

> > >  static struct clk *clks[IMX6UL_CLK_END];
> > >  static struct clk_onecell_data clk_data;
> > > =

> > > +static inline int clk_on_imx6ul(void)
> > > +{
> > > +   return of_machine_is_compatible("fsl,imx6ul");
> > > +}
> > > +
> > > +static inline int clk_on_imx6ull(void)
> > > +{
> > > +   return of_machine_is_compatible("fsl,imx6ull");
> > > +}
> > =

> > Can we use cpu_is_imx6ul(l) instead here? This would allow
> > us to compile away the code if we one of the two SoCs is
> > disabled in the config.
> > =

> > Sascha
> > =

> =

> Hi Sascha, =

> =

> I tried to use cpu_is_mx6ul, but it seems it is not valid yet in the clk =

> initcall. I found that __imx_cpu_type is set in a postcore initcall but =

> would be already evaluated in cpu_is_mx6ul in the clk initcall which is a =

> core initcall. So cpu_is_mx6ul would not evaluate correctly at this point=
. =

> =

> =

> I also checked this with an i.MX6 DualLight where the cpu_is_mx6dl is =

> implemented in the ccm init and there it evaluates wrong. In the ccm =

> initcall it evaluates to 0 but later after the postcore initcalls it =

> evaluates correctly to 1. So it seems the cpu_is_mx6ul/dl is not working =

> correctly in the clk initcall. Did I get this correct or did I miss =

> anything?

I looked at arch/arm/mach-imx/include/mach/imx6.h and saw that
__imx6_cpu_type() only reads from SoC registers, so assumed this would
work. What I didn't see is that the functions depend on cpu_is_mx6()
which goes down to __imx_cpu_type which you found out already.

Just like you I also found the cpu_is_mx6dl() in the i.MX6 clock driver,
but unlike you I just assumed that it works ;)

For now I think we can apply your original patch. I'll keep the issue on
my mental todo list.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

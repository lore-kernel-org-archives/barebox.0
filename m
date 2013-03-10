Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEcwS-0001DN-73
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 09:53:21 +0000
Date: Sun, 10 Mar 2013 10:53:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130310095314.GM1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-4-git-send-email-dev@lynxeye.de>
 <CAA4bVAGDkgRrBNf_MqetnS3kMhhh1H2aPu78FNWbeJ-acX=f5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGDkgRrBNf_MqetnS3kMhhh1H2aPu78FNWbeJ-acX=f5g@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/5] tegra: add driver for the clock and reset module
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 11:41:44AM +0400, Antony Pavlov wrote:
> > +static void __iomem *car_base;
> > +
> > +enum tegra20_clks {
> > +       cpu, ac97 = 3, rtc, timer, uarta, gpio = 8, sdmmc2, i2s1 = 11, i2c1,
> > +       ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
> > +       gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
> > +       kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
> > +       dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
> > +       usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
> > +       pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
> > +       iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev1, cdev2,
> > +       uartb = 96, vfir, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
> > +       osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
> > +       pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
> > +       pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
> > +       pll_x, audio, pll_ref, twd, clk_max,
> > +};
> > +
> Please remove unused constants or register appropriate clocks.

Maybe it makes sense to keep them. When they are in sync with the
devicetree it means we could derive clocks from the devicetree should
we ever want to. However, we could also do this later when we really
need it, so I have no objection in either direction.

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

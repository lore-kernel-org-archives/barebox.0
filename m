Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dd0KK-00020I-29
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 20:33:10 +0000
Date: Wed, 2 Aug 2017 22:32:40 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170802203240.GA21641@ravnborg.org>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
 <20170802195440.GA12893@ravnborg.org>
 <20170802201923.yq34mtr25ki3j25c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170802201923.yq34mtr25ki3j25c@pengutronix.de>
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
Subject: Re: [PATCH 0/2] spi: imx: don't loop endlessly
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe.
> I havn't looked at it, but it is included in my barebox as I'm using
> 2017.08.0 + some patches.
And I did not expect it to solve your problem, only to give you
inspiration what could be the issue.

> 
> Reading through the patch description, it doesn't match my situation.
OK

> I'm doing USB-Booting because when I made eMMC work all my available
> remote hands already called it a day. So unless the boot ROM does
> something strange (impossible!) barebox is the first spi user.
> 
> What seems to be similar is that TESTREG.TXCNT is != 0. For me this
> smells clk-related. On i.MX6 I recently identified a problem (but didn't
> come around yet to mainline a fix) that might match at least your
> problem.
> 
> Can you still reproduce?
We have used the patch from Sascha for a long time now (from before it
hit barebox-next, and on our proprietary IMX6 target we never
saw the SPI related error since.

	Sam

> How does your clk-tree look like (clk_dump)?

This is with:
$ version
barebox 2017.03.0-1 #1 Sun May 14 16:17:24 CEST 2017
+ some of our own patches (nothing clk related).

$ clk_dump
lvds2_sel (rate 0, enabled)
    lvds2_gate (rate 0, disabled)
osc (rate 24000000, enabled)
    pll1_sys (rate 792000000, disabled)
        pll1_sw (rate 792000000, disabled)
            arm (rate 792000000, disabled)
                twd (rate 396000000, disabled)
                cko2_sel (rate 792000000, disabled)
                    cko2_podf (rate 792000000, disabled)
                        cko2 (rate 792000000, disabled)
    pll2_bus (rate 528000000, enabled)
        pll2_pfd0_352m (rate 306580645, disabled)
        pll2_pfd1_594m (rate 528000000, disabled)
        pll2_pfd2_396m (rate 396000000, enabled)
            pll2_198m (rate 198000000, enabled)
            step (rate 396000000, enabled)
            periph_pre (rate 396000000, enabled)
                periph (rate 396000000, enabled)
                    axi_sel (rate 396000000, enabled)
                        axi (rate 198000000, enabled)
                            eim_sel (rate 198000000, enabled)
                                eim_podf (rate 99000000, enabled)
                            eim_slow_sel (rate 198000000, enabled)
                                eim_slow_podf (rate 99000000, enabled)
                                    eim_slow (rate 99000000, enabled)
                            vdo_axi_sel (rate 198000000, enabled)
                            pcie_axi_sel (rate 198000000, enabled)
                                pcie_axi (rate 198000000, disabled)
                    mmdc_ch0_axi_podf (rate 396000000, enabled)
                        ipu1_sel (rate 396000000, enabled)
                            ipu1_podf (rate 49500000, enabled)
                                ipu1 (rate 49500000, enabled)
                                    2400000.ipu_di0_pixel (rate 33000000, enabled)
                                    2400000.ipu_di1_pixel (rate 49500000, enabled)
                        ipu2_sel (rate 396000000, enabled)
                            ipu2_podf (rate 198000000, enabled)
                                ipu2 (rate 198000000, enabled)
                    ahb (rate 132000000, enabled)
                        ipg (rate 66000000, enabled)
                            ipg_per (rate 66000000, enabled)
                                gpt_ipg_per (rate 66000000, enabled)
                                i2c1 (rate 66000000, enabled)
                                i2c2 (rate 66000000, enabled)
                                i2c3 (rate 66000000, enabled)
                                pwm1 (rate 66000000, enabled)
                                pwm2 (rate 66000000, enabled)
                                pwm3 (rate 66000000, enabled)
                                pwm4 (rate 66000000, enabled)
                            caam_ipg (rate 66000000, enabled)
                            enet (rate 66000000, enabled)
                            gpt_ipg (rate 66000000, enabled)
                            iim (rate 66000000, enabled)
                            sata (rate 66000000, enabled)
                            uart_ipg (rate 66000000, enabled)
                            usboh3 (rate 66000000, enabled)
                        caam_mem (rate 132000000, enabled)
                        caam_aclk (rate 132000000, enabled)
            periph2_pre (rate 396000000, enabled)
                periph2 (rate 396000000, enabled)
                    mmdc_ch1_axi_podf (rate 396000000, enabled)
            usdhc1_sel (rate 396000000, enabled)
                usdhc1_podf (rate 198000000, enabled)
                    usdhc1 (rate 198000000, enabled)
            usdhc2_sel (rate 396000000, enabled)
                usdhc2_podf (rate 198000000, enabled)
                    usdhc2 (rate 198000000, enabled)
            usdhc3_sel (rate 396000000, enabled)
                usdhc3_podf (rate 198000000, enabled)
                    usdhc3 (rate 198000000, enabled)
                        apbh_dma (rate 198000000, enabled)
                        per1_bch (rate 198000000, enabled)
                        gpmi_bch_apb (rate 198000000, enabled)
                        gpmi_apb (rate 198000000, enabled)
            usdhc4_sel (rate 396000000, enabled)
                usdhc4_podf (rate 198000000, enabled)
                    usdhc4 (rate 198000000, enabled)
                        gpmi_bch (rate 198000000, enabled)
        cko1_sel (rate 528000000, enabled)
            cko1_podf (rate 528000000, enabled)
                cko1 (rate 528000000, disabled)
                    cko (rate 528000000, disabled)
    pll3_usb_otg (rate 480000000, enabled)
        usbphy1 (rate 480000000, disabled)
        pll3_pfd0_720m (rate 720000000, disabled)
        pll3_pfd1_540m (rate 540000000, disabled)
        pll3_pfd2_508m (rate 508235294, disabled)
        pll3_pfd3_454m (rate 454736842, disabled)
        pll3_120m (rate 120000000, enabled)
        pll3_80m (rate 80000000, enabled)
            uart_serial_podf (rate 80000000, enabled)
                uart_serial (rate 80000000, enabled)
        pll3_60m (rate 60000000, enabled)
            ecspi_root (rate 60000000, enabled)
                ecspi1 (rate 60000000, enabled)
                ecspi2 (rate 60000000, enabled)
                ecspi3 (rate 60000000, enabled)
                ecspi4 (rate 60000000, enabled)
                ecspi5 (rate 60000000, enabled)
        periph2_clk2_sel (rate 480000000, enabled)
            periph2_clk2 (rate 480000000, enabled)
        enfc_sel (rate 480000000, enabled)
            enfc_pred (rate 96000000, enabled)
                enfc_podf (rate 96000000, enabled)
                    enfc (rate 96000000, enabled)
                        gpmi_io (rate 96000000, enabled)
        can_root (rate 240000000, enabled)
    pll4_audio (rate 144000000, disabled)
    pll5_video (rate 288000000, disabled)
        pll5_post_div (rate 72000000, disabled)
            pll5_video_div (rate 72000000, disabled)
                ldb_di0_sel (rate 72000000, disabled)
                    ldb_di0_div_3_5 (rate 20571428, disabled)
                        ldb_di0_podf (rate 10285714, disabled)
                            ldb_di0 (rate 10285714, disabled)
                ldb_di1_sel (rate 72000000, disabled)
                    ldb_di1_div_3_5 (rate 20571428, disabled)
                        ldb_di1_podf (rate 10285714, disabled)
                            ldb_di1 (rate 10285714, disabled)
                ipu1_di0_pre_sel (rate 72000000, disabled)
                    ipu1_di0_pre (rate 24000000, disabled)
                        ipu1_di0_sel (rate 24000000, disabled)
                            ipu1_di0 (rate 24000000, disabled)
                ipu1_di1_pre_sel (rate 72000000, disabled)
                    ipu1_di1_pre (rate 24000000, disabled)
                        ipu1_di1_sel (rate 24000000, disabled)
                            ipu1_di1 (rate 24000000, disabled)
                ipu2_di0_pre_sel (rate 72000000, disabled)
                    ipu2_di0_pre (rate 24000000, disabled)
                        ipu2_di0_sel (rate 24000000, disabled)
                            ipu2_di0 (rate 24000000, disabled)
                ipu2_di1_pre_sel (rate 72000000, disabled)
                    ipu2_di1_pre (rate 36000000, disabled)
                        ipu2_di1_sel (rate 36000000, disabled)
                            ipu2_di1 (rate 36000000, disabled)
    pll8_mlb (rate 24000000, disabled)
    pll7_usb_host (rate 480000000, disabled)
        usbphy2 (rate 480000000, disabled)
    pll6_enet (rate 500000000, enabled)
        sata_ref (rate 100000000, enabled)
            sata_ref_100m (rate 100000000, enabled)
                lvds1_sel (rate 100000000, enabled)
                    lvds1_gate (rate 100000000, disabled)
        pcie_ref (rate 125000000, enabled)
            pcie_ref_125m (rate 125000000, disabled)
        enet_ref (rate 50000000, enabled)
    periph_clk2_sel (rate 24000000, enabled)
        periph_clk2 (rate 24000000, enabled)
ckih1 (rate 0, enabled)
ckil (rate 32768, enabled)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

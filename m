Delivery-date: Fri, 06 Feb 2026 16:44:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voO0I-009Wsa-0t
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 16:44:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voO0G-00082B-PR
	for lore@pengutronix.de; Fri, 06 Feb 2026 16:44:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M5z1ZVZ6tZ/XJrD8EGPnxjwB+PT+KrfDuOkeljmVltU=; b=kpoK6bwX32QpzjvvG5LCnJAY/G
	Lwk+sEkDeW5wVCv3hx/BiDjGQPCTWOUTt7pscUpq9A4ASan0HbTty3rBbCUyUOQHSk5rsyCg9vyMY
	xaD/SWoEOOyTD/T95rWiuAzyQiHMewd9ibkROHVVhVoIdUrY9rscuvoMYoBNWBgCti7y8gB9S2PhZ
	EVVgvoWe5GEjKMm7SP6dw7doqDVBXgEFi9KM6QDtGN6+pdsZircMP8ChvtvxQi5qSf6KOa7Ex4Mbi
	GHhY/2rBHxrwQJqnfR9vEML8CKAScXNu8wRXJA2faT2w87ojVeFF/Rmpmn7EjrXJ4MHC30qAth6sn
	Wo/DsZuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voNzj-0000000BW8K-3cLL;
	Fri, 06 Feb 2026 15:43:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voNzg-0000000BW7v-2kyB
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 15:43:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voNzd-0007vO-Uc; Fri, 06 Feb 2026 16:43:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voNze-004QYz-0t;
	Fri, 06 Feb 2026 16:43:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voNzd-002OQu-1e;
	Fri, 06 Feb 2026 16:43:37 +0100
Date: Fri, 6 Feb 2026 16:43:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
Message-ID: <20260206154337.jqqfmapg6zyejbko@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
 <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
 <AM0PR06MB6323DC69D34B627C15B73077BC66A@AM0PR06MB6323.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AM0PR06MB6323DC69D34B627C15B73077BC66A@AM0PR06MB6323.eurprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_074340_852785_CD3EF84C 
X-CRM114-Status: GOOD (  49.38  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes, Ahmad,

On 26-02-06, SCHNEIDER Johannes wrote:
> Hoi
> >
> > Hi,
> >
> > On 2/5/26 4:45 PM, Marco Felsch wrote:
> > > This adds support for the Hexagon Geosystems GS05 which is part of the
> > > System1600 platform.
> > >
> > > Co-developed-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> >
> > fyi, correct procedure for Linux would be for co-developed-by to be
> > followed by s-o-b, but I won't insist on it here.
> >
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> >
> 
> some/very few of the original patches that went into this upstreamable version
> came from me - i'll leave it up to marco to either keep the co-devleoped-by, add
> my signed-of-by and/or have both.

I will add you sob if that is okay for you.

> > > +static int ar8031_phy_fixup(struct phy_device *phydev)
> > > +{
> > > +     /* enable rgmii rxc skew and phy mode select to RGMII copper */
> > > +     phy_write(phydev, 0x1d, 0x1f);
> > > +     phy_write(phydev, 0x1e, 0x8);
> > > +     phy_write(phydev, 0x1d, 0x00);
> > > +     phy_write(phydev, 0x1e, 0x82ee);
> > > +     phy_write(phydev, 0x1d, 0x05);
> > > +     phy_write(phydev, 0x1e, 0x100);
> > > +
> > > +     return 0;
> >
> > barebox supports qca,clk-out-frequency, qca,clk-out-strength and
> > phy-mode properties to apply these fixups to the PHY.

Good to know!

> > This is useful if you have the same PHY elsewhere, e.g. behind a switch
> > as you can identify the specific PHY that should have these settings
> > applied. It also allows a faster boot as you could skip network probe in
> > barebox and do the fixups in Linux if the device tree lists them.

Good point.

> > Just for your information. As you guard this behind your board
> > compatible, I can live with it.
> >
> 
> the GS05 itself actually has no phy - at least the "customer relesae" one.
> the AR8033 phy is on a 'debug board'; alongside a ft232rq.
> 
> > > +}
> > > +
> > > +static struct hgs_machine *
> > > +hgs_gs05_get_board_from_legacy(const unsigned char *serial)
> > > +{
> > > +     struct hgs_gs05_legacy_machine *machine = hgs_gs05_legacy_variants;
> > > +
> > > +     for (; machine->revision; machine++)
> > > +             if (serial[6] == machine->revision)
> > > +                     return &machine->machine;
> > > +
> > > +     return ERR_PTR(-EINVAL);
> > > +}
> > > +
> > > +static struct hgs_machine *
> > > +hgs_gs05_select_board(const unsigned char *serial, bool legacy_format)
> > > +{
> > > +     struct hgs_machine *machine = hgs_gs05_variants;
> > > +     const struct hgs_board_revision *rev;
> > > +
> > > +     /* TODO: Remove legacy handling if no longer required */
> > > +     if (legacy_format)
> > > +             return hgs_gs05_get_board_from_legacy(serial);
> > > +
> > > +     rev = hgs_get_rev_from_part_trace((struct hgs_part_trace_code *)serial);
> > > +     if (!rev)
> > > +             return ERR_PTR(-EINVAL);
> > > +
> > > +     for (; machine->dts_compatible; machine++)
> > > +             if (rev->id == machine->revision)
> > > +                     return machine;
> > > +
> > > +     return ERR_PTR(-EINVAL);
> > > +}
> > > +
> > > +static u64
> > > +hgs_gs05_set_efi_poll_intervall(struct device *efid, u64 new_polling_interval)
> > > +{
> > > +     const char *old_interval_str;
> > > +     char *new_interval;
> > > +     u64 old_interval;
> > > +
> > > +     old_interval_str = dev_get_param(efid->parent, "polling_interval");
> > > +     kstrtoull(old_interval_str, 10, &old_interval);
> > > +
> > > +     pr_debug("Update EFI UART-Rx poll interval: %llu ns -> %llu ns\n",
> > > +              old_interval, new_polling_interval);
> > > +
> > > +     new_interval = basprintf("%llu", new_polling_interval);
> > > +     dev_set_param(efid->parent, "polling_interval", new_interval);
> > > +     free(new_interval);
> > > +
> > > +     return old_interval;
> > > +}
> > > +
> > > +/* '"' + sizeof(struct hgs_part_trace_code) + '"' + string delim '\0' */
> > > +#define HGS_GS05_SERIAL_NUMBER_CHARS \
> > > +     (1 + sizeof(struct hgs_part_trace_code) + 1 + 1)
> > > +
> > > +static struct hgs_machine *hgs_gs05_get_board(struct device_d *dev)
> >
> > Should there be a v2, you can use the occasion to replace all device_d
> > and driver_d with device and driver respectively.

Sure!

> > > +     chosen {
> > > +             environment-emmc {
> > > +                     compatible = "barebox,environment";
> > > +                     device-path = &usdhc3, "partname:barebox-environment";
> > > +                     status = "disabled";
> > > +             };
> > > +     };
> >
> > Does your board happen to have the barebox env GPT partition type UUID?
> > In that case, you could also control this via autoload_external_env()
> > or env.autoprobe instead of having to hardcode anything in DT.

Yes, we do use the GPT part-type UUID thanks for pointing this out.

> > > +/ {
> > > +     /* compatible containing the correct revision and model is patched via board file */
> > > +     compatible = "hgs,gs05", "fsl,imx8mm";
> > > +     model = "Hexagon Geosystems GS05";
> > > +
> > > +     aliases {
> > > +             efiwdt = &efi_wdt;
> >
> > Do you not have a kernel driver for the watchdog? You may want to use
> > watchdog0 and watchdog1 in that case to be able to identify them reliably.

No we currently don't have a Linux driver for it and maybe never will
(currently in discussion).

Regards,
  Marco


> >
> 
> good point - there would be also imx internal watchdog (connected to the pmic)
> 
> 
> gruß
> Johannes
> 
> >
> > > +     };
> > > +
> > > +     /*
> > > +      * Prohibit OP-TEE from turning of the UART output if enabled via
> > > +      * CFG_UART_BASE. To do so we need to specify a stdout-path which
> > > +      * doesn't exist else OP-TEE turns off the UART.
> > > +      */
> > > +     secure-chosen {
> > > +             stdout-path = "/this-path/does/not/exist";
> >
> > ... :/
> >
> > > +&usdhc3 { /* eMMC */
> > > +     assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> > > +     assigned-clock-rates = <400000000>;
> > > +     pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > > +     pinctrl-0 = <&pinctrl_usdhc3>;
> > > +     pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> > > +     pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> > > +     bus-width = <8>;
> > > +     non-removable;
> >
> > no-sd;
> > no-sdio;
> >
> > to skip their detect?
> >
> > > +     pinctrl_gpio1: gpio1grp {
> > > +             fsl,pins = <
> > > +                     MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10              0x100
> >
> > This looks a bit unconventional. Can't the consumer select this group?
> >
> > > +config BOARD_HGS
> > > +     bool
> > > +     select ARCH_IMX_ATF_PASS_BL_PARAMS
> > > +     select ARM_SMCCC
> > > +     select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> > > +     select I2C_IMX_EARLY
> > > +     select IMX8M_DRAM
> > > +     select HABV4
> >
> > Do you need to select this one? I think it would be better without to
> > allow it to be enabled in the defconfig without flipping HABv4 on for
> > all other boards?
> >
> > > +static int hgs_console_open_fixup(struct device_node *root, void *context)
> > > +{
> > > +     struct hgs_machine *machine = context;
> > > +     struct device_node *console_np;
> > > +     struct property *property;
> > > +
> > > +     console_np = of_find_node_by_alias(root, machine->console_alias);
> > > +     if (!console_np)
> > > +             return -EINVAL;
> > > +
> > > +     property = of_rename_property(console_np, "pinctrl-1", "pinctrl-0");
> >
> > Does this not yield an invalid DT when passed to the kernel?
> > I think you want to either keep pinctrl-1 as is or shorten pinctrl-names
> > as well.
> >
> > > +     pinctrl = pinctrl_get_select(console->dev, "uart");
> >
> > Nitpick: I think a name like "open" might be clearer?
> >
> >
> > Cheers,
> > Ahmad
> >
> > --
> > Pengutronix e.K.                  |                             |
> > Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



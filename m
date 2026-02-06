Delivery-date: Fri, 06 Feb 2026 14:47:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMBX-009V82-01
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:47:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMBV-0004eo-QE
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:47:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l42y1Vnm2Y3/5TCNnphggVZs9XXu6ZOvdkTn1zmsbQQ=; b=p0e9xt+s+YWu1+1ztPmw84NPdU
	Y0wEp7Q6GGYSKIS+d2yFh5H7K7ELX5h/Z4XoC6xRhoiQvZ8WoXil1v2E/62uenaezo1+25wGhXj4A
	rCRnDhBrgQVLBYkn56srepApR786vS7vJpysZI6N/FKUQa59VMPNPLhjSEN4yRWEZTuLfsffyz/gD
	u92Q8r57ezE3jP9unaovN66ydwYlfTLgIhiFAOCLR1zl65nW1ewrmSv9Kd2YmTcOfW2iCUNkC5p1h
	rdy9ooBX6SZuteCBdYB21k2/SmhCfXZYqIAvYKDHlfe3iiAEo8HG+7S6CIqe3Aq12/s4voMASNXzN
	3YV+CKqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMB5-0000000BOGo-2S9f;
	Fri, 06 Feb 2026 13:47:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMB3-0000000BOGC-0ap0
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:47:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voMB1-0004YG-Kr; Fri, 06 Feb 2026 14:47:15 +0100
Message-ID: <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
Date: Fri, 6 Feb 2026 14:47:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_054717_189517_08309E60 
X-CRM114-Status: GOOD (  30.32  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/5/26 4:45 PM, Marco Felsch wrote:
> This adds support for the Hexagon Geosystems GS05 which is part of the
> System1600 platform.
> 
> Co-developed-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

fyi, correct procedure for Linux would be for co-developed-by to be
followed by s-o-b, but I won't insist on it here.

> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---


> +static int ar8031_phy_fixup(struct phy_device *phydev)
> +{
> +	/* enable rgmii rxc skew and phy mode select to RGMII copper */
> +	phy_write(phydev, 0x1d, 0x1f);
> +	phy_write(phydev, 0x1e, 0x8);
> +	phy_write(phydev, 0x1d, 0x00);
> +	phy_write(phydev, 0x1e, 0x82ee);
> +	phy_write(phydev, 0x1d, 0x05);
> +	phy_write(phydev, 0x1e, 0x100);
> +
> +	return 0;

barebox supports qca,clk-out-frequency, qca,clk-out-strength and
phy-mode properties to apply these fixups to the PHY.

This is useful if you have the same PHY elsewhere, e.g. behind a switch
as you can identify the specific PHY that should have these settings
applied. It also allows a faster boot as you could skip network probe in
barebox and do the fixups in Linux if the device tree lists them.

Just for your information. As you guard this behind your board
compatible, I can live with it.

> +}
> +
> +static struct hgs_machine *
> +hgs_gs05_get_board_from_legacy(const unsigned char *serial)
> +{
> +	struct hgs_gs05_legacy_machine *machine = hgs_gs05_legacy_variants;
> +
> +	for (; machine->revision; machine++)
> +		if (serial[6] == machine->revision)
> +			return &machine->machine;
> +
> +	return ERR_PTR(-EINVAL);
> +}
> +
> +static struct hgs_machine *
> +hgs_gs05_select_board(const unsigned char *serial, bool legacy_format)
> +{
> +	struct hgs_machine *machine = hgs_gs05_variants;
> +	const struct hgs_board_revision *rev;
> +
> +	/* TODO: Remove legacy handling if no longer required */
> +	if (legacy_format)
> +		return hgs_gs05_get_board_from_legacy(serial);
> +
> +	rev = hgs_get_rev_from_part_trace((struct hgs_part_trace_code *)serial);
> +	if (!rev)
> +		return ERR_PTR(-EINVAL);
> +
> +	for (; machine->dts_compatible; machine++)
> +		if (rev->id == machine->revision)
> +			return machine;
> +
> +	return ERR_PTR(-EINVAL);
> +}
> +
> +static u64
> +hgs_gs05_set_efi_poll_intervall(struct device *efid, u64 new_polling_interval)
> +{
> +	const char *old_interval_str;
> +	char *new_interval;
> +	u64 old_interval;
> +
> +	old_interval_str = dev_get_param(efid->parent, "polling_interval");
> +	kstrtoull(old_interval_str, 10, &old_interval);
> +
> +	pr_debug("Update EFI UART-Rx poll interval: %llu ns -> %llu ns\n",
> +		 old_interval, new_polling_interval);
> +
> +	new_interval = basprintf("%llu", new_polling_interval);
> +	dev_set_param(efid->parent, "polling_interval", new_interval);
> +	free(new_interval);
> +
> +	return old_interval;
> +}
> +
> +/* '"' + sizeof(struct hgs_part_trace_code) + '"' + string delim '\0' */
> +#define HGS_GS05_SERIAL_NUMBER_CHARS	\
> +	(1 + sizeof(struct hgs_part_trace_code) + 1 + 1)
> +
> +static struct hgs_machine *hgs_gs05_get_board(struct device_d *dev)

Should there be a v2, you can use the occasion to replace all device_d
and driver_d with device and driver respectively.

> +	chosen {
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc3, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +	};

Does your board happen to have the barebox env GPT partition type UUID?
In that case, you could also control this via autoload_external_env()
or env.autoprobe instead of having to hardcode anything in DT.

> +/ {
> +	/* compatible containing the correct revision and model is patched via board file */
> +	compatible = "hgs,gs05", "fsl,imx8mm";
> +	model = "Hexagon Geosystems GS05";
> +
> +	aliases {
> +		efiwdt = &efi_wdt;

Do you not have a kernel driver for the watchdog? You may want to use
watchdog0 and watchdog1 in that case to be able to identify them reliably.

> +	};
> +
> +	/*
> +	 * Prohibit OP-TEE from turning of the UART output if enabled via
> +	 * CFG_UART_BASE. To do so we need to specify a stdout-path which
> +	 * doesn't exist else OP-TEE turns off the UART.
> +	 */
> +	secure-chosen {
> +		stdout-path = "/this-path/does/not/exist";

... :/

> +&usdhc3 { /* eMMC */
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;

no-sd;
no-sdio;

to skip their detect?

> +	pinctrl_gpio1: gpio1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x100

This looks a bit unconventional. Can't the consumer select this group?

> +config BOARD_HGS
> +	bool
> +	select ARCH_IMX_ATF_PASS_BL_PARAMS
> +	select ARM_SMCCC
> +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> +	select I2C_IMX_EARLY
> +	select IMX8M_DRAM
> +	select HABV4

Do you need to select this one? I think it would be better without to
allow it to be enabled in the defconfig without flipping HABv4 on for
all other boards?

> +static int hgs_console_open_fixup(struct device_node *root, void *context)
> +{
> +	struct hgs_machine *machine = context;
> +	struct device_node *console_np;
> +	struct property *property;
> +
> +	console_np = of_find_node_by_alias(root, machine->console_alias);
> +	if (!console_np)
> +		return -EINVAL;
> +
> +	property = of_rename_property(console_np, "pinctrl-1", "pinctrl-0");

Does this not yield an invalid DT when passed to the kernel?
I think you want to either keep pinctrl-1 as is or shorten pinctrl-names
as well.

> +	pinctrl = pinctrl_get_select(console->dev, "uart");

Nitpick: I think a name like "open" might be clearer?


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




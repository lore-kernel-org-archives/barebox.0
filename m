Delivery-date: Mon, 09 Feb 2026 12:39:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpPc8-00AXUg-2J
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 12:39:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpPc7-00041D-7i
	for lore@pengutronix.de; Mon, 09 Feb 2026 12:39:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUY6qs6XN4mtcCtKdbxrTSTYVs5oTEdko89Qe30RjlA=; b=mYnFi9mifY5YF9yN27d7/CQzcd
	axwk6/6wtSGyf68VTv+NbMjInwFIJIKqCM47YfS6oih0yWA/xk5R4GBdsMZGoLyef9u5SVytfLqY3
	fzkvPamXvWFFOxpRB+XVhSzxsnhRSWJkDV6WNOspWulN9ES46NxAnJedH9iI9QvaHcm2rr4hEIMx3
	DssxzWr31Z829JnkHkzuUSDynwMBU3eSmCQQ4CLe//AoD0F61ewYH9BfZ4yDR2SgLcn7KnJdv7KlD
	64WprhGfAllIyu8Nd8nffF4kCBO3LN4Fa55oPlOojR2/xAfD4iSGMMbKkmVdW2aLgdyXmagRd75Se
	HpjnyYHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPbd-0000000FJYR-39wK;
	Mon, 09 Feb 2026 11:39:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPbb-0000000FJY3-0II9
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 11:39:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPbZ-0003rW-GE; Mon, 09 Feb 2026 12:39:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPbZ-004sp9-2r;
	Mon, 09 Feb 2026 12:39:01 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPbZ-007zNl-0M;
	Mon, 09 Feb 2026 12:39:01 +0100
Date: Mon, 9 Feb 2026 12:39:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <20260209113901.jfa2dnwt2m5r3pnv@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
 <aYm6JQeGP7MpoDPg@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYm6JQeGP7MpoDPg@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_033903_271361_2933AC57 
X-CRM114-Status: GOOD (  39.23  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-09, Sascha Hauer wrote:
> On Thu, Feb 05, 2026 at 04:45:07PM +0100, Marco Felsch wrote:
> > +#include <common.h>
> > +#include <deep-probe.h>
> > +#include <envfs.h>
> > +#include <environment.h>
> > +#include <init.h>
> > +#include <i2c/i2c.h>
> > +#include <linux/phy.h>
> > +#include <mach/imx/bbu.h>
> > +#include <mach/imx/generic.h>
> > +#include <mfd/hgs-efi.h>
> > +#include <of.h>
> > +#include <state.h>
> > +
> > +#define PHY_ID_AR8031	0x004dd074
> > +#define AR_PHY_ID_MASK	0xffffffff
> > +
> > +#define HGS_GS05_BASE_NAME	"Hexagon Geosystems GS05"
> > +
> > +#define HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
> > +	HGS_MACHINE(_revid, _compatible, HGS_GS05_BASE_NAME " " _model_suffix)
> > +
> > +struct hgs_machine hgs_gs05_variants[] = {
> 
> static

Sure.

> > +	HGS_GS05_MACHINE(HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
> > +	HGS_GS05_MACHINE(HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
> > +	{ /* Sentinel */ }
> > +};
> > +
> > +#define HGS_GS05_LEGACY_MACHINE(_revchar, _revid, _compatible, _model_suffix) \
> > +{									\
> > +	.revision = _revchar,						\
> > +	.machine = HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
> > +}
> > +
> > +struct hgs_gs05_legacy_machine {
> 
> static

Sure.

> > +	u8 revision;
> > +	struct hgs_machine machine;
> > +} hgs_gs05_legacy_variants[] = {
> > +	HGS_GS05_LEGACY_MACHINE('C', HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
> > +	HGS_GS05_LEGACY_MACHINE('D', HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
> > +	{ /* Sentinel */ }
> > +};
> > +
> > +static int ar8031_phy_fixup(struct phy_device *phydev)
> > +{
> > +	/* enable rgmii rxc skew and phy mode select to RGMII copper */
> > +	phy_write(phydev, 0x1d, 0x1f);
> > +	phy_write(phydev, 0x1e, 0x8);
> > +	phy_write(phydev, 0x1d, 0x00);
> > +	phy_write(phydev, 0x1e, 0x82ee);
> > +	phy_write(phydev, 0x1d, 0x05);
> > +	phy_write(phydev, 0x1e, 0x100);
> > +
> > +	return 0;
> > +}
> > +
> > +static struct hgs_machine *
> > +hgs_gs05_get_board_from_legacy(const unsigned char *serial)
> > +{
> > +	struct hgs_gs05_legacy_machine *machine = hgs_gs05_legacy_variants;
> > +
> > +	for (; machine->revision; machine++)
> > +		if (serial[6] == machine->revision)
> > +			return &machine->machine;
> 
> Drop sentinel and use ARRAY_SIZE?

Is this rather a personal preference or barebox coding style?

I would like to keep the sentinel-approach since we use the same
approach for other boards too which allowed us simpler code
constructions.

> > +	return ERR_PTR(-EINVAL);
> > +}
> > +
> > +static struct hgs_machine *
> > +hgs_gs05_select_board(const unsigned char *serial, bool legacy_format)
> > +{
> > +	struct hgs_machine *machine = hgs_gs05_variants;
> > +	const struct hgs_board_revision *rev;
> > +
> > +	/* TODO: Remove legacy handling if no longer required */
> > +	if (legacy_format)
> > +		return hgs_gs05_get_board_from_legacy(serial);
> > +
> > +	rev = hgs_get_rev_from_part_trace((struct hgs_part_trace_code *)serial);
> > +	if (!rev)
> > +		return ERR_PTR(-EINVAL);
> > +
> > +	for (; machine->dts_compatible; machine++)
> > +		if (rev->id == machine->revision)
> > +			return machine;
> 
> same here.
> 
> [...]
> 
> > +static int hgs_setup_emmc(struct hgs_machine *machine)
> > +{
> > +	static const char * const mmc_commands[] = { "enh_area", "write_reliability" };
> > +	int partitioning_completed;
> > +	char *cmd, *tmp;
> > +	unsigned int i;
> > +
> > +	tmp = xasprintf("%s.partitioning_completed", machine->mmc_alias);
> > +	getenv_bool(tmp, &partitioning_completed);
> > +	free(tmp);
> > +	if (partitioning_completed)
> > +		return 0;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(mmc_commands); i++) {
> > +		cmd = xasprintf("mmc %s /dev/%s", mmc_commands[i], machine->mmc_alias);
> > +		if (run_command(cmd)) {
> 
> run_command("mmc %s /dev/%s", mmc_commands[i], machine->mmc_alias);
> 
> Would be nice ;)

Yeah, would come in handy here, let me check this.

> > +			dev_err(machine->dev,
> > +				"Failed to run command: %s, skip eMMC partition-complete\n", cmd);
> > +			free(cmd);
> > +			return -EINVAL;
> > +		}
> > +		free(cmd);
> > +	}
> > +
> > +	/* Make the final complete not part of the loop */
> > +	cmd = xasprintf("mmc partition_complete /dev/%s", machine->mmc_alias);
> > +	run_command(cmd);
> > +	free(cmd);
> > +
> > +	dev_info(machine->dev, "Initial eMMC setup completed successfully\n");
> > +	return 0;
> > +}
> > +
> 
> [...]
> 
> > +	err = imx_hab_lockdown_device(flags);
> > +	if (err) {
> > +		dev_err(dev, "Failed to lockdown the device\n");
> > +		return err;
> > +	}
> > +	dev_info(dev, "Lockdown of the device succeeded\n");
> > +	return 0;
> > +}
> > +postenvironment_initcall(hgs_run_first_boot_setup);
> 
> Needs to be protected from running on other boards.

Guarded via the hgs_first_boot variable which is only set by
hgs_run_first_boot() which in turn gets only called via
hgs_common_boot().

> 
> > +
> > +/*
> > + * Notify the PP4 at the latest point to ensure that barebox was started
> > + * properly. If this function is not reached the PP4 timeout of 10sec is
> > + * triggered which puts us into serial-downloader mode.
> > + */
> > +static int hgs_notify_pp4(void)
> > +{
> > +	int ret;
> > +
> > +	if (!priv)
> > +		return 0;
> > +
> > +	ret = gpio_request_one(priv->pp4_gpio, GPIOF_OUT_INIT_HIGH, "pp4-cpu-rdy");
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
> > +postenvironment_initcall(hgs_notify_pp4);
> 
> ditto.

It's guarded by the 'if (!priv)' but this function may get removed in
v2 anyway.

> > +
> > +/*
> > + * Custom USB gadget handling since we need to get notified upon the flash of
> > + * the data partition. The setup is done very late like the
> > + * usbgadget_autostart_init() since we need to ensure that the NV is loaded
> > + * properly for development case.
> > + */
> > +static int hgs_usbgadget_autostart(void)
> > +{
> > +	struct usbgadget_funcs funcs = {};
> > +	struct f_multi_opts *opts;
> > +	int ret;
> > +
> > +	if (!hgs_enable_usbgadget)
> > +		return 0;
> > +
> > +	/*
> > +	 * Some HW is missing a HW serial connecotr. Fastboot is used for file
> > +	 * download.
> > +	 */
> > +	funcs.flags |= USBGADGET_EXPORT_BBU | USBGADGET_FASTBOOT | USBGADGET_ACM;
> > +
> > +	opts = usbgadget_prepare(&funcs);
> > +	if (IS_ERR(opts))
> > +		return PTR_ERR(opts);
> > +
> > +	/* Custom hook to get notified once the user want to flash something */
> > +	opts->fastboot_opts.cmd_flash = hgs_fastboot_cmd_flash;
> > +
> > +	ret = usbgadget_register(opts);
> > +	if (ret)
> > +		usb_multi_opts_release(opts);
> > +
> > +	return ret;
> > +}
> > +postenvironment_initcall(hgs_usbgadget_autostart);
> 
> ditto.

Guarded via hgs_enable_usbgadget.

> 
> > +++ b/common/boards/hgs/lib.c
> > @@ -0,0 +1,73 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 2025 Pengutronix
> > +// SPDX-FileCopyrightText: Leica Geosystems AG
> > +
> > +#define pr_fmt(fmt) "hgs-lib: " fmt
> > +
> > +#include <common.h>
> > +#include <linux/stddef.h>
> > +#include <linux/hex.h>
> > +
> > +#include <boards/hgs/common.h>
> > +
> > +#define HGS_BOARD_REV(_id, _str) {	\
> > +	.id = _id,			\
> > +	.str = _str,			\
> > +}
> > +
> > +#define HGS_BOARD_REV_SIMPLE(_id)	\
> > +	HGS_BOARD_REV(HGS_BOARD_REV##_id, #_id)
> > +
> > +static const struct hgs_board_revision hgs_revision_table[] = {
> > +	HGS_BOARD_REV_SIMPLE(_A),
> > +	HGS_BOARD_REV_SIMPLE(_B),
> > +	HGS_BOARD_REV_SIMPLE(_C),
> > +	HGS_BOARD_REV_SIMPLE(_D),
> > +	HGS_BOARD_REV_SIMPLE(_E),
> > +};
> > +
> > +const struct hgs_board_revision *
> > +hgs_get_rev_from_part_trace(const struct hgs_part_trace_code *code)
> > +{
> > +	const struct hgs_board_revision *rev = hgs_revision_table;
> > +
> > +	for (; rev->str; rev++)
> 
> This iterates past the array. Use ARRAY_SIZE.

You're right! It was never noticed since we never reached the end :/

I can change it to ARRAY_SIZE() but I would like to keep the sentinel
approach and add the missing sentinel if this is fine for you.

> > +		if (!memcmp(code->material_revision, rev->str,
> > +		    sizeof(code->material_revision)))
> > +			return rev;
> > +
> > +	return NULL;
> > +}
> > +
> > +const u32
> > +hgs_get_artno_from_part_trace(const struct hgs_part_trace_code *code)
> > +{
> > +	__be32 res = 0;
> > +	u8 tmp[8];
> > +	int err;
> > +
> > +	/*
> > +	 * Art-no. has 7-digits, add a leading '0' to align it to 8 and make
> > +	 * use of hex2bin
> > +	 */
> > +	memset(tmp, '0', sizeof(tmp));
> 
> tmp[0] = '0'

Sure, could also have done the intialization during the definition of
tmp.

Thanks for the review,
Marco

> > +	memcpy(tmp + 1, code->art_number, sizeof(code->art_number));
> > +	err = hex2bin((u8 *)&res, tmp, sizeof(res));
> > +
> > +	return err ? 0 : be32_to_cpu(res);
> > +}
> > +
> > +struct hgs_machine *hgs_get_last_variant_entry(struct hgs_machine *variants)
> > +{
> > +	struct hgs_machine *last_entry = NULL;
> > +
> > +	if (!variants->dts_compatible) {
> > +		pr_warn("%s: Invalid input\n", __func__);
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	for (; variants->dts_compatible; variants++)
> > +		last_entry = variants;
> > +
> > +	return last_entry;
> > +}
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



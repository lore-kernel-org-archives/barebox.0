Delivery-date: Mon, 09 Feb 2026 14:41:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRVw-00AZM2-0n
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 14:41:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRVv-0006ee-4p
	for lore@pengutronix.de; Mon, 09 Feb 2026 14:41:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gcvdpqMr8tF8EKOJ8PbDplRBc106GPt1OmIGSGi/vvQ=; b=qJHze9izxyX1kE3b1/dVpkwK3K
	qQWQJLxyDUawtRKf4Ct4vV7az0+JDWZiIYc9d7b1jlbEx0XPhLYmKGrUaMAWDf3mDuhWAn3hg9QHI
	8QuRMRVNOgvauTU782QhE93bmDNAODmpHjaJx3Y3bUkVv4B8TvpO/5NisJZsYpz20DSeNj3WwKxtt
	Ja25YiJqGeENwiGqyqIHmTirO4u+KO1suVjcQsssOcKdtadLYhlKUetK/6aCgT8JJA0chq8kkrq6l
	DgPG7yN31TvT6L9nWvYxGMZWRGB9wmWu+66wBi1+nQ/EIN7K7ZsZ/KJ2uBP5stua7jHTBUQzyh6iL
	gW8hk05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRVJ-0000000FSDQ-2w06;
	Mon, 09 Feb 2026 13:40:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRVG-0000000FSCm-3zDa
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 13:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRVE-0006XL-P6; Mon, 09 Feb 2026 14:40:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRVE-004tnK-2Y;
	Mon, 09 Feb 2026 14:40:36 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRVE-0080cX-03;
	Mon, 09 Feb 2026 14:40:36 +0100
Date: Mon, 9 Feb 2026 14:40:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <aYnj0xGZySdVGObw@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
 <aYm6JQeGP7MpoDPg@pengutronix.de>
 <20260209113901.jfa2dnwt2m5r3pnv@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209113901.jfa2dnwt2m5r3pnv@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_054039_013723_3755B31A 
X-CRM114-Status: GOOD (  29.02  )
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

On Mon, Feb 09, 2026 at 12:39:01PM +0100, Marco Felsch wrote:
> On 26-02-09, Sascha Hauer wrote:
> > On Thu, Feb 05, 2026 at 04:45:07PM +0100, Marco Felsch wrote:
> > > +#include <common.h>
> > > +#include <deep-probe.h>
> > > +#include <envfs.h>
> > > +#include <environment.h>
> > > +#include <init.h>
> > > +#include <i2c/i2c.h>
> > > +#include <linux/phy.h>
> > > +#include <mach/imx/bbu.h>
> > > +#include <mach/imx/generic.h>
> > > +#include <mfd/hgs-efi.h>
> > > +#include <of.h>
> > > +#include <state.h>
> > > +
> > > +#define PHY_ID_AR8031	0x004dd074
> > > +#define AR_PHY_ID_MASK	0xffffffff
> > > +
> > > +#define HGS_GS05_BASE_NAME	"Hexagon Geosystems GS05"
> > > +
> > > +#define HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
> > > +	HGS_MACHINE(_revid, _compatible, HGS_GS05_BASE_NAME " " _model_suffix)
> > > +
> > > +struct hgs_machine hgs_gs05_variants[] = {
> > 
> > static
> 
> Sure.
> 
> > > +	HGS_GS05_MACHINE(HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
> > > +	HGS_GS05_MACHINE(HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
> > > +	{ /* Sentinel */ }
> > > +};
> > > +
> > > +#define HGS_GS05_LEGACY_MACHINE(_revchar, _revid, _compatible, _model_suffix) \
> > > +{									\
> > > +	.revision = _revchar,						\
> > > +	.machine = HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
> > > +}
> > > +
> > > +struct hgs_gs05_legacy_machine {
> > 
> > static
> 
> Sure.
> 
> > > +	u8 revision;
> > > +	struct hgs_machine machine;
> > > +} hgs_gs05_legacy_variants[] = {
> > > +	HGS_GS05_LEGACY_MACHINE('C', HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
> > > +	HGS_GS05_LEGACY_MACHINE('D', HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
> > > +	{ /* Sentinel */ }
> > > +};
> > > +
> > > +static int ar8031_phy_fixup(struct phy_device *phydev)
> > > +{
> > > +	/* enable rgmii rxc skew and phy mode select to RGMII copper */
> > > +	phy_write(phydev, 0x1d, 0x1f);
> > > +	phy_write(phydev, 0x1e, 0x8);
> > > +	phy_write(phydev, 0x1d, 0x00);
> > > +	phy_write(phydev, 0x1e, 0x82ee);
> > > +	phy_write(phydev, 0x1d, 0x05);
> > > +	phy_write(phydev, 0x1e, 0x100);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static struct hgs_machine *
> > > +hgs_gs05_get_board_from_legacy(const unsigned char *serial)
> > > +{
> > > +	struct hgs_gs05_legacy_machine *machine = hgs_gs05_legacy_variants;
> > > +
> > > +	for (; machine->revision; machine++)
> > > +		if (serial[6] == machine->revision)
> > > +			return &machine->machine;
> > 
> > Drop sentinel and use ARRAY_SIZE?
> 
> Is this rather a personal preference or barebox coding style?
> 
> I would like to keep the sentinel-approach since we use the same
> approach for other boards too which allowed us simpler code
> constructions.

As you've seen in this patch such a sentinel is easily forgotten. When
you use the arrays non locally and have to pass the number of array
entries around as an additional argument, then Ok, use the sentinel
approach. But since you don't do that, what's the good argument for not
using ARRAY_SIZE and save a few bytes of binary space?

> > [...]
> > 
> > > +	err = imx_hab_lockdown_device(flags);
> > > +	if (err) {
> > > +		dev_err(dev, "Failed to lockdown the device\n");
> > > +		return err;
> > > +	}
> > > +	dev_info(dev, "Lockdown of the device succeeded\n");
> > > +	return 0;
> > > +}
> > > +postenvironment_initcall(hgs_run_first_boot_setup);
> > 
> > Needs to be protected from running on other boards.
> 
> Guarded via the hgs_first_boot variable which is only set by
> hgs_run_first_boot() which in turn gets only called via
> hgs_common_boot().

Hm, you're right. Nevertheless please do not add multiple initcalls at
the same level in the same file.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



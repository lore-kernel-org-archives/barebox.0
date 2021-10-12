Delivery-date: Tue, 12 Oct 2021 19:14:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maLM1-0006Dq-79
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 19:14:17 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maLM0-0003Lp-89
	for lore@pengutronix.de; Tue, 12 Oct 2021 19:14:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMoJ7FgheyyXtGh/pMFKpR+tKPCvenrxlxe4hUy55Zs=; b=R800NaKpTYc6Yq
	g3Q3Iw6ueS4eOQd/U0Qrhba1PvzlGZGzMKY0+NDVCezVjTF/+dpaFgmGDOsOKG6NvtRWJX4wj1OWb
	gCkV+z05BHON8BeTOUT9kOUsvstfG0qKyS6swQTxqtVYGe2xHO17tOghZBA7cS7kcxj9U01R9u1t3
	BJ//4NQJuW5iUgMtfuz+rRfqR0P2Wk+c7CLPBsnmOjIlHLHpt276V4gSCAiBsvK6uqQ3NI3FpanhL
	Y4fTTquV8J8tdELf4nGe6DVMhr3bUd8z69VIL6EzHy8UrntEZKhOT7TbXAwGYhvivh+N6ev5jVM5I
	qAzIrVlG4VycTEb3eM+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maLKJ-00DaU1-T0; Tue, 12 Oct 2021 17:12:31 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maLKE-00DaTC-V6
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 17:12:28 +0000
Received: by mail-lf1-x134.google.com with SMTP id j21so221020lfe.0
 for <barebox@lists.infradead.org>; Tue, 12 Oct 2021 10:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bUD9bgg7RdIDu4kTmWW8EBlM6+BGa5Q0BbTEB+U2S2c=;
 b=VsGwHWjlsEMOPO3g2sG73CDiHP+yOweXj2jzGM9zV1x6gl4wHs06Vfki8Brfe5Ytt/
 v/tJ0SsiVS9ZOOyzFNIf/eU4wNF95sJTgpVWhSTnbUXx8p0F0Ll4Py+S0qdbxA0LJpY3
 LDXkECyeqES1F6V1giomqzqEFpLrdGVrJsymGNExNL/8dZZPZXLG6BgQ8scbNQk2HBwz
 +NFy13osYk5ouuKXt0DYosllvfIhYDjxJCPrzr6oXeIj6Kycttw5vnavsui24bajJfC8
 Fdie1lbGjRWdjFOw7ZxEiI95+rLsCu236b1yPE9zvncgq4GmtRvKMUfF7vsptQ+N2VwV
 E+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bUD9bgg7RdIDu4kTmWW8EBlM6+BGa5Q0BbTEB+U2S2c=;
 b=jFo6Dy/49gJIJD53W4E9/GEWKvQdXiM0J4Lzt7ZMtIGF+DTdXRJ1cA2QJHv+nXiU8t
 HQoSZa3QKCD+TFm93XBBSoXrtZjwlwyTD6uFzna+KPmNJ/W+2AtV5ySfUDlRqclKPRiK
 RfnLY3W1qpBYYzJmdLtpzjuXc4AmkhqjUxrpOuNPmVk45B+kVCB15EJveQVs0RlXVZMs
 R5PPJEdyC62TeQuPCn9tA5ONR3PdfNjKQm2Um6v/JwN3RBeYkPcsWLseox9jhf9eVY7x
 CD07ECEkeLWCB9jzezCgsXooQ46dL5vXUxRL2DXg+sKWt2aBCNv8ZqV2jsfFyMJXaA7e
 6m0A==
X-Gm-Message-State: AOAM530ioGtGu4cvycvrjBh8YDLrwpf4wq+PSpRSdRrWN8BRPWbw/euy
 dtQEpi0q2pbsnB3MdBc1PE8GpsyE6nc8ejPk2bsOqvHE3GlJjA==
X-Google-Smtp-Source: ABdhPJxF7d/rcX13wSTHCRJO4cmqnuEYMfP8IsrFF+6A/nnM0e0oOyUs4gSmwFj2jc8e2QyK9n2vHqQmE4JK5VwoBVs=
X-Received: by 2002:ac2:4c56:: with SMTP id o22mr4577597lfk.196.1634058744701; 
 Tue, 12 Oct 2021 10:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
In-Reply-To: <20211012100859.1409-2-o.rempel@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 12 Oct 2021 10:12:13 -0700
Message-ID: <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_101227_229471_80BCC13B 
X-CRM114-Status: GOOD (  19.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 12, 2021 at 3:10 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> Port devicetree based clock select support from kernel micrel driver (v5.15-rc1).
> This support is needed to make netboot work on boards with PHY node and
> "rmii-ref" property.

Existing boards use a phy fixup to handle this case, e.g. fsl,imx6ull-14x14-evk:

static int nxp_imx6ull_evk_init(void)
{
         phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
                       ksz8081_phy_fixup);

static int ksz8081_phy_fixup(struct phy_device *dev)
{
       phy_write(dev, 0x1f, 0x8190);
       phy_write(dev, 0x16, 0x202);

I thought about extending micrel driver like this when I added support
for NXP imx6ul (single L, not double L as above) dev kit but decided
it was a lot of code for what ends up being one register write for
boards using a ksz8081 and the barebox phy fixup concept, which
handles this in only a couple lines, was easier.

Also look at ks8051_config_init(), it checks phydev->dev_flags to set
this same bit.  But AFAICT, dev_flags is not used in Barebox.

> +/* PHY Control 2 / PHY Control (if no PHY Control 1) */
> +#define MII_KSZPHY_CTRL_2                      0x1f
> +#define KSZPHY_RMII_REF_CLK_SEL                        BIT(7)

These are already in this file as MII_KSZPHY_CTRL and KSZ8051_RMII_50MHZ_CLK.

> +struct kszphy_type {
> +       bool has_rmii_ref_clk_sel;
> +};
> +
> +struct kszphy_priv {
> +       const struct kszphy_type *type;

type does not appear to be used from the state struct.

> +       bool rmii_ref_clk_sel;
> +       bool rmii_ref_clk_sel_val;

All you need is a single flag to indicate the KSZ8051_RMII_50MHZ_CLK
bit should be set after a reset.  Otherwise it can be left unset,
which is the default value.

> +static const struct kszphy_type ksz8081_type = {
> +       .has_rmii_ref_clk_sel   = true,
> +};

Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
KSZ8051, which has the existing different method to handle it, as
described earlier.

> +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> +{
> +       int ctrl;
> +
> +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> +       if (ctrl < 0)
> +               return ctrl;
> +
> +       if (val)
> +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> +       else
> +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> +
> +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> +}

phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);

> +
> +       /* Support legacy board-file configuration */
> +       if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
> +               priv->rmii_ref_clk_sel = true;
> +               priv->rmii_ref_clk_sel_val = true;
> +       }

Can't code in ksz8051_config_init be removed then?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


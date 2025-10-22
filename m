Delivery-date: Wed, 22 Oct 2025 08:53:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSiZ-00AWKJ-1h
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 08:53:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSiZ-0002b8-02
	for lore@pengutronix.de; Wed, 22 Oct 2025 08:53:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H8R5WRQRBu1gidFxRq2PPgWlwjA6p9GdqtGHPvtILF8=; b=zCJVH5Z6WRxtgLoRVmsxVVGo3o
	fP+dchztpS1eemPPCpNnBDI+ekYbtLCM4C9ryAqQSoGXpD4DIBthv6Ue9Rc/TjtHtPDdqR8OY8skM
	4s/YITnqRKBInHfuPeL2BtnydKmau85sJvM2LTvRryHCQfkVNnNuyfcvi7O9WBkoQ88IUcKRNCgBb
	+KfC2g+Wz6ZGG6D75BSMXxuZwkEwqDdqxcdkYinnlbrDTy8pk62mlwHNDzGykiRPxfROIMIsLuJAD
	uQ6coQl+04QNbACD0ZCJH2ShBP9H/BhaIri1zqA5Foic3CAHiUL4uOT7Nt4BQIBzXhFQ9UcZGDXCD
	GX21MvrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSiD-00000001jHZ-0PQJ;
	Wed, 22 Oct 2025 06:52:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSiA-00000001jG0-39Vf
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 06:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vBSi7-0002W2-Rr; Wed, 22 Oct 2025 08:52:39 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBSi7-004qf9-20;
	Wed, 22 Oct 2025 08:52:39 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBSi7-00B4Kl-1f;
	Wed, 22 Oct 2025 08:52:39 +0200
Date: Wed, 22 Oct 2025 08:52:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org,
	maud_spierings@hotmail.com
Message-ID: <aPh_N1eMfstGMgbY@pengutronix.de>
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-5-f.pflug@pengutronix.de>
 <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235242_808624_8B087571 
X-CRM114-Status: GOOD (  17.00  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 21, 2025 at 01:11:46PM +0200, Ahmad Fatoum wrote:
> > +static noinline void frdm_imx93_continue(void)
> > +{
> > +	void __iomem *base = IOMEM(MX9_UART1_BASE_ADDR);
> > +	void __iomem *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
> > +
> > +	/* configure LPUART1 TX pin */
> > +	writel(0x0, muxbase + 0x184);
> > +
> > +	imx9_uart_setup(base);
> > +	pbl_set_putc(lpuart32_putc, base + 0x10);
> > +	putchar('>');
> 
> Do you see the > character on bootup if CONFIG_PBL_CONSOLE is enabled?
> Maud (Cc'd) mentioned on the IRC that the 0x10 offset shouldn't be
> necessary.

The UART register space starts at offset 0x10 from the base address.
Some Layerscape SoCs use the same lpuart implementation without this
offset (although barebox doesn't have support for these Layerscape
SoCs).

Maybe we could add a

static inline void imx93_uart_putc(void __iomem *base)
{
	lpuart32_putc(base + 0x10);
}

to avoid confusion.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



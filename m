Delivery-date: Tue, 21 Oct 2025 13:37:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAgR-00AEbY-0m
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 13:37:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAgQ-0005Ce-Je
	for lore@pengutronix.de; Tue, 21 Oct 2025 13:37:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+eix3GHbSbYCbh8XLdYDppqdn7fpy0YOqdLYy507Ng=; b=x0qwrfqg8aF6lznKL7EAzgm8St
	4E7Am0VnC8Dn4TO2LFWfSHJp+InNiGrvRil8kA05A9p8Gwp5xkqEDKkdFSbadKExVRQzF2nv2WP5E
	rsyQxg3FpVOH7JiXBGCP1W5RpDVWThYutxKf5x9AacssyK3ULE6JsgyJGV/dUa0bgFBIO3k2S5J40
	QCwWKi573frYR/Z04fdzt+UBrfZiZHXV3pQthi7lTlAJgb7gaIA3vhT0+6hBDHWmKE6PNe3gUMPXn
	P2P2CQIXg3iWHZSjltLYl9VNUdVXGdWgG98J8ZV2Jdfe943AUdLZ4ZZ5zPfMYKAvleLV8UydMgAGp
	VINyyM4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAft-0000000Gn0L-041S;
	Tue, 21 Oct 2025 11:37:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAfq-0000000GmzV-3lzt
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 11:37:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vBAfp-000565-3Y; Tue, 21 Oct 2025 13:37:05 +0200
Message-ID: <1a4b90c0b61abfc0ea15f81021656d467ecc818a.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: maud_spierings@hotmail.com
Date: Tue, 21 Oct 2025 13:37:04 +0200
In-Reply-To: <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
	 <20251021110149.1151936-1-f.pflug@pengutronix.de>
	 <20251021110149.1151936-5-f.pflug@pengutronix.de>
	 <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_043706_957725_630B463B 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Tue, 2025-10-21 at 13:11 +0200, Ahmad Fatoum wrote:
> Hello Fabian,
>=20
> > +static noinline void frdm_imx93_continue(void)
> > +{
> > +	void __iomem *base =3D IOMEM(MX9_UART1_BASE_ADDR);
> > +	void __iomem *muxbase =3D IOMEM(MX9_IOMUXC_BASE_ADDR);
> > +
> > +	/* configure LPUART1 TX pin */
> > +	writel(0x0, muxbase + 0x184);
> > +
> > +	imx9_uart_setup(base);
> > +	pbl_set_putc(lpuart32_putc, base + 0x10);
> > +	putchar('>');
>=20
> Do you see the > character on bootup if CONFIG_PBL_CONSOLE is enabled?
> Maud (Cc'd) mentioned on the IRC that the 0x10 offset shouldn't be
> necessary.
>=20

I did see the > character with (working with a 2025.07.0 barebox here):

>NOTICE:  TRDC init done
NOTICE:  BL31: v2.12.0(release):v2.12
NOTICE:  BL31: Built : 00:00:00, Sep  1 2025
>

barebox 2025.07.0-00002-g597819f252f1 #5 2025-10-21T11:27:47+00:00
Buildsystem version: DistroKit-2019.12.0-741-g6e3d355a


Board: NXP i.MX93 11X11 FRDM board
imx9: Detected IMX9352C (-40 - 105C)
ele: Current lifecycle: OEM Open
ele: Event 0x0287eed6:
ele:   IPC =3D MU APD (0x02)
ele:   CMD =3D ELE_OEM_CNTN_AUTH (0x87)
ele:   IND =3D ELE_NO_AUTHENTICATION_FAILURE (0xee)
ele:   STA =3D ELE_SUCCESS (0xd6)
netconsole: registered as netconsole-1
psci psci.of: detected version 1.1
pca9450-i2c pca9451a0: PMIC Chip ID: 0x9
imx-esdhc 42850000.mmc@42850000.of: registered as mmc0
imx-esdhc 42860000.mmc@42860000.of: registered as mmc1
mdio_bus: miibus0: probed
mdio_bus: miibus1: probed
imx-usb 4c200000.usb@4c200000.of: USB EHCI 1.00
mmc1: detected SD card version 2.0
WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the end of t=
he disk.
WARNING: mmc1: GPT:333863 !=3D 61071359
WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc1: GPT:333863 !=3D 61071359
WARNING: mmc1: GPT: Use parted to correct GPT errors.
mmc1: registered mmc1
state: New state registered 'state'
state: Using bucket 0@0x00000000
malloc space: 0xbfe80000 -> 0xffcfffff (size 1022.5 MiB)
found force-builtin environment, using defaultenv
multi_bind: creating Fastboot function
g_multi gadget0: Multifunction Composite Gadget
g_multi gadget0: g_multi ready
mmc0: detected MMC card version 5.1
mmc0: registered mmc0.boot0
mmc0: registered mmc0.boot1
mmc0: registered mmc0
detect: No such device

Hit m for menu or any to stop autoboot:    3
barebox@NXP i.MX93 11X11 FRDM board:/ eth0: 1000Mbps full duplex link detec=
ted


But there seems to be another Problem. If I enable

CONFIG_DEBUG_LL=3Dy
CONFIG_DEBUG_IMX_UART=3Dy
CONFIG_DEBUG_IMX8M_UART=3Dy
CONFIG_DEBUG_IMX_UART_PORT=3D1
CONFIG_DEBUG_PBL=3Dy

The PBL fails to start the barebox

>imx9-ddr: DDRINFO: start DRAM init
imx9-ddr: DDRINFO: cfg clk
imx9-ddr: DDRINFO:ddrphy config start
imx-ddr: DRAM PHY training for 3733MTS
imx-ddr: DRAM PHY training for 3733MTS
imx9-ddr: DDRINFO: ddrphy config done
imx9-ddr: DDRINFO: ddrc config start
imx9-ddr: DDRINFO: ddrc config done
romapi: imx93_romapi_load_image: IVT offset on boot device: 0x00008000
romapi: imx93_romapi_load_image: offset in image: 0x00002000
NOTICE:  TRDC init done
NOTICE:  BL31: v2.12.0(release):v2.12
NOTICE:  BL31: Built : 00:00:00, Sep  1 2025
>uncompress.c: memory at 0x80000000, size 0x80000000
mmu: enabling MMU, ttb @ 0xfffe0000
endmem                =3D 0x100000000
arm_mem_scratch       =3D 0xffff8000+0x00008000
arm_mem_stack         =3D 0xffff0000+0x00008000
arm_mem_ttb           =3D 0xfffe0000+0x00010000
arm_mem_barebox_image =3D 0xffd00000+0x00300000
arm_mem_early_malloc  =3D 0xffce0000+0x00020000
membase               =3D 0x80000000+0x80000000
uncompress.c: uncompressing barebox binary at 0x0000000080223a60 (size 0x00=
0773c0) to 0xffd00000 (uncompressed size:
0x001b81b0)
uncompress.c: jumping to uncompressed image at 0x00000000ffd00000

--> from here on out nothing.


If I remove the 0x10, then there is nothing at all in either case.


> Cheers,
> Ahmad



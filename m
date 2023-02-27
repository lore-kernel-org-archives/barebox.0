Delivery-date: Mon, 27 Feb 2023 09:01:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWYSK-003Z3h-Mu
	for lore@lore.pengutronix.de; Mon, 27 Feb 2023 09:01:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWYSK-0004l8-IT
	for lore@pengutronix.de; Mon, 27 Feb 2023 09:01:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MVU65xI+SW4r+xya1Nn0p1NOp5QUMLXCr7zB7vY7ovg=; b=nRjySsj542cM6AFhBFjcv+InLP
	pH4druLL9JxRnZbeoT+726d0S69mjqOcB7lykNd3qfrrud/rsTu9hJkj+e3DnzLXJISMMI5d4yG4D
	+IY1k7y3jGGsXaV+lVWIcx6HLSCtu8ykZBqI0+GtPgLPt0R32vduIHxC/jhPqc5P+zBXXV874zYcC
	5BNMAGjocCi1T6cf1NhuMI2Noowh1+PeSVH9ntbPm1tHkmLCthZtWGkOwd+xQej+uvkjXijNhMAaY
	gkoP6l7GUleSQ6zj0SkIgFTe7aOCqAAdtp11Kr/TaQYv0PynhGLiJKR8ELmcrAeG/OrP89o+s54dq
	FLozqKeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWYQ0-008j51-PD; Mon, 27 Feb 2023 07:59:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWYPp-008j1q-1w
	for barebox@lists.infradead.org; Mon, 27 Feb 2023 07:59:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pWYPh-0004I6-9N; Mon, 27 Feb 2023 08:59:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pWYPg-0002Af-NX; Mon, 27 Feb 2023 08:59:12 +0100
Date: Mon, 27 Feb 2023 08:59:12 +0100
To: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230227075912.GK32097@pengutronix.de>
References: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
 <20230223153601.59357-2-michael.kopfensteiner@vahle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230223153601.59357-2-michael.kopfensteiner@vahle.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_235921_115166_DD46EF58 
X-CRM114-Status: GOOD (  21.93  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

Looks good now. I squashed in some things while applying, see below.

On Thu, Feb 23, 2023 at 04:36:00PM +0100, Michael Kopfensteiner wrote:
> The Variscite DT8MCustomBoard is an eval board for the several Variscite
> SOMs of their "DART" product line. This commit adds support for that
> baseboard in combination with a DART-MX8M-PLUS SOM. The commit contains
> an adapted version of the vendors device tree [1] and the vendors DDR
> timings, taken from Variscite's public U-Boot sources [2].
> 
> Both files have been slightly changed to integrate well with barebox.
> 
> The boardsupport added with this commit does not yet support every
> feature of the DT8MCustomBoard. Yet it already supports all basic
> necessities to make use of barebox.
> 
> [1] https://github.com/varigit/linux-imx/tree/3f94f35bda827e8aa06beadb10c77358cfb6dad9
> [2] https://github.com/varigit/uboot-imx/tree/7cad2ff68a508c71c572151a85bc786711bab969
> 
> Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
> ---

[...]

> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		gp-led1 {
> +			label = "led1";
> +			gpios = <&pca6408_2 7 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			barebox,default-trigger = "heartbeat";

Dropped the barebox,default-trigger property. barebox evaluates the
linux,default-trigger as well and as long as both properties don't
differ there shouldn't be a need to have both.

> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio5 15 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	pca9450@25 {
> +		reg = <0x25>;
> +		compatible = "nxp,pca9450c";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		status = "okay";

Dropped this status property, shouldn't be needed.

> +&usdhc1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
> +	bus-width = <4>;
> +	non-removable;
> +	keep-power-in-suspend;
> +	status = "okay";
> +
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		laird,regdomain = "US";

Dropped this property. It is not evaluated by mainline Linux and it also
doesn't make sense to compile this in statically.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



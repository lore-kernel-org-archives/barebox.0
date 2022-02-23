Delivery-date: Wed, 23 Feb 2022 13:56:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMrCL-007dF5-LL
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 13:56:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMrCJ-00045k-Af
	for lore@pengutronix.de; Wed, 23 Feb 2022 13:56:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Kn+ToKC4q6jgNMkLVZ+0urnfd+lw5cNKxsqWTm07dg=; b=wUr4bIVu/jNV7S
	pXv0n98fXr4CL8kwu++nGvZ1LvIStFykMutu47tYkuvvQsRAsp15kijOCE/2jIXNRwcBHoZvTRuHa
	AJ1sH1Vp//HpKUv/w70QDm5bR7QfEimJYHCgI91KETMIpgX0t+kDiw7toE2ITUJpRCTa64hA4rtpi
	eVJsAWgH6+aTu3QXWegmzhJSLJGXjisNPNGybNLQUN5Jh8cdHXK++4//EafI6uKsvnq7vzZtpMlen
	D9I3cVhMLJDK/NXYE/w0YNMIa2ByGBJHm1oexwKgTJrTj+cSOK1MzlMKQqnNb4jJ8KBqvSKeObjIv
	H3zJ1L9Js6MhWTL8+0jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMrAw-00EHh8-VO; Wed, 23 Feb 2022 12:55:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMqb5-00E7fO-Fu
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 12:18:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nMqb2-0007iQ-0n; Wed, 23 Feb 2022 13:18:16 +0100
Message-ID: <2c543999-cdcc-65ca-ecef-3c0b0a02509b@pengutronix.de>
Date: Wed, 23 Feb 2022 13:18:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
References: <20220223111036.3011774-1-a.fatoum@pengutronix.de>
 <20220223120637.GQ9136@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220223120637.GQ9136@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_041819_612976_25675A5D 
X-CRM114-Status: GOOD (  22.92  )
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
Cc: barebox@lists.infradead.org, ejo@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: stm32: add support for PHYTEC phyCORE stm32mp1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Cc += Steffen

On 23.02.22 13:06, Sascha Hauer wrote:
> On Wed, Feb 23, 2022 at 12:10:36PM +0100, Ahmad Fatoum wrote:
>> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> +/ {
>> +	model = "PHYTEC phyCORE-STM32MP1-3 SOM";
>> +	compatible = "phytec,phycore-stm32mp1-3", "st,stm32mp157";
>> +
>> +	chosen {
>> +		environment-sd {
>> +			compatible = "barebox,environment";
>> +			device-path = &sdmmc1, "partname:barebox-environment";
>> +			status = "disabled";
>> +		};
>> +
>> +		environment-emmc {
>> +			compatible = "barebox,environment";
>> +			device-path = &sdmmc2, "partname:barebox-environment";
> 
> I don't see any partition description for sdmmc1/2. Does the environment
> work?

The other STM32MP1 boards do likewise, as barebox is booted from a GPT
partition (named SSBL), the barebox-environment is also in a GPT-partition
that is referenced here by name.

>> +&i2c4 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c4_pins_a>;
>> +	i2c-scl-rising-time-ns = <185>;
>> +	i2c-scl-falling-time-ns = <20>;
>> +	status = "okay";
>> +	/delete-property/dmas;
>> +	/delete-property/dma-names;
>> +
>> +	pmic: stpmic@33 {
>> +		compatible = "st,stpmic1";
>> +		reg = <0x33>;
>> +		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
>> +		interrupt-controller;
>> +		#interrupt-cells = <2>;
>> +		status = "okay";
> 
> Could be dropped.
> 
>> +&qspi {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
>> +	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
> 
> Why is the reg property overwritten?
> 
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
> 
> This is already in the SoC dtsi.
> 
>> +	status = "disabled";
> 
> Is this needed? Isn't the qpsi controller disabled in the SoC dtsi
> anyway? There are several more nodes in this files that are explicitly
> disabled.

I will just drop the nodes we don't use. We don't yet have a QSPI
driver.

> 
>> +
>> +	flash0: n25q128@0 {
>> +		compatible = "micron,n25q128a13", "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-rx-bus-width = <4>;
>> +		spi-max-frequency = <50000000>;
>> +		m25p,fast-read;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +	};
>> +};
>> +
>> +&sdmmc1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdmmc1_b4_pins_a>;
>> +	disable-wp;
>> +	st,neg-edge;
>> +	bus-width = <4>;
>> +	max-frequency = <10000000>;
> 
> This is very low. Is this intended?

Perhaps Enrico or Steffen know more?

> 
>> +	vmmc-supply = <&v3v3>;
>> +	status = "disabled";
>> +};
>> +
>> +&sdmmc2 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
>> +	non-removable;
>> +	no-sd;
>> +	no-sdio;
>> +	st,neg-edge;
>> +	bus-width = <8>;
>> +	vmmc-supply = <&v3v3>;
>> +	vqmmc-supply = <&v3v3>;
>> +	mmc-ddr-3_3v;
>> +	status = "disabled";
>> +};
>> +
>> +&sram {
>> +	dma_pool: dma_pool@0 {
>> +		reg = <0x50000 0x10000>;
> 
> Should probably be dma_pool@50000

Will just remove it.

Thanks for the review,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


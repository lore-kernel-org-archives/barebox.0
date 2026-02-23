Delivery-date: Mon, 23 Feb 2026 11:58:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTdw-004ntO-30
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:58:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTdx-0003fX-46
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:58:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TdOlIAQl58AjwnybBExRk96WtL7c5IOjCBK6rllBDyI=; b=N3qR4RbPUS66vVbKAG/fs1R27y
	70rFwY0yUMIsQ+1tkg/XFmov3QVA90P0PVVEZG7emqBkFyXrLV8MKqBYYVh1Jv9GNuYAGzgMFSshQ
	77hVCur+95HCOn1Ym6rMekgdF8I7qxvaCgy3eXxDV0MjMwnk/zw8dUiX9eQK8Wos9kr2Q4GiU0Mxx
	RHuvLOc8H4kIGwKVUwZwqUzDKyVBpihq3PtrU0m3cbpc5s10nC5y6YbzJIId4ZKqv5iqDEMR2eW53
	Rqz4lB0eLbmSG+igsLoLyZzrRIqeswd1GfN3iaTCTpiN02eoQ6llfBxwdDKAQPTSsquOzKCHxxK4O
	6GAN1KqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTdZ-000000006rh-3kW9;
	Mon, 23 Feb 2026 10:58:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTdW-000000006qm-3zOL
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:58:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuTdV-0003ZQ-HG; Mon, 23 Feb 2026 11:57:57 +0100
Message-ID: <5b4c8e38-aae3-44c4-a4ef-648d5b6dc5ff@pengutronix.de>
Date: Mon, 23 Feb 2026 11:57:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Giandomenico Rossi <rossi@amelchem.com>, barebox@lists.infradead.org
References: <20260213191247.1671231-1-rossi@amelchem.com>
 <20260213191247.1671231-4-rossi@amelchem.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260213191247.1671231-4-rossi@amelchem.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025758_994993_979340C5 
X-CRM114-Status: GOOD (  21.08  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 3/4] dt-bindings: display: panel: add Ilitek ILI9488
 panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/13/26 8:12 PM, Giandomenico Rossi wrote:
> Add device tree binding documentation for TFT LCD panels based on
> the Ilitek ILI9488 controller connected via MIPI DBI Type-C Option 1
> over SPI.
> 
> The binding documents panels such as the WF35-320480UD operating in
> RGB666 (18-bit) pixel format and describes required GPIOs, power
> supply, optional backlight and panel timing.
> 
> A 'rotation' property is provided to configure the display
> orientation.
> 
> Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>

This patch needs to go into Documentation/devicetree/bindings/ as
dts/Bindings are exclusively the upstream Linux bindings.

Maybe Sascha can do this when applying?

Cheers,
Ahmad

> ---
>  .../display/panel/panel-ilitek-ili9488.yaml   | 120 ++++++++++++++++++
>  1 file changed, 120 insertions(+)
>  create mode 100644 dts/Bindings/display/panel/panel-ilitek-ili9488.yaml
> 
> diff --git a/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml b/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml
> new file mode 100644
> index 0000000000..ceb14a5c25
> --- /dev/null
> +++ b/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml
> @@ -0,0 +1,120 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/video/panel-ilitek-ili9488.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Ilitek ILI9488 TFT LCD Panel (MIPI DBI SPI)
> +
> +maintainers:
> +  - Giandomenico Rossi <rossi@amelchem.com>
> +
> +description: |
> +  Ilitek ILI9488 TFT LCD controller connected over MIPI DBI Type C
> +  Option 1 using an SPI bus.
> +
> +  Specific panels such as the Winstar WF35-320480UD may provide a
> +  vendor-specific compatible string followed by "ilitek,ili9488"
> +  as fallback.
> +
> +  The controller supports RGB666 (18-bit) pixel format over SPI.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: winstar,wf35-320480ud
> +          - const: ilitek,ili9488
> +      - const: ilitek,ili9488
> +
> +  reg:
> +    description: SPI chip select number
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 48000000
> +    description: Maximum SPI clock frequency in Hz
> +
> +  reset-gpios:
> +    description: Optional hardware reset GPIO
> +    maxItems: 1
> +
> +  power-supply:
> +    description: Regulator supplying panel power
> +
> +  backlight:
> +    description: Phandle to a backlight device
> +
> +  rotation:
> +    description: |
> +      Display rotation in degrees clockwise.
> +
> +      The driver uses this value to configure the ILI9488
> +      Memory Access Control (MADCTL) register.
> +    enum: [0, 90, 180, 270]
> +    default: 0
> +
> +  panel-timing:
> +    description: |
> +      Panel timing description.
> +
> +      For MIPI DBI panels the pixel clock and porch values are ignored,
> +      but xactive/yactive must be provided.
> +    type: object
> +    properties:
> +      clock-frequency:
> +        description: Dummy pixel clock (may be 0)
> +      hactive:
> +        description: Horizontal resolution in pixels
> +      vactive:
> +        description: Vertical resolution in pixels
> +      hfront-porch:
> +        default: 0
> +      hback-porch:
> +        default: 0
> +      hsync-len:
> +        default: 0
> +      vfront-porch:
> +        default: 0
> +      vback-porch:
> +        default: 0
> +      vsync-len:
> +        default: 0
> +
> +    required:
> +      - hactive
> +      - vactive
> +
> +required:
> +  - compatible
> +  - reg
> +  - panel-timing
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        display@0 {
> +            compatible = "winstar,wf35-320480ud", "ilitek,ili9488";
> +            reg = <0>;
> +            spi-max-frequency = <40000000>;
> +
> +            reset-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> +
> +            power-supply = <&vcc_3v3>;
> +            backlight = <&backlight>;
> +
> +            rotation = <90>;
> +
> +            panel-timing {
> +                hactive = <480>;
> +                vactive = <320>;
> +                clock-frequency = <0>;
> +            };
> +        };
> +    };

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




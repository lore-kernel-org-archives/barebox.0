Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YPpJZ-0004kW-1S
 for barebox@lists.infradead.org; Mon, 23 Feb 2015 09:28:33 +0000
Received: from ptx.hi.pengutronix.de
 ([2001:67c:670:100:1d::c0] helo=localhost ident=jlu)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YPpJB-0000HT-Rd
 for barebox@lists.infradead.org; Mon, 23 Feb 2015 10:28:09 +0100
Message-ID: <1424683689.29479.3.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 23 Feb 2015 10:28:09 +0100
In-Reply-To: <1424682905-12451-4-git-send-email-s.trumtrar@pengutronix.de>
References: <1424682905-12451-1-git-send-email-s.trumtrar@pengutronix.de>
 <1424682905-12451-4-git-send-email-s.trumtrar@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/3] ARM: socfpga: add Altera SoCFPGA Development Kit
 support
To: barebox@lists.infradead.org

On Mo, 2015-02-23 at 10:15 +0100, Steffen Trumtrar wrote:
> --- /dev/null
> +++ b/arch/arm/boards/altera-socdk/board.c
> @@ -0,0 +1,38 @@

> +static int ksz9021rn_phy_fixup(struct phy_device *dev)
> +{
> +	phy_write(dev, 0x09, 0x0f00);
> +
> +	/* rx skew */
> +	phy_write(dev, 0x0b, 0x8105);
> +	phy_write(dev, 0x0c, 0x0000);
> +
> +	/* clk/ctrl skew */
> +	phy_write(dev, 0x0b, 0x8104);
> +	phy_write(dev, 0x0c, 0xa0d0);
> +
> +	return 0;
> +}
> +
> +static int socfpga_console_init(void)
> +{
> +	if (!of_machine_is_compatible("altr,socdk"))
> +		return 0;
> +
> +	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> +					   ksz9021rn_phy_fixup);
> +
> +	return 0;
> +}
> +console_initcall(socfpga_console_init);

> --- /dev/null
> +++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts

> +&gmac1 {
> +	status = "okay";
> +	phy-mode = "rgmii";
> +
> +	rxd0-skew-ps = <0>;
> +	rxd1-skew-ps = <0>;
> +	rxd2-skew-ps = <0>;
> +	rxd3-skew-ps = <0>;
> +	txen-skew-ps = <0>;
> +	txc-skew-ps = <2600>;
> +	rxdv-skew-ps = <0>;
> +	rxc-skew-ps = <2000>;
> +};

It seems that with the DT-based configuration of the skew values, the
phy_fixup in board.c is not necessary.
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

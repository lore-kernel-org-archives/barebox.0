Delivery-date: Mon, 05 Jun 2023 14:59:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q69nt-00BnBA-49
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 14:59:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q69nq-0008Sg-I6
	for lore@pengutronix.de; Mon, 05 Jun 2023 14:59:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6XhOP42sRr4gQb9NgdMoBWVv4SA4+jGvGUpDDRs0s7k=; b=OjIjp5eEQ2cN5/wQFNXoaKc+vf
	upJO7zvcfoc146RcHLPU3HUKuVTcesOLSxnPmuCC/kLZ/7JK8Xg1oARIXD98BpcDUdsVHFU25d4eL
	+YSNaJs4hUobkwMW20xKqj52E40Zn/JYhKKOBGogaM8V4jbME5FKljWhvHJPB4sTTmp7Y/1vSaZu1
	oQGxuK2ryU6tghrDxjsD+Vxf9qBGpWSPCV304sLdWaGevpq6jDU8XBVP+yr4Q0ZO39TnbJZ/KYbah
	d9GwxZZJ+KYjfbTAARteIQtPGrn+jL4ClGWPOzysvQLUk2lkGG2M0gBrQVlU739acUB31aryn+CXo
	nnEoYK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q69md-00FX3m-21;
	Mon, 05 Jun 2023 12:58:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q69mZ-00FX1a-1e
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 12:58:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mW-0008HU-Ue; Mon, 05 Jun 2023 14:57:56 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mW-005HEv-9I; Mon, 05 Jun 2023 14:57:56 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mV-00FNXH-Am; Mon, 05 Jun 2023 14:57:55 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon,  5 Jun 2023 14:57:48 +0200
Message-Id: <20230605125748.3665121-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605125748.3665121-1-rhi@pengutronix.de>
References: <20230605125748.3665121-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_055759_545330_3B99B388 
X-CRM114-Status: GOOD (  21.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] net: phy: dp83867: respect ti,clk-output-sel DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On some boards it is necessary to configure the PHY to provide the
correct clock to the FEC.

This ports the rest of the following two kernel commits:

    | commit 9708fb630d19ee51ae3aeb3a533e3010da0e8570
    | Author: Wadim Egorov <w.egorov@phytec.de>
    | Date:   Mi 2018-02-14 17:07:11
    |
    |     net: phy: dp83867: Add binding for the CLK_OUT pin muxing option
    |
    |     The DP83867 has a muxing option for the CLK_OUT pin. It is possible
    |     to set CLK_OUT for different channels.
    |     Create a binding to select a specific clock for CLK_OUT pin.
    |
    |     Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
    |     Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
    |     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
    |     Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
    |     Signed-off-by: David S. Miller <davem@davemloft.net>
    |
    | commit 13c83cf8af0dcc6103982b4dc0b70826f0b54f21
    | Author: Trent Piepho <tpiepho@impinj.com>
    | Date:   Mi 2019-05-22 18:43:22
    |
    |     net: phy: dp83867: Add ability to disable output clock
    |
    |     Generally, the output clock pin is only used for testing and only serves
    |     as a source of RF noise after this.  It could be used to daisy-chain
    |     PHYs, but this is uncommon.  Since the PHY can disable the output, make
    |     doing so an option.  I do this by adding another enumeration to the
    |     allowed values of ti,clk-output-sel.
    |
    |     The code was not using the value DP83867_CLK_O_SEL_REF_CLK as one might
    |     expect: to select the REF_CLK as the output.  Rather it meant "keep
    |     clock output setting as is", which, depending on PHY strapping, might
    |     not be outputting REF_CLK.
    |
    |     Change this so DP83867_CLK_O_SEL_REF_CLK means enable REF_CLK output.
    |     Omitting the property will leave the setting as is (which was the
    |     previous behavior in this case).
    |
    |     Out of range values were silently converted into
    |     DP83867_CLK_O_SEL_REF_CLK.  Change this so they generate an error.
    |
    |     Cc: Andrew Lunn <andrew@lunn.ch>
    |     Cc: Florian Fainelli <f.fainelli@gmail.com>
    |     Cc: Heiner Kallweit <hkallweit1@gmail.com>
    |     Signed-off-by: Trent Piepho <tpiepho@impinj.com>
    |     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
    |     Signed-off-by: David S. Miller <davem@davemloft.net>

Link: https://git.kernel.org/torvalds/c/9708fb630d19ee51ae3a
Link: https://git.kernel.org/torvalds/c/13c83cf8af0dcc610398
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
v1 -> v2:
 * correctly use indirect write instead of direct write with the newly
   introduced helper function

PATCH v1: https://lore.barebox.org/barebox/20230601105710.hsslzy2s25pzcta3@pengutronix.de

 drivers/net/phy/dp83867.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 375dcd075308..d8109172dfa5 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -96,6 +96,9 @@
 
 #define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX	0x0
 #define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN	0x1f
+#define DP83867_IO_MUX_CFG_CLK_O_DISABLE	BIT(6)
+#define DP83867_IO_MUX_CFG_CLK_O_SEL_MASK	(0x1f << 8)
+#define DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT	8
 
 /* CFG4 bits */
 #define DP83867_CFG4_PORT_MIRROR_EN		BIT(0)
@@ -113,6 +116,8 @@ struct dp83867_private {
 	int io_impedance;
 	int port_mirroring;
 	bool rxctrl_strap_quirk;
+	bool set_clk_output;
+	u32 clk_output_sel;
 };
 
 static int dp83867_read_status(struct phy_device *phydev)
@@ -174,6 +179,22 @@ static int dp83867_of_init(struct phy_device *phydev)
 	dp83867->io_impedance = -EINVAL;
 
 	/* Optional configuration */
+	ret = of_property_read_u32(of_node, "ti,clk-output-sel",
+				   &dp83867->clk_output_sel);
+	/* If not set, keep default */
+	if (!ret) {
+		dp83867->set_clk_output = true;
+		/* Valid values are 0 to DP83867_CLK_O_SEL_REF_CLK or
+		 * DP83867_CLK_O_SEL_OFF.
+		 */
+		if (dp83867->clk_output_sel > DP83867_CLK_O_SEL_REF_CLK &&
+		    dp83867->clk_output_sel != DP83867_CLK_O_SEL_OFF) {
+			dev_err(&phydev->dev, "ti,clk-output-sel value %u out of range\n",
+				   dp83867->clk_output_sel);
+			return -EINVAL;
+		}
+	}
+
 	if (of_property_read_bool(of_node, "ti,max-output-impedance"))
 		dp83867->io_impedance = DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX;
 	else if (of_property_read_bool(of_node, "ti,min-output-impedance"))
@@ -308,6 +329,22 @@ static int dp83867_config_init(struct phy_device *phydev)
 	if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
 		dp83867_config_port_mirroring(phydev);
 
+	/* Clock output selection if muxing property is set */
+	if (dp83867->set_clk_output) {
+		u16 mask = DP83867_IO_MUX_CFG_CLK_O_DISABLE;
+
+		if (dp83867->clk_output_sel == DP83867_CLK_O_SEL_OFF) {
+			val = DP83867_IO_MUX_CFG_CLK_O_DISABLE;
+		} else {
+			mask |= DP83867_IO_MUX_CFG_CLK_O_SEL_MASK;
+			val = dp83867->clk_output_sel <<
+				DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
+		}
+
+		phy_modify_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
+				DP83867_DEVADDR, mask, val);
+	}
+
 	return 0;
 }
 
-- 
2.39.2




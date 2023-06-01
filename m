Delivery-date: Thu, 01 Jun 2023 12:10:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4fFy-005f0E-Ad
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 12:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4fFv-0003an-NZ
	for lore@pengutronix.de; Thu, 01 Jun 2023 12:10:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fYCscFRUAi9qH5fTGwziARAMxeKwG934Tk+5jC9FWXE=; b=XpgXW2Dnhn/oN2TaVJNEssgT6T
	FWvxmbNmkVq9lB/KxNR5UgHKQ9azCU6DPuKEg1r3SNtGoYLet32ZHuPUahSzfH4lrKCT7arXVf7a2
	1+WaTNHffZqg2DGjoR9R6hMSyTU+C85+pfarRXWyWbRcWeU8FuozKdGM1nAUgtreLW6ujRGi/S/eu
	ZuvcGCJz0LJjrEFyeCqH3clY48hdxEV5muuX38ipeNrLSKR1AGtYNP8DD/3arN/+PdWR3ImXHRpcc
	l6IPJ19TauIoX4smlji8Q5g121g3kUE+rQVZV3uOcRqTFTh6I2iwIngoQoaUclTccj+Ka7SR8DQFA
	3QMlJAMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4fEj-002qgG-0Q;
	Thu, 01 Jun 2023 10:08:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4fEg-002qcp-2G
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 10:08:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q4fEb-0003MS-LY; Thu, 01 Jun 2023 12:08:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q4fEb-004K5b-0P; Thu, 01 Jun 2023 12:08:45 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q4fEa-001U8I-8F; Thu, 01 Jun 2023 12:08:44 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu,  1 Jun 2023 12:08:23 +0200
Message-Id: <20230601100823.354049-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_030850_735287_2C19AF90 
X-CRM114-Status: GOOD (  20.70  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: phy: dp83867: respect ti,clk-output-sel DT property
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
 drivers/net/phy/dp83867.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 375dcd075308..0bc19dd11270 100644
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
@@ -308,6 +329,21 @@ static int dp83867_config_init(struct phy_device *phydev)
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
+			      DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
+		}
+
+		phy_modify(phydev, DP83867_IO_MUX_CFG, mask, val);
+	}
+
 	return 0;
 }
 
-- 
2.39.2




Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.elemaster.it ([91.142.71.235])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPPpo-0003Kd-W3
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 12:43:21 +0000
From: "Manni Stefano" <stefano.manni@eletechsrl.it>
Date: Mon, 5 Oct 2020 14:43:15 +0200
Message-ID: <005d01d69b15$180b4aa0$4821dfe0$@eletechsrl.it>
MIME-Version: 1.0
Content-Language: it
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx6ul: fec: stuck on ifup after ifdown
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aurelio Colosimo <aurelio@aureliocolosimo.it>

Hi,

on a custom board based on a i.MX6UL using barebox v2020.08.1 'ifup eth0'
invoked after 'ifdown eth0' stucks forever.

Have you ever experienced something similar?

Snippet from my device tree:

        &fec1 {
                pinctrl-names = "default";
                pinctrl-0 = <&pinctrl_enet1>;
                phy-mode = "rmii";
                phy-handle = <&ethphy1>;
                status = "okay";
                phy-reset-gpios = <&gpio1 23 GPIO_ACTIVE_LOW>;
                phy-reset-duration = <1>;

                mdio {
                        #address-cells = <1>;
                        #size-cells = <0>;

                        clock-frequency = <5000000>;
                        ethphy1: ethernet-phy@1 {
                                compatible = "ethernet-phy-ieee802.3-c22";
                                reg = <0>;
                                max-speed = <100>;
                                interrupt-parent = <&gpio1>;
                                interrupts = <22 IRQ_TYPE_LEVEL_LOW>;
                        };
                };
        };

        pinctrl_enet1: enet1grp {
                fsl,pins = <
                        MX6UL_PAD_GPIO1_IO06__ENET1_MDIO        0x1b0b0
                        MX6UL_PAD_GPIO1_IO07__ENET1_MDC         0x1b0b0
                        MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00 0x1b0b0
                        MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01 0x1b0b0
                        MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN      0x1b0b0
                        MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1  0x4001b031
                        MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00 0x1b0b0
                        MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01 0x1b0b0
                        MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN      0x1b0b0
                        MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER      0x1b0b0
                        MX6UL_PAD_UART2_RTS_B__GPIO1_IO23       0x1b0b0
                        MX6UL_PAD_UART2_CTS_B__GPIO1_IO22       0x1b0b0
                >;
        };

Best,
Stefano


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

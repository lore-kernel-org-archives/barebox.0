Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x234.google.com ([2607:f8b0:4002:c01::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wz0YA-0005gf-Vs
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 09:28:31 +0000
Received: by mail-yh0-f52.google.com with SMTP id a41so4791904yho.39
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 02:28:09 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 23 Jun 2014 11:28:09 +0200
Message-ID: <CAOpc7mF_bAvNVebmS7F2ow4fj6peFgjxyY=1F-NQyvfb88XqHg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: SFI NOR sizes totally off ?!?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Seems like "ls -l" is right, but "devinfo" is wrong:

barebox:/ ls -l /dev/m25p0
crw-------   67108864 /dev/m25p0
barebox:/ devinfo m25p0
Parameters:
  size: 5468012149590870304
  erasesize: 4096
  writesize: 1
  oobsize: 0
barebox:/ of_dump /soc/aips-bus@02000000/spba-bus@02000000/ecspi@02010000
ecspi@02010000 {
        #address-cells = <0x1>;
        #size-cells = <0x0>;
        compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
        reg = <0x2010000 0x4000>;
        interrupts = <0x0 0x21 0x4>;
        clocks = <0x2 0x72 0x2 0x72>;
        clock-names = "ipg", "per";
        dmas = <0x4 0x7 0x7 0x1 0x4 0x8 0x7 0x2>;
        dma-names = "rx", "tx";
        status = "okay";
        pinctrl-names = "default";
        pinctrl-0 = <0x5>;
        fsl,spi-num-chipselects = <0x3>;
        cs-gpios = <0x6 0x18 0x0 0x6 0x19 0x0 0x6 0x1a 0x0>;
        spiflash@0 {
                #address-cells = <0x1>;
                #size-cells = <0x1>;
                compatible = "n25q512ax3", "m25p80";
                spi-max-frequency = <0x989680>;
                reg = <0x0>;
        };
};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

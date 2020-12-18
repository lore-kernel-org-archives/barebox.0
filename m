Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqBnH-0000Sa-Kk
 for barebox@lists.infradead.org; Fri, 18 Dec 2020 09:11:24 +0000
Received: by mail-wm1-x332.google.com with SMTP id v14so1596025wml.1
 for <barebox@lists.infradead.org>; Fri, 18 Dec 2020 01:11:22 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?6YOR5bCP5Yab?= <jameszxj@gmail.com>
Date: Fri, 18 Dec 2020 17:11:11 +0800
Message-ID: <CADbCKyKLBG=eSoKeqnvvGMCGdkpwNo_xGvH1D1xHHTgk0tMU1Q@mail.gmail.com>
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
Subject: No oob scheme defined for oobsize 224 on imx6ull board
To: barebox@lists.infradead.org

Hi, all
    I am trying to run barebox on my i.mx6ull board.  I inherit from
nxp-imx6ull-evk. When I added nand flash support, system crashed. I
found that the pointer "chip->legacy.set_features" and
"chip->legacy.get_features" in nand_mxs.c was NULL.
I replaced it with nand_set_features() and nand_get_features().
Barebox didn't crash again, but I get the errors:
        nand_base: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
        nand_base: Micron MT29F4G08ABAEAWP
        nand_base: 512 MiB, SLC, erase size: 256 KiB, page size: 4096,
OOB size: 224
        WARNING: at drivers/mtd/nand/nand_base.c:5591/nand_scan_tail()!
        WARNING: No oob scheme defined for oobsize 224
        mxs_nand 1806000.nand-controller@1806000.of: probe failed:
Invalid argument

dts:
&gpmi {
pinctrl-names = "default";
pinctrl-0 = <&pinctrl_gpmi_nand>;
nand-on-flash-bbt;
status = "okay";
};

Did I miss something?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

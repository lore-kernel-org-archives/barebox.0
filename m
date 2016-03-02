Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab9Jn-0002EO-CJ
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:08:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ab9JR-0007tj-FJ
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 17:07:45 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ab9JR-0000tG-3g
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 17:07:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Mar 2016 17:07:36 +0100
Message-Id: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX6: Karo: Update TX6 support
To: Barebox List <barebox@lists.infradead.org>

This series has several improvements for the Karo TX6 module family.
With this we now support the i.MX6q variants and optionally eMMC
instead of only NAND. Also PMIC support for more variants is added.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      ARM: i.MX: karo-tx6: Factor out a common tx6 dtsi file
      ARM: i.MX: karo-tx6: Support eMMC board variants
      ARM: i.MX: karo-tx6: Add support for the i.MX6q 1GiB variant
      ARM: i.MX: karo-tx6: Generalize 801x support
      ARM: i.MX: karo-tx6: Setup other PMICs
      ARM: i.MX: karo-tx6: disable power button
      ARM: i.MX: karo-tx6: add pr_fmt

 arch/arm/boards/karo-tx6x/Makefile                 |   1 +
 arch/arm/boards/karo-tx6x/board.c                  | 197 +++++++--------------
 .../boards/karo-tx6x/flash-header-tx6q-1g.imxcfg   | 174 ++++++++++++++++++
 arch/arm/boards/karo-tx6x/lowlevel.c               |  25 ++-
 arch/arm/boards/karo-tx6x/pmic-ltc3676.c           | 149 ++++++++++++++++
 arch/arm/boards/karo-tx6x/pmic-rn5t567.c           | 154 ++++++++++++++++
 arch/arm/boards/karo-tx6x/pmic-rn5t618.c           | 152 ++++++++++++++++
 arch/arm/boards/karo-tx6x/pmic.h                   |   8 +
 arch/arm/dts/Makefile                              |   3 +-
 arch/arm/dts/imx6dl-tx6u.dts                       |  12 ++
 arch/arm/dts/imx6q-tx6q.dts                        |  12 ++
 .../{imx6dl-tx6u-801x.dts => imx6qdl-tx6x.dtsi}    |  51 ++++--
 images/Makefile.imx                                |   5 +
 13 files changed, 797 insertions(+), 146 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
 create mode 100644 arch/arm/boards/karo-tx6x/pmic-ltc3676.c
 create mode 100644 arch/arm/boards/karo-tx6x/pmic-rn5t567.c
 create mode 100644 arch/arm/boards/karo-tx6x/pmic-rn5t618.c
 create mode 100644 arch/arm/boards/karo-tx6x/pmic.h
 create mode 100644 arch/arm/dts/imx6dl-tx6u.dts
 create mode 100644 arch/arm/dts/imx6q-tx6q.dts
 rename arch/arm/dts/{imx6dl-tx6u-801x.dts => imx6qdl-tx6x.dtsi} (63%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

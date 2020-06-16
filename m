Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl4W0-0006ot-57
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 05:52:09 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jun 2020 07:52:00 +0200
Message-Id: <20200616055202.9308-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v2 0/2] transfer Protonic barebox development to the mainline 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, David Jander <david@protonic.nl>

This is initial patch set to transfer Protonic barebox development to the mainline.
Most important changes of this patches are in
arch/arm/boards/protonic-imx6 folder. The devicetrees are mostly
unchanged, since they will be replaced by kernel version soon. 

changes v2:
- use imx6_cpu_lowlevel_init instead of arm_cpu_lowlevel_init
- use imx6q_barebox_entry instead of barebox_arm_entry
- remove debug_ll. Currently it is not needed
- remove part of pinmuxing from DCD files

Oleksij Rempel (2):
  ARM: dts: imx6: add Protonic boards
  ARM: add imx6 based Protonic boads

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/protonic-imx6/Makefile        |   1 +
 .../boards/protonic-imx6/ddr3-defines.imxcfg  | 350 +++++++++
 .../protonic-imx6/flash-header-alti6p.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-lanmcu.imxcfg  | 115 +++
 .../protonic-imx6/flash-header-plybas.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-plym2m.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-prti6g.imxcfg  |  81 +++
 .../protonic-imx6/flash-header-prti6q.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-prtmvt.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-prtrvt.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-prtvt7.imxcfg  | 115 +++
 .../protonic-imx6/flash-header-prtwd2.imxcfg  | 229 ++++++
 .../protonic-imx6/flash-header-prtwd3.imxcfg  | 280 ++++++++
 .../protonic-imx6/flash-header-victgo.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-vicut1.imxcfg  | 123 ++++
 .../protonic-imx6/flash-header-vicut1q.imxcfg | 127 ++++
 .../protonic-imx6/flash-header-vicutp.imxcfg  | 174 +++++
 arch/arm/boards/protonic-imx6/lowlevel.c      | 191 +++++
 .../protonic-imx6/lpddr2-defines.imxcfg       | 384 ++++++++++
 .../boards/protonic-imx6/padsetup-dl.imxcfg   |  70 ++
 .../boards/protonic-imx6/padsetup-q.imxcfg    |  69 ++
 .../boards/protonic-imx6/padsetup-ul.imxcfg   |  42 ++
 arch/arm/dts/Makefile                         |  16 +
 arch/arm/dts/imx6dl-alti6p.dts                | 118 +++
 arch/arm/dts/imx6dl-lanmcu.dts                | 434 +++++++++++
 arch/arm/dts/imx6dl-plybas.dts                | 186 +++++
 arch/arm/dts/imx6dl-plym2m.dts                | 132 ++++
 arch/arm/dts/imx6dl-prtmvt.dts                | 164 +++++
 arch/arm/dts/imx6dl-prtrvt.dts                | 182 +++++
 arch/arm/dts/imx6dl-prtvt7.dts                | 472 ++++++++++++
 arch/arm/dts/imx6dl-victgo.dts                | 145 ++++
 arch/arm/dts/imx6dl-vicut1.dts                |  51 ++
 arch/arm/dts/imx6q-prti6q.dts                 | 554 ++++++++++++++
 arch/arm/dts/imx6q-prtwd2.dts                 | 188 +++++
 arch/arm/dts/imx6q-vicut1.dts                 |  52 ++
 arch/arm/dts/imx6qdl-prti6q.dtsi              | 174 +++++
 arch/arm/dts/imx6qdl-vicut1.dtsi              | 208 ++++++
 arch/arm/dts/imx6qp-prtwd3.dts                | 675 ++++++++++++++++++
 arch/arm/dts/imx6qp-vicutp.dts                |  52 ++
 arch/arm/dts/imx6ul-prti6g.dts                |  81 +++
 arch/arm/dts/imx6ul-prti6g.dtsi               | 330 +++++++++
 arch/arm/mach-imx/Kconfig                     |   6 +
 images/Makefile.imx                           |  30 +
 44 files changed, 7463 insertions(+)
 create mode 100644 arch/arm/boards/protonic-imx6/Makefile
 create mode 100644 arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/lowlevel.c
 create mode 100644 arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-alti6p.dts
 create mode 100644 arch/arm/dts/imx6dl-lanmcu.dts
 create mode 100644 arch/arm/dts/imx6dl-plybas.dts
 create mode 100644 arch/arm/dts/imx6dl-plym2m.dts
 create mode 100644 arch/arm/dts/imx6dl-prtmvt.dts
 create mode 100644 arch/arm/dts/imx6dl-prtrvt.dts
 create mode 100644 arch/arm/dts/imx6dl-prtvt7.dts
 create mode 100644 arch/arm/dts/imx6dl-victgo.dts
 create mode 100644 arch/arm/dts/imx6dl-vicut1.dts
 create mode 100644 arch/arm/dts/imx6q-prti6q.dts
 create mode 100644 arch/arm/dts/imx6q-prtwd2.dts
 create mode 100644 arch/arm/dts/imx6q-vicut1.dts
 create mode 100644 arch/arm/dts/imx6qdl-prti6q.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-vicut1.dtsi
 create mode 100644 arch/arm/dts/imx6qp-prtwd3.dts
 create mode 100644 arch/arm/dts/imx6qp-vicutp.dts
 create mode 100644 arch/arm/dts/imx6ul-prti6g.dts
 create mode 100644 arch/arm/dts/imx6ul-prti6g.dtsi

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

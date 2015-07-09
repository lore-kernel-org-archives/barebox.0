Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CH-0000dN-MJ
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZD4Jw-0006a2-MZ
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:28 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1ZD6Bt-00035X-T9
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 09:24:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:04 +0200
Message-Id: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Video support for EfikaSB
To: Barebox List <barebox@lists.infradead.org>

This series adds video support to the EfikaSB. Several infrastructure
additions are necessary for this. First the of_graph binding is introduced
to barebox which is necessary to describe the topology of the video
hardware in the device tree. With this we can describe the various
video encoders intern and extern to the SoC. Next we introduce the video
pipeline concept (VPL). This makes it possible to chain together the
different video encoders. It's possible to throw an ioctl into one
end of the chain and each encoder is responsible to handle the ioctl
and to pass it on to the next entitity in the chain. Support for the
MTL017 LVDS encoder found in the EfikaSB and support for simple panels
make this series complete.

Sascha

----------------------------------------------------------------
Sascha Hauer (13):
      of: base: implement of_get_next_child
      of: import of_graph functions
      of_graph: add of_graph_port_is_available
      ARM: i.MX51 Efikasb: Disable backlight earlier
      ARM: i.MX51 Efikasb: make more space for barebox
      ARM: i.MX51 Efikasb: update device tree
      video: Add Video Pipeline (VPL) support
      video: Add MTL017 LVDS encoder support
      video: Add missing prototype for display_timings_release
      video: ipuv3: remove unused variable
      video: ipuv3: Replace ipu_output with VPL
      video: ipuv3: match ipu_di_signal_cfg's clk_pol with its description
      video: Add simple-panel support

 arch/arm/boards/efika-mx-smartbook/board.c |   3 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts     | 130 +++++++++-----
 drivers/of/base.c                          | 206 +++++++++++++++++++++
 drivers/video/Kconfig                      |  21 +++
 drivers/video/Makefile                     |   3 +
 drivers/video/imx-ipu-v3/Kconfig           |   1 +
 drivers/video/imx-ipu-v3/imx-hdmi.c        |  93 +++++-----
 drivers/video/imx-ipu-v3/imx-ipu-v3.h      |  25 +--
 drivers/video/imx-ipu-v3/imx-ldb.c         | 116 +++++++++---
 drivers/video/imx-ipu-v3/ipu-di.c          |   2 +-
 drivers/video/imx-ipu-v3/ipufb.c           | 144 ++++++---------
 drivers/video/mtl017.c                     | 280 +++++++++++++++++++++++++++++
 drivers/video/simple-panel.c               | 160 +++++++++++++++++
 drivers/video/vpl.c                        | 115 ++++++++++++
 include/fb.h                               |   2 +
 include/of.h                               |   8 +
 include/of_graph.h                         |  50 ++++++
 include/video/vpl.h                        |  46 +++++
 18 files changed, 1179 insertions(+), 226 deletions(-)
 create mode 100644 drivers/video/mtl017.c
 create mode 100644 drivers/video/simple-panel.c
 create mode 100644 drivers/video/vpl.c
 create mode 100644 include/of_graph.h
 create mode 100644 include/video/vpl.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

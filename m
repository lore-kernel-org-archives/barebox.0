Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRfFJ-0006AW-Pv
 for barebox@lists.infradead.org; Tue, 08 May 2012 07:54:10 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  8 May 2012 09:53:53 +0200
Message-Id: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/8] arm: mxs: add ocotp write support
To: barebox@lists.infradead.org

Because OCOTP write needs to change HCLK and VDDIO, some preparations are
needed before we can finally write to OCOTP. Tested with a custom board and a
TX28.

Wolfram Sang (8):
  arm: mxs: make get_hclk result useable for upcoming set_hclk
  arm: mxs: add imx_set_hclk
  arm: mxs: refactor access to power domain
  arm: mxs: add POWER_BASE for MX28, too
  arm: mxs: add functions to get/set vddio
  arm: mxs: refactor timeout routine for ocotp
  arm: mxs: use consistent naming for #defines for ocotp
  arm: mxs: add write support for ocotp

 arch/arm/mach-mxs/Kconfig                    |   11 ++
 arch/arm/mach-mxs/Makefile                   |    2 +-
 arch/arm/mach-mxs/include/mach/clock-imx23.h |    1 +
 arch/arm/mach-mxs/include/mach/clock-imx28.h |    1 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h  |    1 +
 arch/arm/mach-mxs/include/mach/power.h       |    8 ++
 arch/arm/mach-mxs/ocotp.c                    |  151 +++++++++++++++++++++++---
 arch/arm/mach-mxs/power.c                    |   84 ++++++++++++++
 arch/arm/mach-mxs/speed-imx23.c              |   26 ++++-
 arch/arm/mach-mxs/speed-imx28.c              |   26 ++++-
 arch/arm/mach-mxs/usb.c                      |   30 +----
 11 files changed, 291 insertions(+), 50 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/power.h
 create mode 100644 arch/arm/mach-mxs/power.c

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

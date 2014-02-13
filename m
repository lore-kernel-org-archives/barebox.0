Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE4pF-0006kj-1v
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 22:32:09 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 2521B18B425E
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 23:31:17 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 13 Feb 2014 23:32:44 +0100
Message-Id: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 0/7] Lowlevel Tegra3 support
To: barebox@lists.infradead.org

This is the very basic Tegra3 support. All highlevel things
like pinmux and other drivers still missing.

Allows to start the high performance CPU cluster on Tegra3
and start executing code there.

Lucas Stach (7):
  tegra: add -fno-jump-tables to lowlevel code
  tegra: add break to switch statements
  tegra: add lowlevel delay function
  tegra: add Tegra3 to relevant lowlevel functions
  tegra: add lowlevel DVC
  tegra: set AHB clock rate early
  tegra: add Tegra3 startup

 arch/arm/mach-tegra/Makefile                    |  4 +-
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 71 +++++++++++++++++++++++++
 arch/arm/mach-tegra/include/mach/lowlevel.h     | 68 ++++++++++++++++++++++-
 arch/arm/mach-tegra/include/mach/tegra20-car.h  | 12 +++++
 arch/arm/mach-tegra/include/mach/tegra30-car.h  | 31 +++++++++++
 arch/arm/mach-tegra/include/mach/tegra30-flow.h | 23 ++++++++
 arch/arm/mach-tegra/tegra_avp_init.c            | 46 +++++++++++++++-
 7 files changed, 251 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-car.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-flow.h

-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

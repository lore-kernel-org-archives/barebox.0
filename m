Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIsL-0000C3-1N
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:49:05 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDn0l9008353
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:49:02 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:18:28 +0530
Message-Id: <1293716908-5034-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 0/6] omap3: Support for silicon revisions
To: barebox@lists.infradead.org

This series makes enables auto-detection of silicon revision.
It also adds support for the OMAP3430 ES1.0 silicon as well.

It was tested for multiple boots on the OMAP3EVM (Rev G)
populated with ES3.1 silicon.

Sanjeev Premi (6):
  omap3: Add macros to extract hawkeye and version
  omap3: Detect cpu based on hawkeye
  omap3: Update method to detect si revision
  omap3: Add DPLL tables for silicon rev 1 and 2
  omap3: Define separate functions for DPLL configuration
  omap3: Select DPLL tables based on cpu revision

 arch/arm/mach-omap/include/mach/omap3-clock.h   |    8 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h |   16 +-
 arch/arm/mach-omap/include/mach/sys_info.h      |   26 +-
 arch/arm/mach-omap/omap3_clock.c                |  319 +++++++++++++++--------
 arch/arm/mach-omap/omap3_clock_core.S           |  200 ++++++++------
 arch/arm/mach-omap/omap3_generic.c              |   60 ++++-
 6 files changed, 399 insertions(+), 230 deletions(-)

-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

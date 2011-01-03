Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLO-0003RI-Qa
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:07 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EP2Ad023022
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:05 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:47 +0530
Message-Id: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 0/8] omap36x: Add basic support
To: barebox@lists.infradead.org

This series enables basic support of OMAP36XX in the
barebox sources.

First few commits are directly related to automatic
detection of the silicon, it's revisions and clock
configuration.

The last two patches are more of bugfixes, but relate
to/ manifest when adding support of OMAP36XX. Hence,
they were included in this series.

Sanjeev Premi (8):
  omap36x: Add support for dynamic detection
  omap36x: Detect silicon revisions
  omap36x: Define structure for PER DPLL
  omap36x: Add DPLL tables and functions to access them
  omap36x: Define per domain functions for DPLL configuration
  omap36x: Perform basic clock initialization
  omap3: Avoid sudden change to SYS_CLK divider
  omap3: Define GFX_DIV values for OMAP34xx and OMAP36xx

 arch/arm/mach-omap/include/mach/omap3-clock.h |   25 +++-
 arch/arm/mach-omap/include/mach/sys_info.h    |   14 +-
 arch/arm/mach-omap/omap3_clock.c              |  246 +++++++++++++++++++++++-
 arch/arm/mach-omap/omap3_clock_core.S         |   90 +++++++++-
 arch/arm/mach-omap/omap3_generic.c            |   65 +++++--
 5 files changed, 404 insertions(+), 36 deletions(-)

-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

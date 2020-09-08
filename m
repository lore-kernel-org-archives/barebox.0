Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFb77-0006U1-Bl
 for barebox@lists.infradead.org; Tue, 08 Sep 2020 10:44:38 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Tue, 8 Sep 2020 12:29:13 +0200
Message-Id: <1599560955-311228-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH 0/2] i.MX6ULL: set engine software for Secure Boot on HABv4 
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

The i.MX6ULL has no CAAM engine for Secure Boot on HABv4. This patch series
set the engine software for i.MX6ULL and for the PHYTEC boards PCL-063 with
i.MX6ULL.

Maik Otto (2):
  arch: arm: boards phytec: Split flash header for pcl063 with i.MX6Ul
    and i.MX6ULL
  arch: arm: mach-imx: Add habv4 config file for i.MX6ULL

 ...tec-pcl063-512mb.imxcfg => flash-header-phytec-pcl063-512mb.h} | 1 -
 .../phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg     | 3 +++
 ...63-256mb.imxcfg => flash-header-phytec-pcl063ull-256mb.imxcfg} | 2 +-
 .../phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg    | 3 +++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h                | 8 ++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h             | 4 ++++
 images/Makefile.imx                                               | 8 ++++----
 7 files changed, 23 insertions(+), 6 deletions(-)
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-512mb.imxcfg => flash-header-phytec-pcl063-512mb.h} (83%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-256mb.imxcfg => flash-header-phytec-pcl063ull-256mb.imxcfg} (82%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIqLa-0002lb-9g
 for barebox@lists.infradead.org; Thu, 17 Sep 2020 09:36:59 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 17 Sep 2020 11:36:53 +0200
Message-Id: <1600335415-315975-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 0/2] i.MX6ULL: set engine software for Secure Boot on HABv4
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

The i.MX6ULL has no CAAM engine for Secure Boot on HABv4. This patch series
set the engine software for i.MX6ULL and for the PHYTEC boards PCL-063 with
i.MX6ULL.

Changes in v3 and Patch 2:
    - rework and move the file habv4-imx6-gencsf.h to habv4-imx6-gencsf-template.h
    - rework the file habv4-imx6ull-gencsf.h and add new file
      habv4-imx6-gencsf.h

Changes in v2:                                                                   
    - Rework in Patch 2 the file habv4-imx6-gencsf.h, because cst 3.3.1 fails
      for engine software with parameter Feature.

Maik Otto (2):
  arch: arm: boards phytec: Split flash header for pcl063 with i.MX6Ul
    and i.MX6ULL
  arch: arm: mach-imx: Add habv4 config file for i.MX6ULL

 ...b.imxcfg => flash-header-phytec-pcl063-512mb.h} |  1 -
 .../flash-header-phytec-pcl063ul-512mb.imxcfg      |  3 +
 ... => flash-header-phytec-pcl063ull-256mb.imxcfg} |  2 +-
 .../flash-header-phytec-pcl063ull-512mb.imxcfg     |  3 +
 .../include/mach/habv4-imx6-gencsf-template.h      | 64 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 59 +-------------------
 .../mach-imx/include/mach/habv4-imx6ull-gencsf.h   |  4 ++
 images/Makefile.imx                                |  8 +--
 8 files changed, 82 insertions(+), 62 deletions(-)
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-512mb.imxcfg => flash-header-phytec-pcl063-512mb.h} (83%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-256mb.imxcfg => flash-header-phytec-pcl063ull-256mb.imxcfg} (82%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

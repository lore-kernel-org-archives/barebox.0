Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ5x-0004Cx-11
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:17:14 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 7 Jan 2019 09:17:05 +0100
Message-Id: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 0/4] arm: boards: phytec-som-am335x: Add bootchooser support
To: barebox@lists.infradead.org

Hello,

this patchstack from Daniel adds bootchooser support to phytec am335x boards.
I updated the patchstack to a more recent barebox version and added some small fixes.

Teresa

Daniel Schultz (4):
  ARM: configs: omap_defconfig: Add bootchooser
  ARM: dts: am335x-phytec-state: Reduce partition size
  ARM: dts: am335x-phytec-state: Add state partition for bootchooser
  arm: boards: phytec-som-am335x: Add bootchooser to bootsource

 .../defaultenv-physom-am335x/init/bootsource       |  8 +--
 arch/arm/configs/omap_defconfig                    |  2 +
 arch/arm/dts/am335x-phytec-state.dtsi              | 59 ++++++++++++++++++++--
 3 files changed, 62 insertions(+), 7 deletions(-)

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

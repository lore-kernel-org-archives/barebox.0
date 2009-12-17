Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLD0z-0003bv-BP
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 09:51:26 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBH9pGdm028993
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 17 Dec 2009 03:51:18 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 17 Dec 2009 15:21:12 +0530
Message-Id: <1261043474-31872-1-git-send-email-premi@ti.com>
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
Subject: [PATCHv2 0/2] Initial support for OMAP3EVM
To: barebox@lists.infradead.org

This patchset provides a minimal support to get u-boot-v2
working on the OMAP3EVM.

This is just a merge of patches from earlier version, as requested.

Sanjeev Premi (2):
  omap3evm: Add basic support for the board
  omap3evm: Minimal default configuration

 arch/arm/configs/omap3_evm_defconfig |  197 ++++++++++++++++++++++++
 board/omap/Kconfig                   |   27 ++++
 board/omap/Makefile                  |    1 +
 board/omap/board-omap3evm.c          |  275 ++++++++++++++++++++++++++++++++++
 4 files changed, 500 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/omap3_evm_defconfig
 create mode 100644 board/omap/board-omap3evm.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

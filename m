Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Cxs-00031V-UR
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 12:52:02 +0000
Received: from 2e130e83.rdns.siel.si ([46.19.14.131]:24969
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <andrej.picej@norik.com>) id 1l2Cx6-008Cx0-5n
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 13:51:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
Date: Wed, 20 Jan 2021 13:51:04 +0100
Message-Id: <20210120125107.736121-1-andrej.picej@norik.com>
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
Subject: [PATCH 0/3] GPMI NAND xload for i.MX6
To: barebox@lists.infradead.org

Hi all,

these patches implement GPMI NAND xload mechanism for i.MX6 SoCs. The xload from
GPMI NAND is needed in case board wants to boot from internal SRAM (limited in
size) and then load remaining barebox image from NAND.

The usual use-case for xload mechanism is board DRAM size auto-detection and
runtime configuration without the need for separate DCD tables for each SoM
variant.

In our case patches were required to support DRAM size auto-detection on
Phytec's phycard-imx6 SoM with 1GiB and 2GiB DRAM variants. Thus we decided to
submit example implementation on the mentioned board as RFC patch that will
follow these patch series.

Nonetheless, the majority of work was already provided by Sascha Hauer, but his
patches were in WIP stage and not found in the mainline. We added missing parts
for detecting NAND's page and oob size necessary for initial FCB page
reading, etc.

We hope patches spawn ideas for future implementations and work!

Best regards,
Andrej Picej

Andrej Picej (1):
  ARM: i.MX: xload-gpmi-nand: apply errata 007117

Primoz Fiser (1):
  ARM: i.MX: move BCB structures to header file

Sascha Hauer (1):
  ARM: i.MX: implement GPMI NAND xload

 arch/arm/mach-imx/Makefile                    |    2 +-
 arch/arm/mach-imx/include/mach/imx-nand-bcb.h |   80 ++
 arch/arm/mach-imx/include/mach/xload.h        |    1 +
 arch/arm/mach-imx/xload-gpmi-nand.c           | 1225 +++++++++++++++++
 common/imx-bbu-nand-fcb.c                     |   69 +-
 5 files changed, 1308 insertions(+), 69 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx-nand-bcb.h
 create mode 100644 arch/arm/mach-imx/xload-gpmi-nand.c

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

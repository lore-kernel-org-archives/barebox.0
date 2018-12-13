Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAA-0005Xy-Id
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id c72so639702pfc.6
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:46 -0800
Message-Id: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/58] PCI i.MX6/DesignWare sync up with 4.20-rc1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

As a part of working on adding support for PCI on i.MX7D/8MQ, I spent
some time looking through Linux commit history of pci-imx6.c and
pcie-designware*.c and porting various patches to minimize the
differences between the two codebases. This series is the result of
that effort. All of the patches are either fixes for missed corner
cases or code simplifications/improvements, so no functonal changes
are expected.

Tested on ZII RDU2 i.MX6Q board with i210 Ethernet card by booting
4.20-rc1 via TFTP (via PCI/i210).

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (58):
  PCI: desginware: Remove bogus prototypes
  PCI: designware: Consolidate outbound iATU programming functions
  PCI: designware: Use iATU0 for cfg and IO, iATU1 for MEM
  PCI: designware: Fix PORT_LOGIC_LINK_WIDTH_MASK
  PCI: designware: Use exact access size in dw_pcie_cfg_read()
  PCI: designware: Simplify dw_pcie_cfg_read/write() interfaces
  PCI: designware: Require config accesses to be naturally aligned
  PCI: designware: Make "num-lanes" an optional DT property
  PCI: designware: Ensure ATU is enabled before IO/conf space accesses
  PCI: designware: Simplify control flow
  PCI: designware: Make config accessor override checking symmetric
  PCI: designware: Explain why we don't program ATU for some platforms
  PCI: imx6: Move link up check into imx6_pcie_wait_for_link()
  PCI: designware: Add generic dw_pcie_wait_for_link()
  PCI: designware: Add default link up check if sub-driver doesn't
    override
  PCI: designware: Move Root Complex setup code to dw_pcie_setup_rc()
  PCI: designware: Remove incorrect RC memory base/limit configuration
  PCI: designware: Return data directly from dw_pcie_readl_rc()
  PCI: designware: Move link wait definitions to .c file
  PCI: designware: Wait for iATU enable
  PCI: designware: Check LTSSM training bit before deciding link is up
  PCI: designware: Keep viewport fixed for IO transaction if
    num_viewport > 2
  PCI: designware: Exchange viewport of `MEMORYs' and `CFGs/IOs'
  PCI: designware: Rename dw_pcie_valid_config() to
    dw_pcie_valid_device()
  PCI: designware: Simplify pcie_host_ops.readl_rc() and .writel_rc()
    interfaces
  PCI: designware: Swap order of dw_pcie_writel_rc() reg/val arguments
  PCI: designware: Export dw_pcie_readl_rc(), dw_pcie_writel_rc()
  PCI: dwc: designware: Move register defines to designware header file
  PCI: dwc: all: Rename cfg_read/cfg_write to read/write
  PCI: dwc: designware: Get device pointer at the start of
    dw_pcie_host_init()
  PCI: imx6: Add local struct device pointers
  PCI: imx6: Removed unused struct imx6_pcie.mem_base
  PCI: imx6: Pass struct imx6_pcie to PHY accessors
  PCI: imx6: Pass device-specific struct to internal functions
  PCI: imx6: Use generic DesignWare accessors
  PCI: imx6: Reorder struct imx6_pcie
  PCI: imx6: Port error messages for imx6_pcie_deassert_core_reset()
  PCI: imx6: Remove unused return values
  PCI: imx6: Factor out ref clock enable
  PCI: imx6: Add DT property for link gen, default to Gen1
  PCI: imx6: Remove redundant "Link never came up" message
  PCI: imx6: Remove LTSSM disable workaround
  PCI: dwc: all: Split struct pcie_port into host-only and core
    structures
  PCI: dwc: designware: Parse "num-lanes" property in dw_pcie_setup_rc()
  PCI: dwc: designware: Fix style errors in pcie-designware.c
  PCI: dwc: Split pcie-designware.c into host and core files
  PCI: dwc: all: Modify dbi accessors to take dbi_base as argument
  PCI: dwc: all: Modify dbi accessors to access data of 4/2/1 bytes
  PCI: dwc: designware: Test PCIE_ATU_ENABLE bit specifically
  PCI: Fix typos and whitespace errors
  PCI: Add SPDX GPL-2.0 to replace GPL v2 boilerplate
  PCI: dwc: Replace lower into upper case characters
  PCI: dwc: designware: Handle ->host_init() failures
  PCI: dwc: Add accessors for write permission of DBI read-only
    registers
  PCI: dwc: Enable write permission for Class Code, Interrupt Pin
    updates
  PCI: dwc: Fix enumeration end when reaching root subordinate
  PCI: dwc: Small computation improvement
  PCI: dwc: Constify dw_pcie_host_ops structures

 drivers/pci/Makefile               |   2 +-
 drivers/pci/pci-imx6.c             | 368 ++++++++++---------
 drivers/pci/pci-mvebu-phy.c        |   5 +-
 drivers/pci/pci-mvebu.c            |   5 +-
 drivers/pci/pci-mvebu.h            |   5 +-
 drivers/pci/pci-tegra.c            |  13 +-
 drivers/pci/pcie-designware-host.c | 401 +++++++++++++++++++++
 drivers/pci/pcie-designware.c      | 551 ++++++-----------------------
 drivers/pci/pcie-designware.h      | 166 +++++++--
 9 files changed, 826 insertions(+), 690 deletions(-)
 create mode 100644 drivers/pci/pcie-designware-host.c

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

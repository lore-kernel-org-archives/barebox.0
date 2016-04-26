Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x233.google.com ([2607:f8b0:400e:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvgz-0001ry-Mr
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:50 +0000
Received: by mail-pf0-x233.google.com with SMTP id 206so2475318pfu.0
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:36:58 -0700
Message-Id: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/9] i.MX6Q+ fixes plus number of latest Kernel changes
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>

Hello,

This patchset continains i.MX6Q+ reset sequence fix (similar
implementation was submitted to LKML) and besides that a number of
ported coomits from "pci/host-imx6" branch of:

git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git

Since some commits required a bit of massaging, I added my own
Signed-off-by and a comment in square brackets, however my authorship
of those commits is very minimal.

As for commit by Fabio Estevam, there I was able to apply
corresponding kernel patch by manually editing paths in the diff file,
so I left the commit message as it was.

Any feedback would be appreciated.

Thank you,
Andrey Smirnov

Andrey Smirnov (8):
  PCI: imx6: Simplify imx6_pcie_remove()
  OF: Port of_match_device() and of_device_get_match_data()
  PCI: imx6: Add proper i.MX6+ reset sequence
  PCI: imx6: Rename imx6_pcie_start_link() to imx6_pcie_establish_link()
  PCI: imx6: Move imx6_pcie_reset_phy() near other PHY handling
    functions
  PCI: imx6: Move PHY reset into imx6_pcie_establish_link()
  PCI: imx6: Remove broken Gen2 workaround
  PCI: imx6: Add DT bindings to configure PHY Tx driver settings

Fabio Estevam (1):
  PCI: imx6: Simplify a trivial if-return sequence

 drivers/of/Makefile            |   2 +-
 drivers/of/device.c            |  33 ++++++
 drivers/pci/pci-imx6.c         | 242 +++++++++++++++++++++++------------------
 include/mfd/imx6q-iomuxc-gpr.h |   1 +
 include/of_device.h            |  48 ++++++++
 5 files changed, 217 insertions(+), 109 deletions(-)
 create mode 100644 drivers/of/device.c
 create mode 100644 include/of_device.h

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

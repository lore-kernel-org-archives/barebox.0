Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlL0-00037i-Bt
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id w73so5750855pfk.10
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:18 -0800
Message-Id: <20181217051925.17582-59-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 58/65] PCI: Add SPDX GPL-2.0 to replace GPL v2 boilerplate
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 8cfab3cf63cfe5a53e2e566b3b86b30c187edf3a

  Add SPDX GPL-2.0 to all PCI files that specified the GPL version 2 license.

  Remove the boilerplate GPL version 2 language, relying on the assertion in
  b24413180f56 ("License cleanup: add SPDX GPL-2.0 license identifier to
  files with no license") that the SPDX identifier may be used instead of the
  full boilerplate text.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c             |  5 +----
 drivers/pci/pci-mvebu-phy.c        |  5 +----
 drivers/pci/pci-mvebu.c            |  5 +----
 drivers/pci/pci-mvebu.h            |  5 +----
 drivers/pci/pci-tegra.c            | 13 +------------
 drivers/pci/pcie-designware-host.c |  5 +----
 drivers/pci/pcie-designware.c      |  5 +----
 drivers/pci/pcie-designware.h      |  5 +----
 8 files changed, 8 insertions(+), 40 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 67ef47db9..78aa5215a 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * PCIe host controller driver for Freescale i.MX6 SoCs
  *
@@ -5,10 +6,6 @@
  *		http://www.kosagi.com
  *
  * Author: Sean Cross <xobs@kosagi.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/pci/pci-mvebu-phy.c b/drivers/pci/pci-mvebu-phy.c
index 55a1d39f6..f1bfc99ee 100644
--- a/drivers/pci/pci-mvebu-phy.c
+++ b/drivers/pci/pci-mvebu-phy.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * SoC specific PCIe PHY setup for Marvell MVEBU SoCs
  *
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
  *
  * based on Marvell BSP code (C) Marvell International Ltd.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 91e8ca870..1c20f9154 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * PCIe driver for Marvell MVEBU SoCs
  *
  * Based on Linux drivers/pci/host/pci-mvebu.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/pci/pci-mvebu.h b/drivers/pci/pci-mvebu.h
index 8ced9fefc..2797bc4c8 100644
--- a/drivers/pci/pci-mvebu.h
+++ b/drivers/pci/pci-mvebu.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * PCIe include for Marvell MVEBU SoCs
  *
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MVEBU_PCI_H
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index b532c464a..b6ccf8e5b 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1,21 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * based on code
  * Copyright (c) 2010, CompuLab, Ltd.
  * Copyright (c) 2008-2009, NVIDIA Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index d4fd58377..29967fbc5 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Synopsys DesignWare PCIe host controller driver
  *
@@ -5,10 +6,6 @@
  *		http://www.samsung.com
  *
  * Author: Jingoo Han <jg1.han@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index e608ad47a..6b2458c9f 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Synopsys DesignWare PCIe host controller driver
  *
@@ -5,10 +6,6 @@
  *		http://www.samsung.com
  *
  * Author: Jingoo Han <jg1.han@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 98565f201..b18f1b83e 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Synopsys DesignWare PCIe host controller driver
  *
@@ -5,10 +6,6 @@
  *		http://www.samsung.com
  *
  * Author: Jingoo Han <jg1.han@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef _PCIE_DESIGNWARE_H
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

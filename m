Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlL0-0003aF-3K
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id z9so5769890pfi.2
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:17 -0800
Message-Id: <20181217051925.17582-58-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 57/65] PCI: Fix typos and whitespace errors
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 96291d565550c1fd363e488cc17cb3189d2e4cc2

  Fix various typos and whitespace errors:

    s/Synopsis/Synopsys/
    s/Designware/DesignWare/
    s/Keystine/Keystone/
    s/gpio/GPIO/
    s/pcie/PCIe/
    s/phy/PHY/
    s/confgiruation/configuration/

  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 2 +-
 drivers/pci/pcie-designware.c      | 2 +-
 drivers/pci/pcie-designware.h      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 30bed9444..d4fd58377 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -1,5 +1,5 @@
 /*
- * Synopsys Designware PCIe host controller driver
+ * Synopsys DesignWare PCIe host controller driver
  *
  * Copyright (C) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 211acdfed..e608ad47a 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -1,5 +1,5 @@
 /*
- * Synopsys Designware PCIe host controller driver
+ * Synopsys DesignWare PCIe host controller driver
  *
  * Copyright (C) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 149ce1da5..98565f201 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -1,5 +1,5 @@
 /*
- * Synopsys Designware PCIe host controller driver
+ * Synopsys DesignWare PCIe host controller driver
  *
  * Copyright (C) 2013 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

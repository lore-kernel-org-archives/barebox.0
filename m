Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlL7-0005KC-Q2
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so5776650pfb.0
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:21:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:23 -0800
Message-Id: <20181217051925.17582-64-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 63/65] PCI: dwc: Fix enumeration end when reaching root
 subordinate
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit c2deae44616dab0112d965a0dc72d053b5727b4b

  The subordinate value indicates the highest bus number which can be
  reached downstream though a certain device.

  Commit a20c7f36bd3d ("PCI: Do not allocate more buses than available in
  parent")
  ensures that downstream devices cannot assign busnumbers higher than the
  upstream device subordinate number, which was indeed illogical.

  By default, dw_pcie_setup_rc() inits the Root Complex subordinate to a
  value of 0x01.

  Due to this combined with above commit, enumeration stops digging deeper
  downstream as soon as bus num 0x01 has been assigned, which is always
  the case for a bridge device.

  This results in all devices behind a bridge bus to remain undetected, as
  these would be connected to bus 0x02 or higher.

  Fix this by initializing the RC to a subordinate value of 0xff, which is
  not altering hardware behaviour in any way, but informs probing
  function pci_scan_bridge() later on which reads this value back from
  register.

  Following nasty errors during boot are also fixed by this:

  [    0.459145] pci_bus 0000:02: busn_res: can not insert [bus 02-ff]
  under [bus 01] (conflicts with (null) [bus 01])
  ...
  [    0.464515] pci_bus 0000:03: [bus 03] partially hidden behind bridge
  0000:01 [bus 01]
  ...
  [    0.464892] pci_bus 0000:04: [bus 04] partially hidden behind bridge
  0000:01 [bus 01]
  ...
  [    0.466488] pci_bus 0000:05: [bus 05] partially hidden behind bridge
  0000:01 [bus 01]
  [    0.466506] pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to
  05
  [    0.466517] pci_bus 0000:02: busn_res: can not insert [bus 02-05]
  under [bus 01] (conflicts with (null) [bus 01])
  [    0.466534] pci_bus 0000:02: [bus 02-05] partially hidden behind
  bridge 0000:01 [bus 01]

  Fixes: a20c7f36bd3d ("PCI: Do not allocate more buses than available in
  parent")
  Tested-by: Niklas Cassel <niklas.cassel@axis.com>
  Tested-by: Fabio Estevam <fabio.estevam@nxp.com>
  Tested-by: Sebastian Reichel <sebastian.reichel@collabora.co.uk>
  Signed-off-by: Koen Vandeputte <koen.vandeputte@ncentric.com>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
  Acked-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: <stable@vger.kernel.org> # 4.15
  Cc: Binghui Wang <wangbinghui@hisilicon.com>
  Cc: Bjorn Helgaas <bhelgaas@google.com>
  Cc: Jesper Nilsson <jesper.nilsson@axis.com>
  Cc: Jianguo Sun <sunjianguo1@huawei.com>
  Cc: Jingoo Han <jingoohan1@gmail.com>
  Cc: Kishon Vijay Abraham I <kishon@ti.com>
  Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Cc: Lucas Stach <l.stach@pengutronix.de>
  Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
  Cc: Minghuan Lian <minghuan.Lian@freescale.com>
  Cc: Mingkai Hu <mingkai.hu@freescale.com>
  Cc: Murali Karicheri <m-karicheri2@ti.com>
  Cc: Pratyush Anand <pratyush.anand@gmail.com>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>
  Cc: Roy Zang <tie-fei.zang@freescale.com>
  Cc: Shawn Guo <shawn.guo@linaro.org>
  Cc: Stanimir Varbanov <svarbanov@mm-sol.com>
  Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  Cc: Xiaowei Song <songxiaowei@hisilicon.com>
  Cc: Zhou Wang <wangzhou1@hisilicon.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index b42d2ac93..7af5a6561 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -371,7 +371,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	/* Setup bus numbers */
 	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
 	val &= 0xff000000;
-	val |= 0x00010100;
+	val |= 0x00ff0100;
 	dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);
 
 	/* Setup command register */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

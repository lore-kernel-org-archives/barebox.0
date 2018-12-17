Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKz-0005JA-3v
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id t13so5516297pgr.11
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:16 -0800
Message-Id: <20181217051925.17582-57-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 56/65] PCI: dwc: designware: Make
 dw_pcie_prog_*_atu_unroll() static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 684a3a91da401195dbe33b7cef9472bca41c61b9

  Helper functions dw_pcie_prog_*_atu_unroll() don't need to be in global
  scope, so make them static.

  Cleans up sparse warnings:
    - symbol 'dw_pcie_prog_outbound_atu_unroll' was not declared. Should it be static?
    - symbol 'dw_pcie_prog_inbound_atu_unroll' was not declared. Should it be static?

  Signed-off-by: Carlos Palminha <palminha@synopsys.com>
  [bhelgaas: rewrap to fit in 80 columns]
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index d2d4fe34a..211acdfed 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -114,9 +114,9 @@ static void dw_pcie_writel_ob_unroll(struct dw_pcie *pci, u32 index,
 	dw_pcie_writel_dbi(pci, offset + reg, val);
 }
 
-void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index, int type,
-				     u64 cpu_addr, u64 pci_addr, u32 size)
-
+static void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index,
+					     int type, u64 cpu_addr,
+					     u64 pci_addr, u32 size)
 {
 	u32 retries, val;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh2-0001sH-I8
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:53 +0000
Received: by mail-pf0-x232.google.com with SMTP id c189so2421252pfb.3
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:02 -0700
Message-Id: <1461649027-5046-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/9] PCI: imx6: Rename imx6_pcie_start_link() to
 imx6_pcie_establish_link()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>

Rename imx6_pcie_start_link() to imx6_pcie_establish_link() to follow the
convention of other DesignWare-based host drivers.  No functional change.

[Andrey Smirnov: port to BB codebase]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Acked-by: Pratyush Anand <pratyush.anand@gmail.com>
---
 drivers/pci/pci-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 13a8b22..30bc4fe 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -415,7 +415,7 @@ static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
 }
 
 
-static int imx6_pcie_start_link(struct pcie_port *pp)
+static int imx6_pcie_establish_link(struct pcie_port *pp)
 {
 	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	uint32_t tmp;
@@ -483,7 +483,7 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 
 	dw_pcie_setup_rc(pp);
 
-	imx6_pcie_start_link(pp);
+	imx6_pcie_establish_link(pp);
 }
 
 static void imx6_pcie_reset_phy(struct pcie_port *pp)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

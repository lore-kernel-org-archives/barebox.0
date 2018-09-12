Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0CFx-00021q-Pt
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 21:01:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id p10-v6so2834320ljg.2
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 14:00:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Sep 2018 00:00:06 +0300
Message-Id: <20180912210006.28087-3-antonynpavlov@gmail.com>
In-Reply-To: <20180912210006.28087-1-antonynpavlov@gmail.com>
References: <20180912210006.28087-1-antonynpavlov@gmail.com>
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
Subject: [PATCH for master 2/2] pci_of_match_device: don't crash on MIPS Malta
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

In arch/mips/mach-malta/pci.c PCI controller is instantiated
without dt and struct pci_controller parent field is NULL.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index d206c53848..7abc7a3439 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -339,7 +339,7 @@ pci_of_match_device(struct device_d *parent, unsigned int devfn)
 	struct device_node *np;
 	u32 reg;
 
-	if (!IS_ENABLED(CONFIG_OFTREE) || !parent->device_node)
+	if (!IS_ENABLED(CONFIG_OFTREE) || !parent || !parent->device_node)
 		return NULL;
 
 	for_each_child_of_node(parent->device_node, np) {
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2x-0003BD-V8
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:05 +0000
Received: by widdi4 with SMTP id di4so113654023wid.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:38 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:23 +0200
Message-Id: <1429560686-11391-12-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 11/14] ARM: mvebu: armada-xp: Use MBUS_ERR_PROP_EN define
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

With proper defines for ARMADA_370_XP_FABRIC_CTRL and MBUS_ERR_PROP_EN
make use of it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 8e1463dd8b11..2405629526e0 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -138,9 +138,9 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 	barebox_set_hostname("armada");
 
 	/* Disable MBUS error propagation */
-	reg = readl(ARMADA_370_XP_FABRIC_BASE);
-	reg &= ~BIT(8);
-	writel(reg, ARMADA_370_XP_FABRIC_BASE);
+	reg = readl(ARMADA_370_XP_FABRIC_CTRL);
+	reg &= ~MBUS_ERR_PROP_EN;
+	writel(reg, ARMADA_370_XP_FABRIC_CTRL);
 
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

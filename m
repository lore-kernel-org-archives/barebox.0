Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGAPT-0005Hv-OJ
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 19:03:16 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 4 Jan 2016 19:02:34 +0000
Message-ID: <1451934159.26955.276.camel@rtred1test09.kymeta.local>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
In-Reply-To: <20160104083257.GA13058@pengutronix.de>
Content-Language: en-US
Content-ID: <3B6637AA4F0D0A4C841EDC61452DA27E@kymetacorp.com>
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
Subject: [PATCH 2/2] OF: Fix fixups to fix Linux DT instead of Barebox DT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

OF fixups cm_cogent_fixup() and hb_fixup() are supposed to modify the
Linux device tree.  And they did originally, but commit
e520a8cc463760d21890b35218e4dac817e7c7e7 changed them to use
for_each_compatible_node(), which iterates through the Barebox DT.
Use new for_each_compatible_node_from() to specify the Linux DT root
as the start point.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c | 2 +-
 arch/arm/boards/highbank/init.c           | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 37eb1f8..2f84d82 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -235,7 +235,7 @@ static int cm_cogent_fixup(struct device_node *root, void *unused)
 	int ret;
 	struct device_node *node;
 
-	for_each_compatible_node(node, NULL, "atmel,hsmci") {
+	for_each_compatible_node_from(node, root, NULL, "atmel,hsmci") {
 		struct device_node *slotnode =
 			of_get_child_by_name(node, "slot");
 		if (!slotnode)
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index a0d4b30..1cb02e6 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -35,13 +35,13 @@ static int hb_fixup(struct device_node *root, void *unused)
 	__be32 latency;
 
 	if (!(reg & HB_PWRDOM_STAT_SATA)) {
-		for_each_compatible_node(node, NULL, "calxeda,hb-ahci")
+		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-ahci")
 			of_set_property(node, "status", "disabled",
 					sizeof("disabled"), 1);
 	}
 
 	if (!(reg & HB_PWRDOM_STAT_EMMC)) {
-		for_each_compatible_node(node, NULL, "calxeda,hb-sdhci")
+		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-sdhci")
 			of_set_property(node, "status", "disabled",
 					sizeof("disabled"), 1);
 	}
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

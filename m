Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcqpE-0003vQ-RM
 for barebox@lists.infradead.org; Wed, 11 Nov 2020 14:10:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Nov 2020 15:10:12 +0100
Message-Id: <20201111141012.6278-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: layerscape: ppa: Fix use after free
To: Barebox List <barebox@lists.infradead.org>

In of_psci_do_fixup() we want to delete the one job-ring device node
which is used by the PPA secure firmware. When we have deleted the node
we may not continue the for_each_compatible_node_from() loop, because
that would derefence the just deleted node.
We only want to delete a single node, so we do not need to continue the
loop once we've found the node, so we can fix the issue by breaking out
of the loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 6ab7659be7..c34651f39f 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -43,6 +43,7 @@ static int of_psci_do_fixup(struct device_node *root, void *unused)
 			continue;
 
 		of_delete_node(np);
+		break;
 	}
 
 	return of_psci_fixup(root, psci_version);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

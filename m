Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgOh-0002sg-CS
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 06:40:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Apr 2020 08:40:40 +0200
Message-Id: <20200429064040.5845-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200429064040.5845-1-a.fatoum@pengutronix.de>
References: <20200429064040.5845-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] of: fix side effect in macro expansion
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On little endian platforms that don't define __arch_swab32p, be32_to_cpu
ultimately expands to an expression that evaluates its argument multiple
times. Because of the increment, this is wrong (and UB because of
unsequenced modification).
Hoist the side effect out of the macro argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/of.h b/include/of.h
index 85d55f9b57dc..08bbeaf4d21b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -79,8 +79,8 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node);
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
 	u64 r = 0;
-	while (size--)
-		r = (r << 32) | be32_to_cpu(*(cell++));
+	for (; size--; cell++)
+		r = (r << 32) | be32_to_cpu(*cell);
 	return r;
 }
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

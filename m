Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiXq-0002bj-Bf
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 08:58:19 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 199ABE0003
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 08:58:12 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 10:58:08 +0200
Message-Id: <20200429085808.56307-1-ahmad@a3f.at>
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
Subject: [PATCH v2] of: refactor of_read_number for clarity.
To: barebox@lists.infradead.org

While the code is correct, less sophisticated static analyzers (and
users operating them..) trip over it, because they don't see that
the be32_to_cpu argument is evaluated multiple times only if it's
constant. Moving the side effect out:

- Lets us avoid the false positive
- Aligns us with what Linux does
- Makes the code IMO a bit clearer

Do so.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
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
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjICX-0002rF-M0
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 08:04:43 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 11 Jun 2020 10:02:02 +0200
Message-Id: <20200611080207.6482-3-cleger@kalray.eu>
In-Reply-To: <20200611080207.6482-1-cleger@kalray.eu>
References: <20200611080207.6482-1-cleger@kalray.eu>
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
Subject: [PATCH v5 2/7] common: elf: use calloc instead of xzalloc
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

This failure can be handled grecefully, use standard calloc.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/elf.c b/common/elf.c
index 55f5bc645..0e92661e1 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -19,7 +19,10 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 	struct resource *r_new;
 	struct elf_section *r;
 
-	r = xzalloc(sizeof(*r));
+	r = calloc(1, sizeof(*r));
+	if (!r)
+		return -ENOMEM;
+
 	r_new = request_sdram_region("elf_section", start, size);
 	if (!r_new) {
 		pr_err("Failed to request region: %pa %pa\n", &start, &size);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

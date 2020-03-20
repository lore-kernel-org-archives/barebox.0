Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKBM-0001DR-K5
 for barebox@lists.infradead.org; Fri, 20 Mar 2020 16:07:38 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 20 Mar 2020 17:07:20 +0100
Message-Id: <20200320160720.27134-1-cleger@kalray.eu>
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
Subject: [PATCH] common: oftree: trim leading spaces from bootargs
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

When barebox concatenates all dynamic bootargs string for linux, if they
are empty, the resulting string might be composed of only spaces.
Currently, there is no check for such string and it leads to
overwriting bootargs in the device tree by an empty string. To avoid
this behavior, use skip_spaces to trim leading spaces and then check if
the string is empty. If so, simply returns and don't patch device tree
bootargs.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/oftree.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 09cb66021..36906e86f 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -151,6 +151,10 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	if (!str)
 		return 0;
 
+	str = skip_spaces(str);
+	if (strlen(str) == 0)
+		return 0;
+
 	node = of_create_node(root, "/chosen");
 	if (!node)
 		return -ENOMEM;
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006Wo-Jv
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:15 +0100
Message-Id: <1362390820-10333-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/37] of: Add of_write_number helper
To: barebox@lists.infradead.org

The counterpart to of_read_number: Write a 32bit or 64bit
number to a devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/of.h |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/of.h b/include/of.h
index 63c99b2..6154490 100644
--- a/include/of.h
+++ b/include/of.h
@@ -96,6 +96,17 @@ static inline u64 of_read_number(const __be32 *cell, int size)
 	return r;
 }
 
+/* Helper to write a big number; size is in cells (not bytes) */
+static inline void of_write_number(void *__cell, u64 val, int size)
+{
+	__be32 *cell = __cell;
+
+	while (size--) {
+		cell[size] = cpu_to_be32(val);
+		val >>= 32;
+	}
+}
+
 int of_property_read_u32_array(const struct device_node *np,
 			       const char *propname, u32 *out_values,
 			       size_t sz);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

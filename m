Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVy-0002wL-6E
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:18 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:25 +0200
Message-Id: <20180516164233.27581-3-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 02/10] port resource_overlaps() from kernel
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

needed for kexec support

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 include/linux/ioport.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 2a944cc73..f05937ead 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -130,6 +130,12 @@ static inline unsigned long resource_type(const struct resource *res)
 	return res->flags & IORESOURCE_TYPE_BITS;
 }
 
+/* True if any part of r1 overlaps r2 */
+static inline bool resource_overlaps(struct resource *r1, struct resource *r2)
+{
+       return (r1->start <= r2->end && r1->end >= r2->start);
+}
+
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end);
 struct resource *request_ioport_region(const char *name,
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

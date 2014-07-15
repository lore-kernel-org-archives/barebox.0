Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X737E-0006s5-Li
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:49:31 +0200
Message-Id: <1405432173-22448-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] include: Add foreign endianess adding functions from
 kernel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/byteorder/generic.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/byteorder/generic.h b/include/linux/byteorder/generic.h
index 2d68d99..e59ba45 100644
--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -175,5 +175,34 @@ extern unsigned short int	htons(unsigned short int);
 
 #endif /* OPTIMIZE */
 
+static inline void le16_add_cpu(__le16 *var, u16 val)
+{
+	*var = cpu_to_le16(le16_to_cpu(*var) + val);
+}
+
+static inline void le32_add_cpu(__le32 *var, u32 val)
+{
+	*var = cpu_to_le32(le32_to_cpu(*var) + val);
+}
+
+static inline void le64_add_cpu(__le64 *var, u64 val)
+{
+	*var = cpu_to_le64(le64_to_cpu(*var) + val);
+}
+
+static inline void be16_add_cpu(__be16 *var, u16 val)
+{
+	*var = cpu_to_be16(be16_to_cpu(*var) + val);
+}
+
+static inline void be32_add_cpu(__be32 *var, u32 val)
+{
+	*var = cpu_to_be32(be32_to_cpu(*var) + val);
+}
+
+static inline void be64_add_cpu(__be64 *var, u64 val)
+{
+	*var = cpu_to_be64(be64_to_cpu(*var) + val);
+}
 
 #endif /* _LINUX_BYTEORDER_GENERIC_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

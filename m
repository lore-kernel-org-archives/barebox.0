Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0W-0005mF-4V
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:38 +0400
Message-Id: <1362994003-22653-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 08/13] Add helpers to define resources
To: barebox@lists.infradead.org

This patch adds helpers to define resources, such as
DEFINE_RES_NAMED, DEFINE_RES_MEM and DEFINE_RES_MEM_NAMED.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/linux/ioport.h |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 6d6cd68..ff0cba0 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -111,10 +111,25 @@ struct resource {
 /* PCI control bits.  Shares IORESOURCE_BITS with above PCI ROM.  */
 #define IORESOURCE_PCI_FIXED		(1<<4)	/* Do not move resource */
 
+/* Helpers to define resources */
+#define DEFINE_RES_NAMED(_start, _size, _name, _flags)	\
+	{						\
+		.start	= (_start),			\
+		.end	= (_start) + (_size) - 1,	\
+		.name	= (_name),			\
+		.flags	= (_flags),			\
+	}
+
+#define DEFINE_RES_MEM_NAMED(_start, _size, _name)	\
+	DEFINE_RES_NAMED((_start), (_size), (_name), IORESOURCE_MEM)
+#define DEFINE_RES_MEM(_start, _size)			\
+	DEFINE_RES_MEM_NAMED((_start), (_size), NULL)
+
 static inline resource_size_t resource_size(const struct resource *res)
 {
 	return res->end - res->start + 1;
 }
+
 static inline unsigned long resource_type(const struct resource *res)
 {
 	return res->flags & IORESOURCE_TYPE_BITS;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

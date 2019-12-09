Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGV5-0008HC-FQ
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:42:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ieGV2-00024z-S8
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:42:44 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ieGV2-0005xA-Jn
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:42:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Dec 2019 11:42:36 +0100
Message-Id: <20191209104238.31161-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20191209104238.31161-1-s.trumtrar@pengutronix.de>
References: <20191209104238.31161-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 2/4] image-metadata: add flags field to imd_header
To: Barebox List <barebox@lists.infradead.org>

To allow marking an imd tag with properties, add a flags field to the imd_header.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/image-metadata.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/image-metadata.h b/include/image-metadata.h
index 5904d95acd37..ca73e6cf6ec6 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -28,6 +28,8 @@
 #define IMD_TYPE_END		0x640c7fff
 #define IMD_TYPE_INVALID	0xffffffff
 
+#define IMD_FLAG_TAG_VALID	(1 << 0)
+
 /*
  * The IMD header. All data is stored in little endian format in the image.
  * The next header starts at the next 4 byte boundary after the data.
@@ -35,6 +37,7 @@
 struct imd_header {
 	uint32_t type;		/* One of IMD_TYPE_* above */
 	uint32_t datalength;	/* Length of the data (exluding the header) */
+	uint32_t flags;
 };
 
 /*
@@ -51,6 +54,11 @@ static inline int imd_is_string(uint32_t type)
 	return (type & 0x8000) ? 1 : 0;
 }
 
+static inline int imd_tag_is_valid(uint32_t flags)
+{
+	return (flags & IMD_FLAG_TAG_VALID) ? 1 : 0;
+}
+
 static inline int imd_type_valid(uint32_t type)
 {
 	return (type & 0xffff0000) == 0x640c0000;
@@ -78,6 +86,11 @@ static inline uint32_t imd_read_length(const struct imd_header *imd)
 	return imd_read_le32(&imd->datalength);
 }
 
+static inline uint32_t imd_read_flags(const struct imd_header *imd)
+{
+	return imd_read_le32(&imd->flags);
+}
+
 const struct imd_header *imd_find_type(const struct imd_header *imd,
 				       uint32_t type);
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

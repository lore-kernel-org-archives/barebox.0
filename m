Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL26S-0007I4-BY
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 10:34:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26P-0005vk-BH
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:21 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26O-0000M7-W4
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:21 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 23 Sep 2020 12:34:18 +0200
Message-Id: <20200923103418.11186-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
References: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/4] imd: add buildsystem version to metadata
To: Barebox List <barebox@lists.infradead.org>

To have information about the exact state of a barebox binary from
userspace, add the buildsystem version to the IMD.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/imd-barebox.c     | 1 +
 common/imd.c             | 3 +++
 include/image-metadata.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/common/imd-barebox.c b/common/imd-barebox.c
index e5cdfd1aed34..06731d0600cf 100644
--- a/common/imd-barebox.c
+++ b/common/imd-barebox.c
@@ -23,4 +23,5 @@ __BAREBOX_IMD_SECTION(.barebox_imd_end) = {
 
 BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
 BAREBOX_IMD_TAG_STRING(imd_release_tag, IMD_TYPE_RELEASE, UTS_RELEASE, 1);
+BAREBOX_IMD_TAG_STRING(imd_buildsystem_version_tag, IMD_TYPE_BUILDSYSTEM, BUILDSYSTEM_VERSION, 1);
 BAREBOX_IMD_CRC(imd_crc32, 0x0, 1);
diff --git a/common/imd.c b/common/imd.c
index 96496514a54a..6970edaf96f1 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -168,6 +168,9 @@ static struct imd_type_names imd_types[] = {
 	}, {
 		.type = IMD_TYPE_CRC32,
 		.name = "crc32",
+	}, {
+		.type = IMD_TYPE_BUILDSYSTEM,
+		.name = "buildsystem version",
 	},
 };
 
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 42ddf2fab02a..a9cb9cfe8f16 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -26,6 +26,7 @@
 #define IMD_TYPE_MODEL		0x640c8004 /* The board name this image is for */
 #define IMD_TYPE_OF_COMPATIBLE	0x640c8005 /* the device tree compatible string */
 #define IMD_TYPE_PARAMETER	0x640c8006 /* A generic parameter. Use key=value as data */
+#define IMD_TYPE_BUILDSYSTEM	0x640c8007 /* The buildsystem version barebox was built with */
 #define IMD_TYPE_CRC32		0x640c1007 /* the checksum of the barebox images */
 #define IMD_TYPE_END		0x640c7fff
 #define IMD_TYPE_INVALID	0xffffffff
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

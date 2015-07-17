Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002SO-TH
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:28 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:39 +0200
Message-Id: <1437160969-31517-7-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 06/16] efi: add helper to get the GPT partition UUID for a
 device
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
v2: use xasprintf()

 common/efi-devicepath.c | 30 ++++++++++++++++++++++++++++++
 include/efi.h           |  1 +
 2 files changed, 31 insertions(+)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index a53c6d2e8b9b..a1cd0952f929 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -1383,3 +1383,33 @@ u8 device_path_to_type(struct efi_device_path *dev_path)
 
 	return device_path_type(dev_path);
 }
+
+char *device_path_to_partuuid(struct efi_device_path *dev_path)
+{
+	struct efi_device_path *dev_path_node;
+	struct harddrive_device_path *hd;
+	char *str = NULL;;
+
+	dev_path = unpack_device_path(dev_path);
+
+	for (dev_path_node = dev_path; !is_device_path_end(dev_path_node);
+	     dev_path_node = next_device_path_node(dev_path_node)) {
+
+		if (device_path_type(dev_path_node) != MEDIA_DEVICE_PATH)
+			continue;
+
+		if (dev_path_node->sub_type != MEDIA_HARDDRIVE_DP)
+			continue;
+
+		hd = (struct harddrive_device_path *)dev_path_node;
+
+		if (hd->signature_type != SIGNATURE_TYPE_GUID)
+			continue;
+
+		str = xasprintf("%pU)", (efi_guid_t *)&(hd->signature[0]));
+		break;
+	}
+
+	return str;
+}
+
diff --git a/include/efi.h b/include/efi.h
index e79a407bc2c8..b6ee42b3fd49 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -624,6 +624,7 @@ static inline int efi_compare_guid(efi_guid_t *a, efi_guid_t *b)
 
 char *device_path_to_str(struct efi_device_path *dev_path);
 u8 device_path_to_type(struct efi_device_path *dev_path);
+char *device_path_to_partuuid(struct efi_device_path *dev_path);
 
 const char *efi_guid_string(efi_guid_t *g);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

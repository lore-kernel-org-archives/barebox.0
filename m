Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008Jq-7v
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-1G
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:28 +0100
Message-Id: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 01/12] efi: add function to determine type of device path
To: barebox@lists.infradead.org

Thanks to the wonders of UEFI we have to walk down the
device path all the way until we arrive at the device
we got this path from...

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/efi-devicepath.c | 15 +++++++++++++++
 include/efi.h           |  1 +
 2 files changed, 16 insertions(+)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index 2b1d916768d0..a53c6d2e8b9b 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -1368,3 +1368,18 @@ char *device_path_to_str(struct efi_device_path *dev_path)
 
 	return str.str;
 }
+
+u8 device_path_to_type(struct efi_device_path *dev_path)
+{
+	struct efi_device_path *dev_path_next;
+
+	dev_path = unpack_device_path(dev_path);
+	dev_path_next = next_device_path_node(dev_path);
+
+	while (!is_device_path_end(dev_path_next)) {
+		dev_path = dev_path_next;
+		dev_path_next = next_device_path_node(dev_path);
+	}
+
+	return device_path_type(dev_path);
+}
diff --git a/include/efi.h b/include/efi.h
index 4ad9f69237e7..de51e1a3c9b6 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -615,6 +615,7 @@ static inline int efi_compare_guid(efi_guid_t *a, efi_guid_t *b)
 }
 
 char *device_path_to_str(struct efi_device_path *dev_path);
+u8 device_path_to_type(struct efi_device_path *dev_path);
 
 const char *efi_guid_string(efi_guid_t *g);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdd2-0007lw-6D
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:21:55 +0000
Received: from geraet.fritz.box (i538755FA.versanet.de [83.135.85.250])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2B62E1C000D
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2019 07:21:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 16 Oct 2019 09:21:36 +0200
Message-Id: <20191016072139.2323-2-ahmad@a3f.at>
In-Reply-To: <20191016072139.2323-1-ahmad@a3f.at>
References: <20191016072139.2323-1-ahmad@a3f.at>
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
Subject: [PATCH 2/5] efi: retire efi_compare_guid in favor of efi_guidcmp
To: barebox@lists.infradead.org

Both functions wrap the same memcmp except that one uses pointers to
GUIDs and the other passes the GUIDs by value.

The function is static inline, so it doesn't really matter which one we
keep. We'll drop efi_compare_guid because it's been used once only in the
code base so far.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/efi-devicepath.c | 2 +-
 include/efi.h           | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index 24722284b4a7..3db2cea061ca 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -572,7 +572,7 @@ dev_path_vendor(struct string *str, void *dev_path)
 	}
 
 	cprintf(str, "Ven%s(%pU", type, &Vendor->Guid);
-	if (efi_compare_guid(&Vendor->Guid, &efi_unknown_device_guid) == 0) {
+	if (efi_guidcmp(Vendor->Guid, efi_unknown_device_guid) == 0) {
 		/* GUID used by EFI to enumerate an EDD 1.1 device */
 		unknown_dev_path =
 		    (struct unknown_device_vendor_device_path *) Vendor;
diff --git a/include/efi.h b/include/efi.h
index 218333f82426..166803a58f39 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -664,11 +664,6 @@ typedef union {
 	efi_ipv6_address v6;
 } efi_ip_address;
 
-static inline int efi_compare_guid(efi_guid_t *a, efi_guid_t *b)
-{
-	return memcmp(a, b, sizeof(efi_guid_t));
-}
-
 struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
 char *device_path_to_str(struct efi_device_path *dev_path);
 u8 device_path_to_type(struct efi_device_path *dev_path);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

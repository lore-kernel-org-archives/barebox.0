Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFemO-0001SV-1w
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:44:33 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 16 Jul 2015 10:43:54 +0200
Message-Id: <1437036236-19096-6-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 5/7] efi: export device_path_from_handle()
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 include/efi.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/efi.h b/include/efi.h
index b6ee42b3fd49..830e0457dd1c 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -622,6 +622,7 @@ static inline int efi_compare_guid(efi_guid_t *a, efi_guid_t *b)
 	return memcmp(a, b, sizeof(efi_guid_t));
 }
 
+struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
 char *device_path_to_str(struct efi_device_path *dev_path);
 u8 device_path_to_type(struct efi_device_path *dev_path);
 char *device_path_to_partuuid(struct efi_device_path *dev_path);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

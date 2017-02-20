Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo68.mail-out.ovh.net ([46.105.52.162])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfeIB-0003pR-L7
 for barebox@lists.infradead.org; Mon, 20 Feb 2017 03:05:39 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 21CFE3BACA
 for <barebox@lists.infradead.org>; Mon, 20 Feb 2017 04:05:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 20 Feb 2017 04:10:50 +0100
Message-Id: <1487560251-3005-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487560251-3005-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487560251-3005-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] efi-gui: add Timestamp Protocol GUID definition
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi-guid.c | 1 +
 include/efi.h     | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 64f3b1f65..04a00ee87 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -75,6 +75,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_COMPONENT_NAME2_PROTOCOL_GUID, "Component Name2 Protocol", "UEFI 2.0 Component Name2 Protocol");
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31, "Network Interface Identifier Protocol_31",  "EFI1.1 Network Interface Identifier Protocol");
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID, "Network Interface Identifier Protocol", "EFI Network Interface Identifier Protocol");
+	EFI_GUID_STRING(EFI_TIMESTAMP_PROTOCOL_GUID, "Timestamp", "Timestamp");
 
 	/* File */
 	EFI_GUID_STRING(EFI_IDEBUSDXE_INF_GUID, "IdeBusDxe.inf", "EFI IdeBusDxe.inf File GUID");
diff --git a/include/efi.h b/include/efi.h
index 4b812c9ab..d1b331ce5 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -469,6 +469,9 @@ extern efi_runtime_services_t *RT;
 #define EFI_VLANCONFIGDXE_INF_GUID \
 	EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
 
+#define EFI_TIMESTAMP_PROTOCOL_GUID \
+	EFI_GUID(0xafbfde41, 0x2e6e, 0x4262, 0xba, 0x65, 0x62, 0xb9, 0x23, 0x6e, 0x54, 0x95)
+
 /* barebox specific GUIDs */
 #define EFI_BAREBOX_VENDOR_GUID \
 	EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

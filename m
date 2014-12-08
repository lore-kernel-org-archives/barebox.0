Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008Ju-7g
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:06 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-4v
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:31 +0100
Message-Id: <1418046159-29843-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
References: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 04/12] efi: add Barebox GUID
To: barebox@lists.infradead.org

A proper GUID is needed to namespace all sorts of
things, most prominently persistent variables.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/efi.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/efi.h b/include/efi.h
index 49b8bd44bc1e..4abb5d2e3683 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -468,6 +468,10 @@ extern efi_runtime_services_t *RT;
 #define EFI_VLANCONFIGDXE_INF_GUID \
 	EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
 
+/* barebox specific GUIDs */
+#define EFI_BAREBOX_VENDOR_GUID \
+	EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_device_path_protocol_guid;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdd2-0007ls-5b
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:21:55 +0000
Received: from geraet.fritz.box (i538755FA.versanet.de [83.135.85.250])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C7F0A1C0008
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2019 07:21:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 16 Oct 2019 09:21:35 +0200
Message-Id: <20191016072139.2323-1-ahmad@a3f.at>
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
Subject: [PATCH 1/5] efi: Fix typo in description string
To: barebox@lists.infradead.org

s/Conosle/Console/

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/efi-guid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 1e45ccf4d238..2bf2395e8540 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -52,7 +52,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_ISA_IO_PROTOCOL_GUID, "ISA IO Protocol", "ISA IO Protocol");
 	EFI_GUID_STRING(EFI_STANDARD_ERROR_DEVICE_GUID, "Standard Error Device Guid", "EFI Standard Error Device Guid");
 	EFI_GUID_STRING(EFI_CONSOLE_OUT_DEVICE_GUID, "Console Out Device Guid", "EFI Console Out Device Guid");
-	EFI_GUID_STRING(EFI_CONSOLE_IN_DEVICE_GUID, "Console In Device Guid", "EFI Conosle In Device Guid");
+	EFI_GUID_STRING(EFI_CONSOLE_IN_DEVICE_GUID, "Console In Device Guid", "EFI Console In Device Guid");
 	EFI_GUID_STRING(EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID, "Simple Text Out Protocol", "EFI 1.0 Simple Text Out Protocol");
 	EFI_GUID_STRING(EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID, "Simple Text Input Ex Protocol", "UEFI 2.1 Simple Text Input Ex Protocol");
 	EFI_GUID_STRING(EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID, "Simple Text In Protocol", "EFI 1.0 Simple Text In Protocol");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

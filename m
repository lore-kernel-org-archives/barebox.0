Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4YMJ-0008Ln-FR
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 16:35:12 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 12EADFF9B54
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 18:34:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  8 Jul 2014 18:38:33 +0200
Message-Id: <1404837514-773-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] EFI: enable printf UUID support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/efi/Kconfig b/arch/efi/Kconfig
index f67ed9d..ed76b1e 100644
--- a/arch/efi/Kconfig
+++ b/arch/efi/Kconfig
@@ -6,6 +6,7 @@ config ARCH_EFI
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select EFI_GUID
 	select EFI_DEVICEPATH
+	select PRINTF_UUID
 
 config ARCH_TEXT_BASE
 	hex
-- 
1.9.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

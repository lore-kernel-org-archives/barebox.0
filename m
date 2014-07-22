Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9UxO-0006Jm-T4
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:55 +0000
Received: by mail-wg0-f52.google.com with SMTP id a1so7438068wgh.11
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:31 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:57:20 +0200
Message-Id: <1406015842-20754-2-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 1/3] sandbox: disable bareboxcrc32 in sandbox mode
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

It won't compile currently anyway.
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 469a5d7..dabb7ef 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -650,6 +650,7 @@ config BAREBOXENV_TARGET
 config BAREBOXCRC32_TARGET
 	bool
 	prompt "build bareboxcrc32 tool for target"
+	depends on !SANDBOX
 	help
 	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
 	  barebox does. Say yes here to build it for the target.
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

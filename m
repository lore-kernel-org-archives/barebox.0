Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBer8-0003tE-06
 for barebox@lists.infradead.org; Thu, 15 Jan 2015 07:28:38 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Thu, 15 Jan 2015 15:28:02 +0800
Message-ID: <1421306882-2188-2-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1421306882-2188-1-git-send-email-voice.shen@atmel.com>
References: <1421306882-2188-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 2/2] ARM: atmel: sama5d4ek: correct the typo
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/sama5d4ek/sama5d4ek.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/sama5d4ek/sama5d4ek.c b/arch/arm/boards/sama5d4ek/sama5d4ek.c
index bbc53c6..1e7c08c 100644
--- a/arch/arm/boards/sama5d4ek/sama5d4ek.c
+++ b/arch/arm/boards/sama5d4ek/sama5d4ek.c
@@ -1,5 +1,5 @@
 /*
- * SAMA5D4EK board configureation.
+ * SAMA5D4EK board configuration.
  *
  * Copyright (C) 2014 Atmel Corporation,
  *		      Bo Shen <voice.shen@atmel.com>
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

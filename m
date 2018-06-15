Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5t-0000d0-8Z
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:26 +0000
Received: by mail-pl0-x244.google.com with SMTP id 6-v6so4127338plb.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:16 -0700
Message-Id: <20180615041136.23492-11-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/27] input: Add dependency on CONSOLE_FULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CONSOLE_SIMPLE allows only a single console device. Since first
console to be registerd for majority of the boards would be debug
serial there's no straightforward way to make input framework work
with CONSOLE_SIMPLE there.

Reflect that by making "Input device support" depend on CONSOLE_FULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/input/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 1f89ae389..6abad444e 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -3,7 +3,7 @@
 #
 
 menu "Input device support"
-	depends on !CONSOLE_NONE
+	depends on CONSOLE_FULL
 
 config INPUT
 	bool
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

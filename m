Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5r-0000cf-IC
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:24 +0000
Received: by mail-pf0-x241.google.com with SMTP id b17-v6so4260766pfi.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:14 -0700
Message-Id: <20180615041136.23492-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/27] ratp: Add dependency on CONSOLE_FULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CONSOLE_SIMPLE does not provide implementation of
console_set_active(). Instead of providing a dummy implementation to
cover for that, add dependency on CONSOLE_FULL since RATP would be
severely limited by single console device limitation of
CONSOLE_SIMPLE.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index 3d0665570..659f51bd1 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -95,6 +95,7 @@ config STMP_DEVICE
 
 config RATP
 	select CRC16
+	depends on CONSOLE_FULL
 	bool "RATP protocol support"
 	help
 	  Reliable Asynchronous Transfer Protocol (RATP) is a protocol for reliably
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

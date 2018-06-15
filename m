Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5s-0000cn-6s
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:25 +0000
Received: by mail-pf0-x242.google.com with SMTP id b17-v6so4260780pfi.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:15 -0700
Message-Id: <20180615041136.23492-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/27] netconsole: Add dependency on CONSOLE_FULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CONSOLE_SIMPLE allows only a single console device. Since first
console to be registerd for majority of the boards would be debug
serial, there's no straightforward way to make netconsole work with
CONSOLE_SIMPLE there.

Reflect that by making NET_NETCONSOLE depend on CONSOLE_FULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 net/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/Kconfig b/net/Kconfig
index 12b6bdb56..b396bc830 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -9,7 +9,7 @@ config NET_NFS
 
 config NET_NETCONSOLE
 	bool
-	depends on !CONSOLE_NONE
+	depends on CONSOLE_FULL
 	prompt "network console support"
 	help
 	  This option adds support for a simple udp based network console.
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

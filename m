Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P9N-0006Ns-Sl
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:19 +0000
Received: by mail-pf1-x433.google.com with SMTP id s5-v6so7868334pfj.7
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:36:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:37 -0700
Message-Id: <20181008063542.18709-12-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063542.18709-1-andrew.smirnov@gmail.com>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/16] include: linux: ethtool: Add missing *_UNKNOWN constants
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/ethtool.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 4d83fe019..324e40cde 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -72,9 +72,12 @@
 #define SPEED_2500		2500
 #define SPEED_10000		10000
 
+#define SPEED_UNKNOWN		-1
+
 /* Duplex, half or full. */
 #define DUPLEX_HALF		0x00
 #define DUPLEX_FULL		0x01
+#define DUPLEX_UNKNOWN		0xff
 
 /* Which connector port. */
 #define PORT_TP			0x00
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vy5-0002l9-M9
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:39:03 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 23-v6so1153634pgc.8
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:38:00 -0700
Message-Id: <20181009173805.26181-13-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/17] include: linux: ethtool: Add missing *_UNKNOWN
 constants
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

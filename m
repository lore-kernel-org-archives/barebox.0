Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Rxm-0006Bf-8d
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 13:15:03 +0000
Received: by mail-pl0-x241.google.com with SMTP id f5-v6so11888083plj.13
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2018 06:14:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Mar 2018 06:14:45 -0700
Message-Id: <20180326131445.11229-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] aiodev: Constify 'unit' in 'struct aiodev'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The way it is currently used, there's no reason for 'uint' field to be
mutable, so constify it in order to allow 'aiodev' drivers to pass
sting literals in that field.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/aiodev.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/aiodev.h b/include/aiodev.h
index 0d4f7a294..5e38b4fab 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -23,7 +23,7 @@
 struct aiodevice;
 struct aiochannel {
 	int index;
-	char *unit;
+	const char *unit;
 	struct aiodevice *aiodev;
 
 	int value;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGA3k-0001MZ-8V
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:22:09 +0000
Received: by mail-pf0-x241.google.com with SMTP id f189so24538563pfa.7
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:21:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:21:25 -0700
Message-Id: <20180508212125.5923-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212125.5923-1-andrew.smirnov@gmail.com>
References: <20180508212125.5923-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] common: oftree: Pass reset source and reset source
 instance to kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Detecting reset reason is, in some cases, a destructive operation and
in such cases it is impossible to obtain that information in the
kernel without some help from barebox.

Pass reset source and reset source instance to kernel to Linux to
make it availible to Linux userspace. We use put the version under
/chosen/bootsource and it can be read under Linux in

/sys/firmware/devicetree/base/chosen/reset-source.

and

/sys/firmware/devicetree/base/chosen/reset-source-instance.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/oftree.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 9c94ca116..a6633c453 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -13,6 +13,7 @@
 #include <boot.h>
 #include <bootsource.h>
 #include <i2c/i2c.h>
+#include <reset_source.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -132,6 +133,10 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 
 	of_property_write_string(node, "barebox-version", release_string);
 
+	of_property_write_string(node, "reset-source", reset_source_name());
+	of_property_write_u32(node, "reset-source-instance",
+			      reset_source_get_instance());
+
 	of_property_write_string(node, "bootsource", getenv("bootsource"));
 	instance = bootsource_get_instance();
 	of_property_write_u32(node, "bootsource-instance",
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

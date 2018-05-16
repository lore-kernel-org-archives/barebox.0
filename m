Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2tD-0008EE-5t
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:19:13 +0000
Received: by mail-pf0-x242.google.com with SMTP id o76-v6so910365pfi.5
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:19:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:18:27 -0700
Message-Id: <20180516201827.6430-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180516201827.6430-1-andrew.smirnov@gmail.com>
References: <20180516201827.6430-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/4] common: oftree: Pass reset source and reset source
 instance to kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Detecting reset reason is, in some cases, a destructive operation and
in such cases it is impossible to obtain that information in the
kernel without some help from barebox.

Pass reset source and reset source instance to kernel to Linux to make
it availible to Linux userspace. This info is placeed under
/chosen/bootsource and it can be read under Linux in

/sys/firmware/devicetree/base/chosen/reset-source.

and

/sys/firmware/devicetree/base/chosen/reset-source-instance.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/oftree.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 5ab6bf089..5b592fb07 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -13,6 +13,7 @@
 #include <boot.h>
 #include <bootsource.h>
 #include <i2c/i2c.h>
+#include <reset_source.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -176,6 +177,10 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	if (err)
 		return err;
 
+	of_property_write_string(node, "reset-source", reset_source_name());
+	of_property_write_u32(node, "reset-source-instance",
+			      reset_source_get_instance());
+
 	return of_fixup_bootargs_bootsource(root, node);
 }
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

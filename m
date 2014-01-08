Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0jA9-0001Z4-HK
 for barebox@lists.infradead.org; Wed, 08 Jan 2014 02:46:34 +0000
Received: by mail-pb0-f49.google.com with SMTP id jt11so952270pbb.36
 for <barebox@lists.infradead.org>; Tue, 07 Jan 2014 18:46:11 -0800 (PST)
Received: from san0.fossix.org ([122.167.98.3])
 by mx.google.com with ESMTPSA id sy10sm182380340pac.15.2014.01.07.18.45.50
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Jan 2014 18:46:07 -0800 (PST)
Date: Wed, 8 Jan 2014 08:15:39 +0530
From: Santosh Sivaraj <santosh@fossix.org>
Message-ID: <20140108024539.GA13274@san0.fossix.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] Make number of GPT partitions a configurable option
To: barebox@lists.infradead.org

Theoritically there is no limit for the partitions that can be created
based on EFI/GPT, so make the number of partitions that can be visible
in barebox a configurable option.

Signed-off-by: Santosh Sivaraj <santosh@fossix.org>
---
 common/partitions/Kconfig  | 5 +++++
 common/partitions/parser.h | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 90238ad..f3353dd 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -31,3 +31,8 @@ config PARTITION_DISK_EFI_GPT_COMPARE
 	depends on PARTITION_DISK_EFI
 	default y
 	bool "EFI: GPT: compare primary and Alternate GPT header for validity"
+
+config MAX_PARTITIONS
+	depends on PARTITION_DISK_EFI
+	int "Maximum of partitions needed to be supported on a GPT"
+	default 8
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 8d39452..d1154d7 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -11,7 +11,7 @@
 #include <filetype.h>
 #include <linux/list.h>
 
-#define MAX_PARTITION		8
+#define MAX_PARTITION		CONFIG_MAX_PARTITIONS
 #define MAX_PARTITION_NAME	38
 
 struct partition {
-- 
1.8.4.2
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

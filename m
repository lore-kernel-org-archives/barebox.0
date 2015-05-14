Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIi-0000JK-QG
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:11 +0000
Received: by pacwv17 with SMTP id wv17so69482564pac.0
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:21 -0700
Message-Id: <1431572067-4038-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/10] common/memtest.c: Distil common error reporting code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move all of the common code for error message output into a new
function mem_test_report_failure() and convert the rest of the code to
use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/memtest.c | 53 ++++++++++++++++++++++++++++-------------------------
 1 file changed, 28 insertions(+), 25 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 57e2ad9..d8d1154 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -28,6 +28,17 @@
 #include <errno.h>
 #include <memtest.h>

+static void mem_test_report_failure(const char *failure_description,
+				    resource_size_t expected_value,
+				    resource_size_t actual_value,
+				    volatile resource_size_t *address)
+{
+	printf("FAILURE (%s): "
+	       "expected 0x%08x, actual 0x%08x at address 0x%08x.\n",
+	       failure_description, expected_value, actual_value,
+	       (resource_size_t)address);
+}
+
 int mem_test_bus_integrity(resource_size_t _start,
 			   resource_size_t _end)
 {
@@ -87,9 +98,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 			*dummy = ~val;
 			readback = *start;
 			if (readback != val) {
-				printf("FAILURE (data line): "
-					"expected 0x%08x, actual 0x%08x at address 0x%08x.\n",
-					val, readback, (resource_size_t)start);
+				mem_test_report_failure("data line",
+							val, readback, start);
 				return -EIO;
 			}

@@ -97,10 +107,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 			*dummy = val;
 			readback = *start;
 			if (readback != ~val) {
-				printf("FAILURE (data line): "
-					"Is 0x%08x, should be 0x%08x at address 0x%08x.\n",
-					readback,
-					~val, (resource_size_t)start);
+				mem_test_report_failure("data line",
+							~val, readback, start);
 				return -EIO;
 			}
 		}
@@ -174,11 +182,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 	for (offset = 1; offset <= num_words; offset <<= 1) {
 		temp = start[offset];
 		if (temp != pattern) {
-			printf("FAILURE: Address bit "
-					"stuck high @ 0x%08x:"
-					" expected 0x%08x, actual 0x%08x.\n",
-					(resource_size_t)&start[offset],
-					pattern, temp);
+			mem_test_report_failure("address bit stuck high",
+						pattern, temp, &start[offset]);
 			return -EIO;
 		}
 	}
@@ -203,11 +208,9 @@ int mem_test_bus_integrity(resource_size_t _start,

 			if ((temp != pattern) &&
 					(offset != offset2)) {
-				printf("FAILURE: Address bit stuck"
-						" low or shorted @"
-						" 0x%08x: expected 0x%08x, actual 0x%08x.\n",
-						(resource_size_t)&start[offset],
-						pattern, temp);
+				mem_test_report_failure(
+					"address bit stuck low or shorted",
+					pattern, temp, &start[offset]);
 				return -EIO;
 			}
 		}
@@ -278,10 +281,10 @@ int mem_test_dram(resource_size_t _start,

 		temp = start[offset];
 		if (temp != (offset + 1)) {
-			printf("\nFAILURE (read/write) @ 0x%08x:"
-					" expected 0x%08x, actual 0x%08x.\n",
-					(resource_size_t)&start[offset],
-					(offset + 1), temp);
+			printf("\n");
+			mem_test_report_failure("read/write",
+						(offset + 1),
+						temp, &start[offset]);
 			return -EIO;
 		}

@@ -306,10 +309,10 @@ int mem_test_dram(resource_size_t _start,
 		temp = start[offset];

 		if (temp != anti_pattern) {
-			printf("\nFAILURE (read/write): @ 0x%08x:"
-					" expected 0x%08x, actual 0x%08x.\n",
-					(resource_size_t)&start[offset],
-					anti_pattern, temp);
+			printf("\n");
+			mem_test_report_failure("read/write",
+						anti_pattern,
+						temp, &start[offset]);
 			return -EIO;
 		}

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

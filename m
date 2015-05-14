Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIi-0000IV-QK
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:10 +0000
Received: by pdea3 with SMTP id a3so70199963pde.3
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:19 -0700
Message-Id: <1431572067-4038-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/10] common/memtest.c: Do not omit offset of 0 from tests
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Ommiting offset 0 from address line tests allows certain corner cases
of faults to be undetected.

For the "stuck high" case, consider scenario in which all of the
tested address lines are stuck high. In original code first data
filling loop would execute writing data to a single cell multiple
times and second loop would just read data from that cell over and
over again. Adding a write to start[0] should prevent this since it
would cause the second loop to read incorrect data on its first
iteration.

For the "stuck low" case, having any of the tested bits of the address
shorted would effectively "remap" that memory cell to start[0] in this
case excluding start[0] during the verification phase would result in
a false positive result.

Note that both of the changes are present in Michael Barr's code here:
http://www.esacademy.com/en/library/technical-articles-and-documents/miscellaneous/software-based-memory-testing.html

and the code in barebox is based on that code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/memtest.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/common/memtest.c b/common/memtest.c
index 3b0bcb7..9eda788 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -170,6 +170,15 @@ int mem_test(resource_size_t _start,
 	for (offset = 1; offset <= num_words; offset <<= 1)
 		start[offset] = pattern;

+	/*
+	 * Now write anti-pattern at offset 0. If during the previous
+	 * step one of the address lines got stuck high this
+	 * operation would result in a memory cell at power-of-two
+	 * offset being set to anti-pattern which hopefully would be
+	 * detected byt the loop that follows.
+	 */
+	start[0] = anti_pattern;
+
 	printf("Check for address bits stuck high.\n");

 	/*
@@ -187,6 +196,11 @@ int mem_test(resource_size_t _start,
 		}
 	}

+	/*
+	  Restore original value
+	 */
+	start[0] = pattern;
+
 	printf("Check for address bits stuck "
 			"low or shorted.\n");

@@ -196,7 +210,8 @@ int mem_test(resource_size_t _start,
 	for (offset2 = 1; offset2 <= num_words; offset2 <<= 1) {
 		start[offset2] = anti_pattern;

-		for (offset = 1; offset <= num_words; offset <<= 1) {
+		for (offset = 0; offset <= num_words;
+		     offset = (offset) ? offset << 1 : 1) {
 			temp = start[offset];

 			if ((temp != pattern) &&
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

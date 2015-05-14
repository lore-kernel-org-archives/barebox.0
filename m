Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIi-0000IR-QX
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:10 +0000
Received: by pdbqa5 with SMTP id qa5so70297319pdb.1
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:18 -0700
Message-Id: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/10] common/memtest.c: Fix incorrect array boundary check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/memtest.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/memtest.c b/common/memtest.c
index 25a97d8..3b0bcb7 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -91,8 +91,7 @@ int mem_test(resource_size_t _start,
 	 * '0's and '0' bits through a field of '1's (i.e.
 	 * pattern and ~pattern).
 	 */
-	for (i = 0; i < ARRAY_SIZE(bitpattern)/
-			sizeof(resource_size_t); i++) {
+	for (i = 0; i < ARRAY_SIZE(bitpattern); i++) {
 		val = bitpattern[i];

 		for (; val != 0; val <<= 1) {
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

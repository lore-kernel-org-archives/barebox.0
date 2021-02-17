Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCNo0-0001l9-2q
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 14:27:53 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4DggD46n8PzQlZc
 for <barebox@lists.infradead.org>; Wed, 17 Feb 2021 15:27:48 +0100 (CET)
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id KnkOZQ0rJHlA for <barebox@lists.infradead.org>;
 Wed, 17 Feb 2021 15:27:44 +0100 (CET)
From: Marcel Hellwig <git@cookiesoft.de>
Date: Wed, 17 Feb 2021 15:27:44 +0100
Message-Id: <20210217142744.3166-1-git@cookiesoft.de>
MIME-Version: 1.0
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
Subject: [PATCH] common: memtest: Allow memtest to be interrupted
To: barebox@lists.infradead.org

This change will allow the user to interrupt a running memtest, as well
as poller to run in the background. This makes it possible to let a led
blink while doing a memtest to indicate process.

Signed-off-by: Marcel Hellwig <git@cookiesoft.de>
---
 common/memtest.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/memtest.c b/common/memtest.c
index d47e4a672..0834f344e 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -390,6 +390,8 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		if (ret)
 			return ret;
 		start[offset] = offset + 1;
+		if (ctrlc())
+			return -EINTR;
 	}
 
 	/* Check each location and invert it for the second pass */
@@ -409,6 +411,8 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 		anti_pattern = ~(offset + 1);
 		start[offset] = anti_pattern;
+		if (ctrlc())
+			return -EINTR;
 	}
 
 	/* Check each location for the inverted pattern and zero it */
@@ -429,6 +433,8 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 		}
 
 		start[offset] = 0;
+		if (ctrlc())
+			return -EINTR;
 	}
 	show_progress(3 * num_words);
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

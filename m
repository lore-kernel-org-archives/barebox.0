Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoqo-0000PI-Cr
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:33:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:32:55 +0200
Message-Id: <1335785575-14953-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
References: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] tlsf_malloc: return valid pointer for malloc(0)
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsf_malloc.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 2fe443b..8143d66 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -33,6 +33,13 @@ extern tlsf_pool tlsf_mem_pool;
 
 void *malloc(size_t bytes)
 {
+	/*
+	 * tlsf_malloc returns NULL for zero bytes, we instead want
+	 * to have a valid pointer.
+	 */
+	if (!bytes)
+		bytes = 1;
+
 	return tlsf_malloc(tlsf_mem_pool, bytes);
 }
 EXPORT_SYMBOL(malloc);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

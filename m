Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkmTf-0001PG-5H
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 00:55:44 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9AB33FFCC10
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 01:56:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 01:48:51 +0100
Message-Id: <1326242931-13085-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] dummy_malloc: add calloc support
To: barebox@lists.infradead.org

needed to use menu framework

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/dummy_malloc.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index 213e51d..ccee521 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -24,3 +24,15 @@ void *realloc(void *ptr, size_t size)
 	BUG();
 }
 
+void *calloc(size_t n, size_t elem_size)
+{
+	size_t size = elem_size * n;
+	void *r = malloc(size);
+
+	if (!r)
+		return r;
+
+	memset(r, 0x0, size);
+
+	return r;
+}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

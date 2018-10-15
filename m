Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6ER-0003TM-EG
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 17:00:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id f18-v6so9609923plr.1
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 10:00:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 10:00:19 -0700
Message-Id: <20181015170021.22617-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181015170021.22617-1-andrew.smirnov@gmail.com>
References: <20181015170021.22617-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] dummy_malloc: Check if sbrk() fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to check if sbrk() fails as well as setting appropriate
'errno' for users that may rely on it for error reporting.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/dummy_malloc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index ab6712018..0120d9be2 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -32,6 +32,11 @@ void *memalign(size_t alignment, size_t bytes)
 {
 	void *mem = sbrk(bytes + alignment);
 
+	if (!mem) {
+		errno = ENOMEM;
+		return NULL;
+	}
+
 	return PTR_ALIGN(mem, alignment);
 }
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6EX-0003TU-Fc
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 17:00:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id e67-v6so619320plb.6
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 10:00:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 10:00:21 -0700
Message-Id: <20181015170021.22617-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/5] libfile: Error out if out of memory in read_file_2()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All other error cases in read_file_2() are handled gracefully, so
there shouldn't be any reason not do so for the case of trying to
allocate too much memory. This error path can be easily triggered
with:

barebox_update file-bigger-than-availible-ram.img

Currently this would result in a crash which is not really desirable
from user experience.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 39c85b2fc..8f2aed230 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -185,7 +185,11 @@ again:
 		goto again;
 	}
 
-	buf = xzalloc(read_size + 1);
+	buf = calloc(read_size + 1, 1);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto err_out;
+	}
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

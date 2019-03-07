Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nma-0004tx-Ic
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id n22so10810536pfa.3
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:11 -0800
Message-Id: <20190307074926.20539-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/17] common: Always return enum filetype in
 file_name_detect_type_offset()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

None of the callers of file_name_detect_type_offset() are prepared to
deal with negative error code. Change the code to return
filetype_unknown if open_and_lseek() fails.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index f8b6bc895..fb029a773 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -383,7 +383,7 @@ enum filetype file_name_detect_type_offset(const char *filename, loff_t pos)
 
 	fd = open_and_lseek(filename, O_RDONLY, pos);
 	if (fd < 0)
-		return fd;
+		goto out;
 
 	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
 
@@ -396,7 +396,7 @@ enum filetype file_name_detect_type_offset(const char *filename, loff_t pos)
 err_out:
 	close(fd);
 	free(buf);
-
+out:
 	return type;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

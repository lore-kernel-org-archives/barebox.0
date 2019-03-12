Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bsI-0004fB-SI
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:31:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id l11so1137545pgq.10
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:30:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:30:49 -0700
Message-Id: <20190312073049.26055-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190312073049.26055-1-andrew.smirnov@gmail.com>
References: <20190312073049.26055-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] commands: memcpy: Make use of min_t()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memcpy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memcpy.c b/commands/memcpy.c
index 803f06e57..ef25fb7b2 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -86,7 +86,7 @@ static int do_memcpy(int argc, char *argv[])
 	while (count > 0) {
 		int now, r;
 
-		now = min((loff_t)RW_BUF_SIZE, count);
+		now = min_t(loff_t, RW_BUF_SIZE, count);
 
 		r = read(sourcefd, buf, now);
 		if (r < 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

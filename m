Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoQw-0006jl-44
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:34 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5FA70FFB52A
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:58:59 +0200
Message-Id: <1348653544-27095-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120926095650.GG31983@game.jcrosoft.org>
References: <20120926095650.GG31983@game.jcrosoft.org>
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
Subject: [PATCH 1/6] image_renderer: fix size type
To: barebox@lists.infradead.org

/opt/work/barebox/lib/image_renderer.c: In function 'image_renderer_open':
/opt/work/barebox/lib/image_renderer.c:37:2: warning: passing argument 2 of 'read_file' from incompatible pointer type [enabled by default]
In file included from /opt/work/barebox/lib/image_renderer.c:11:0:
/opt/work/barebox/include/fs.h:167:7: note: expected 'size_t *' but argument is of type 'int *'

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/image_renderer.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/image_renderer.c b/lib/image_renderer.c
index b08f6bf..fff35bd 100644
--- a/lib/image_renderer.c
+++ b/lib/image_renderer.c
@@ -29,7 +29,7 @@ static struct image_renderer *get_renderer(void* buf)
 struct image *image_renderer_open(const char* file)
 {
 	void *data;
-	int size;
+	size_t size;
 	struct image_renderer *ir;
 	struct image *img;
 	int ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s1.linux-source.de ([2a03:4000:2:2ac::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9BAJ-0002Vt-P1
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 10:49:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by s1.linux-source.de (Postfix) with ESMTP id BA2AF180177
 for <barebox@lists.infradead.org>; Mon, 21 Jul 2014 12:43:13 +0200 (CEST)
Received: from s1.linux-source.de ([127.0.0.1])
 by localhost (v22010076022355399.yourvserver.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id UMAiHY2w-4BT for <barebox@lists.infradead.org>;
 Mon, 21 Jul 2014 12:43:13 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 21 Jul 2014 12:43:13 +0200
From: basti@linux-source.de
Message-ID: <6b8c916b058b2ea98a40c6d701186608@linux-source.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arch/arm/lib/bootm: fix length check of kernel image
To: barebox@lists.infradead.org

Signed-off-by: Sebastian Block <basti@linux-source.de>
---
  arch/arm/lib/bootm.c |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 4896d01..d9b9111 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -314,7 +314,7 @@ static int do_bootz_linux(struct image_data *data)
  			image_size - sizeof(*header));
  	if (ret < 0)
  		goto err_out;
-	if (ret < end - sizeof(*header)) {
+	if (ret < image_size - sizeof(*header)) {
  		printf("premature end of image\n");
  		ret = -EIO;
  		goto err_out;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

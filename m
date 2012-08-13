Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0oaN-0007yn-9u
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 06:57:11 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CCAD01054AF9
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 09:01:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Aug 2012 08:57:12 +0200
Message-Id: <1344841034-10068-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344841034-10068-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120813065448.GM6271@game.jcrosoft.org>
 <1344841034-10068-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] bootm: do not load the initrd in the common code
To: barebox@lists.infradead.org

This need to be handled by the arch bootm as the address can be invalid and
provided at arch level.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 3c47ab5..5f858e8 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -126,14 +126,6 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 	if (data->initrd_address == UIMAGE_SOME_ADDRESS)
 		data->initrd_address = data->initrd->header.ih_load;
 
-	if (data->initrd_address != UIMAGE_INVALID_ADDRESS) {
-		data->initrd_res = uimage_load_to_sdram(data->initrd,
-				data->initrd_num,
-				data->initrd_address);
-		if (!data->initrd_res)
-			return -ENOMEM;
-	}
-
 	return 0;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

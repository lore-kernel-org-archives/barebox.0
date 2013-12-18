Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJHF-0001Rz-OK
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:42 +0100
Message-Id: <1387381362-7780-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] video: simplefb: Add of reserve entry for framebuffer
 memory
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/simplefb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
index 834704b..fcd7517 100644
--- a/drivers/video/simplefb.c
+++ b/drivers/video/simplefb.c
@@ -126,6 +126,9 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
+	of_add_reserve_entry((u32)fbi->screen_base,
+			(u32)fbi->screen_base + fbi->screen_size);
+
 	return of_set_property(node, "status", okay, strlen(okay) + 1, 1);
 }
 
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

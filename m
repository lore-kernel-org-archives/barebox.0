Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5yX-0002Yy-AP
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:07:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:07:06 +0100
Message-Id: <1452870438-29656-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] ARM: zImage: add missing free() in appended device tree
 code
To: Barebox List <barebox@lists.infradead.org>

oftree must be freed when the tree is successfully unflattened.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 7bb9b43..2439c36 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -223,6 +223,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 			ret = -EINVAL;
 			goto err_free;
 		}
+		free(oftree);
 	} else {
 		data->oftree = oftree;
 	}
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

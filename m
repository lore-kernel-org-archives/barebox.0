Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5i7-0000r8-J4
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:20:29 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 65309FF8831
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:21:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:02:23 +0200
Message-Id: <1334419343-1121-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414155623.GA30672@game.jcrosoft.org>
References: <20120414155623.GA30672@game.jcrosoft.org>
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
Subject: [PATCH 6/6] arm: bootm: zImage: add error message when can not
 request the memory
To: barebox@lists.infradead.org

This will allow to understand what happened.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 26053dc..1e29afd 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -239,6 +239,8 @@ static int do_bootz_linux(struct image_data *data)
 
 	data->os_res = request_sdram_region("zimage", load_address, end);
 	if (!data->os_res) {
+		pr_err("bootm/zImage: failled to request memory at 0x%lx to 0x%lx (%d).\n",
+		       load_address, load_address + end, end);
 		ret = -ENOMEM;
 		goto err_out;
 	}
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBc-0005D5-CR
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:27 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 94126FF98D3
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:29 +0200
Message-Id: <1311095849-16071-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/8] armlinux: mem tag switch to "struct resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index ce1cc6b..e35e45d 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -79,8 +79,8 @@ static void setup_memory_tags(void)
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = mem->dev->map_base;
-		params->u.mem.size = mem->dev->size;
+		params->u.mem.start = mem->dev->resource[0].start;
+		params->u.mem.size = mem->dev->resource[0].size;
 
 		params = tag_next(params);
 	}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

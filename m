Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wy-0000gV-89
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:56 +0000
Received: by mail-ea0-f174.google.com with SMTP id n15so1385571ead.19
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:30 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:20 +0100
Message-Id: <1384003461-21039-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/5] OF: parse OF clock providers after populate
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds a call to of_clk_init right after platform devices have been
populated.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ba929bc..ea2d879 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1734,6 +1734,7 @@ int of_probe(void)
 		of_add_memory(memory, false);
 
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
+	of_clk_init(root_node, NULL);
 
 	return 0;
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

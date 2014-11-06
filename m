Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmNm9-0004qk-0w
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 14:11:09 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XmNlm-0002AT-CB
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 15:10:38 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Nov 2014 15:10:38 +0100
Message-Id: <1415283038-5097-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] blspec: fix incompatible pointer type warning
To: barebox@lists.infradead.org

The warning is correct in that we pass in size_t instead
of int. As we are not interested in the size of the
property at this point, just remove the assignment.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index a4adc48da967..f46a11d44c0e 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -294,7 +294,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	}
 
 	pr_info("ignoring entry with incompatible devicetree \"%s\"\n",
-			(char *)of_get_property(root, "compatible", &size));
+			(char *)of_get_property(root, "compatible", NULL));
 
 	ret = false;
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

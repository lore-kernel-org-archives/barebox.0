Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr0S3-0003Ns-K4
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 07:12:52 +0000
Received: by mail-ee0-f50.google.com with SMTP id c41so463eek.23
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 23:12:29 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 12 Dec 2013 08:21:04 +0100
Message-Id: <1386832864-6082-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] cpsw: fix dt probe for one port ethernet
To: barebox@lists.infradead.org

Taken from linux-omap mailinglist. See:

http://marc.info/?l=linux-omap&m=138682143215842&w=2

Original commit-msg:

When only one port of the two port is pinned out, then dt probe is failing
because second port phy is not found. fixing this by checking the number of
slaves and breaking the loop.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
I think we need this, too. Only compile tested.

 drivers/net/cpsw.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 5e68e1b..f82117c 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1076,6 +1076,8 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 			slave->phy_if = of_get_phy_mode(child);
 
 			i++;
+			if (i == priv->num_slaves)
+				break;
 		}
 	}
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

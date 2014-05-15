Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpDb-0000rN-3Q
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:32:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:32:12 +0200
Message-Id: <1400135535-29312-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
References: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] net: ifup: Set current ethernet device when doing ifup
To: barebox@lists.infradead.org

When doing an ifup set the current interface to the one just
brought up so that it is actually used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ifup.c b/net/ifup.c
index 409b338..f3b65f7 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -58,6 +58,8 @@ int ifup(const char *name, unsigned flags)
 	if (edev && edev->ipaddr && !(flags & IFUP_FLAG_FORCE))
 		return 0;
 
+	eth_set_current(edev);
+
 	env_push_context();
 
 	setenv("ip", "");
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

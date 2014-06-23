Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WyySx-0002zG-KR
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:15:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Jun 2014 09:14:36 +0200
Message-Id: <1403507676-29816-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: ifup: skip *-discover files for ifup -a
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ifup.c b/net/ifup.c
index 2e59025..de0c5f8 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -136,6 +136,8 @@ int ifup_all(unsigned flags)
 	while ((d = readdir(dir))) {
 		if (*d->d_name == '.')
 			continue;
+		if (strstr(d->d_name, "-discover"))
+			continue;
 		ifup(d->d_name, flags);
 	}
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7d-0002Ap-Qr
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:18 +0000
Received: by mail-lb0-f175.google.com with SMTP id w6so3198141lbh.34
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:55 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:05 +0400
Message-Id: <1387957805-1532-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
References: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] net/phy/phy.c: fix whitespace
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/phy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 681fb51..6ca1bb2 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -773,7 +773,7 @@ int phy_driver_register(struct phy_driver *phydrv)
 
 	return register_driver(&phydrv->drv);
 }
- 
+
 int phy_drivers_register(struct phy_driver *new_driver, int n)
 {
 	int i, ret = 0;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

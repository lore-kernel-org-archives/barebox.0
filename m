Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzNoM-0006XT-IU
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:18:48 +0000
Received: by mail-wg0-f52.google.com with SMTP id b13so92818wgh.11
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:18:23 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:18:08 +0200
Message-Id: <1403605091-26174-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/4] of: net: respect phy-connection-type property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

ePAPR defines phy-connection-type as standard property for PHY interface
between Ethernet device and PHY device. Add corresponding property check
to of_get_phy_mode.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/of_net.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 2bf05e2ba21d..0320c1d4f50e 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -44,6 +44,8 @@ int of_get_phy_mode(struct device_node *np)
 
 	err = of_property_read_string(np, "phy-mode", &pm);
 	if (err < 0)
+		err = of_property_read_string(np, "phy-connection-type", &pm);
+	if (err < 0)
 		return err;
 
 	for (i = 0; i < ARRAY_SIZE(phy_modes); i++)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

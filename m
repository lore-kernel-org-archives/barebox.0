Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi8-0002CA-Ov
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:49 +0000
Received: by mail-we0-f172.google.com with SMTP id k48so1677485wev.31
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:29 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:35 +0200
Message-Id: <1401440856-6145-10-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 09/10] beautify PHY driver names
To: barebox@lists.infradead.org

Some device names where texts like "Atheros 8035 ethernet" or similar. They
now got a prefix "phy-" and just their name and look now much more like the
other driver names.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 drivers/net/phy/at803x.c   |    6 +++---
 drivers/net/phy/lxt.c      |    2 +-
 drivers/net/phy/micrel.c   |   18 +++++++++---------
 drivers/net/phy/national.c |    2 +-
 drivers/net/phy/phy.c      |    2 +-
 drivers/net/phy/smsc.c     |   10 +++++-----
 6 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index a244c87..a7b3ece 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -88,7 +88,7 @@ static struct phy_driver at803x_driver[] = {
 	/* ATHEROS 8035 */
 	.phy_id		= 0x004dd072,
 	.phy_id_mask	= 0xffffffef,
-	.drv.name	= "Atheros 8035 ethernet",
+	.drv.name	= "phy-ath8035",
 	.config_init	= at803x_config_init,
 	.features	= PHY_GBIT_FEATURES,
 	.config_aneg	= &genphy_config_aneg,
@@ -97,7 +97,7 @@ static struct phy_driver at803x_driver[] = {
 	/* ATHEROS 8030 */
 	.phy_id		= 0x004dd076,
 	.phy_id_mask	= 0xffffffef,
-	.drv.name	= "Atheros 8030 ethernet",
+	.drv.name	= "phy-ath8030",
 	.config_init	= at803x_config_init,
 	.features	= PHY_GBIT_FEATURES,
 	.config_aneg	= &genphy_config_aneg,
@@ -106,7 +106,7 @@ static struct phy_driver at803x_driver[] = {
 	/* ATHEROS 8031 */
 	.phy_id		= 0x004dd074,
 	.phy_id_mask	= 0xffffffef,
-	.drv.name	= "Atheros 8031 ethernet",
+	.drv.name	= "phy-ath8031",
 	.config_init	= at803x_config_init,
 	.features	= PHY_GBIT_FEATURES,
 	.config_aneg	= &genphy_config_aneg,
diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
index 9e5ddbb..3ec5299 100644
--- a/drivers/net/phy/lxt.c
+++ b/drivers/net/phy/lxt.c
@@ -19,7 +19,7 @@ static struct phy_driver lxt97x_driver[] = {
 {
 	.phy_id		= 0x001378e0,
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "LXT971",
+	.drv.name	= "phy-lxt971",
 	.features	= PHY_BASIC_FEATURES,
 } };
 
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 8aea653..cf4ee77 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -191,7 +191,7 @@ static struct phy_driver ksphy_driver[] = {
 {
 	.phy_id		= PHY_ID_KS8737,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name	= "Micrel KS8737",
+	.drv.name	= "phy-ks8737",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
 	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
@@ -199,7 +199,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8021,
 	.phy_id_mask	= 0x00ffffff,
-	.drv.name	= "Micrel KSZ8021",
+	.drv.name	= "phy-ksz8021",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
 			   SUPPORTED_Asym_Pause),
 	.config_init	= ksz8021_config_init,
@@ -208,7 +208,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8031,
 	.phy_id_mask	= 0x00ffffff,
-	.drv.name	= "Micrel KSZ8031",
+	.drv.name	= "phy-ksz8031",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
 			   SUPPORTED_Asym_Pause),
 	.config_init	= ksz8021_config_init,
@@ -217,7 +217,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8041,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name	= "Micrel KSZ8041",
+	.drv.name	= "phy-ksz8041",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
 	.config_init	= kszphy_config_init,
@@ -226,7 +226,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8051,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name		= "Micrel KSZ8051",
+	.drv.name		= "phy-ksz8051",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
 	.config_init	= ks8051_config_init,
@@ -234,7 +234,7 @@ static struct phy_driver ksphy_driver[] = {
 	.read_status	= genphy_read_status,
 }, {
 	.phy_id		= PHY_ID_KSZ8001,
-	.drv.name	= "Micrel KSZ8001 or KS8721",
+	.drv.name	= "phy-ksz8001-ks8721",
 	.phy_id_mask	= 0x00ffffff,
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
 	.config_init	= kszphy_config_init,
@@ -248,7 +248,7 @@ static struct phy_driver ksphy_driver[] = {
 	 */
 	.phy_id		= PHY_ID_KSZ9021,
 	.phy_id_mask	= 0x000ffffe,
-	.drv.name	= "Micrel KSZ9021 Gigabit PHY",
+	.drv.name	= "phy-ksz9021",
 	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
 	.config_init	= ksz9021_config_init,
 	.config_aneg	= genphy_config_aneg,
@@ -256,7 +256,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ9031,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name	= "Micrel KSZ9031 Gigabit PHY",
+	.drv.name	= "phy-ksz9031",
 	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
 	.config_init	= kszphy_config_init,
@@ -265,7 +265,7 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8873MLL,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name	= "Micrel KSZ8873MLL Switch",
+	.drv.name	= "phy-ksz8873mll",
 	.features	= (SUPPORTED_Pause | SUPPORTED_Asym_Pause),
 	.config_init	= ksz8873mll_config_init,
 	.config_aneg	= ksz8873mll_config_aneg,
diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
index e46d587..83374ec 100644
--- a/drivers/net/phy/national.c
+++ b/drivers/net/phy/national.c
@@ -82,7 +82,7 @@ static int ns_config_init(struct phy_device *phydev)
 static struct phy_driver dp83865_driver = {
 	.phy_id		= 0x20005c70,
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "NatSemi DP83865",
+	.drv.name	= "phy-dp83865",
 	.features	= PHY_GBIT_FEATURES |
 			SUPPORTED_Pause | SUPPORTED_Asym_Pause,
 	.config_init    = ns_config_init,
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 1a2fdf1..aef9350 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -855,7 +855,7 @@ int phy_init_hw(struct phy_device *phydev)
 }
 
 static struct phy_driver genphy_driver = {
-	.drv.name = "Generic PHY",
+	.drv.name = "phy-generic",
 	.phy_id = PHY_ANY_UID,
 	.phy_id_mask = PHY_ANY_UID,
 	.features = PHY_GBIT_FEATURES | SUPPORTED_MII |
diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
index a318624..e540754 100644
--- a/drivers/net/phy/smsc.c
+++ b/drivers/net/phy/smsc.c
@@ -80,7 +80,7 @@ static struct phy_driver smsc_phy_driver[] = {
 {
 	.phy_id		= 0x0007c0a0, /* OUI=0x00800f, Model#=0x0a */
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "SMSC LAN83C185",
+	.drv.name	= "phy-lan83c185",
 
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
@@ -92,7 +92,7 @@ static struct phy_driver smsc_phy_driver[] = {
 }, {
 	.phy_id		= 0x0007c0b0, /* OUI=0x00800f, Model#=0x0b */
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "SMSC LAN8187",
+	.drv.name	= "phy-lan8187",
 
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
@@ -104,7 +104,7 @@ static struct phy_driver smsc_phy_driver[] = {
 }, {
 	.phy_id		= 0x0007c0c0, /* OUI=0x00800f, Model#=0x0c */
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "SMSC LAN8700",
+	.drv.name	= "phy-lan8700",
 
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
@@ -116,7 +116,7 @@ static struct phy_driver smsc_phy_driver[] = {
 }, {
 	.phy_id		= 0x0007c0d0, /* OUI=0x00800f, Model#=0x0d */
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "SMSC LAN911x Internal PHY",
+	.drv.name	= "phy-lan911x",
 
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
@@ -128,7 +128,7 @@ static struct phy_driver smsc_phy_driver[] = {
 }, {
 	.phy_id		= 0x0007c0f0, /* OUI=0x00800f, Model#=0x0f */
 	.phy_id_mask	= 0xfffffff0,
-	.drv.name	= "SMSC LAN8710/LAN8720",
+	.drv.name	= "phy-lan8710",
 
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

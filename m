Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr20089.outbound.protection.outlook.com ([40.107.2.89]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsUD-00086q-NG
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:36:14 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:36:02 +0000
Message-ID: <1546958133-6556-6-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.d8af94ec-04db-4c9a-8f5a-ca89336b761c@emailsignatures365.codetwo.com>
In-Reply-To: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] zynqmp: enable macb Ethernet support
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 arch/arm/configs/zynqmp_defconfig | 1 +
 drivers/net/macb.c                | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_de=
fconfig
index 4dea964..a358a50 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -33,6 +33,7 @@ CONFIG_CMD_TIMEOUT=3Dy
 CONFIG_CMD_CLK=3Dy
 CONFIG_CMD_OFTREE=3Dy
 CONFIG_CMD_TIME=3Dy
+CONFIG_DRIVER_NET_MACB=3Dy
 CONFIG_DRIVER_SERIAL_CADENCE=3Dy
 # CONFIG_SPI is not set
 CONFIG_DIGEST=3Dy
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 2a30457..0c0d17e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -738,6 +738,7 @@ static void macb_remove(struct device_d *dev)
 static const struct of_device_id macb_dt_ids[] =3D {
 	{ .compatible =3D "cdns,at91sam9260-macb",},
 	{ .compatible =3D "atmel,sama5d3-gem",},
+	{ .compatible =3D "cdns,zynqmp-gem",},
 	{ /* sentinel */ }
 };
 =

-- =

2.7.4


Thomas H=E4mmerle
Research and Development =


Wolfvision GmbH
 | 6833 Klaus | Austria =

Tel: +43 5523 52250 | Mail: Thomas.Haemmerle@wolfvision.net =


Webpage: www.wolfvision.com | www.wolfvision.com/green
Firmenbuch / Commercial Register: FN283521v Feldkirch/Austria


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

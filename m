Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.eckelmann.de ([217.19.183.90])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHAfu-0005IL-A6
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 15:41:35 +0000
Received: from mail2.eckelmann.de (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 47D151BF8DE3_A14490AB
 for <barebox@lists.infradead.org>; Tue, 21 Nov 2017 15:40:58 +0000 (GMT)
Received: from smtp.eckelmann.de (ex-srv1.eckelmann.group [172.18.35.4])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (Client CN "oa.eckelmann.de", Issuer "Eckelmann Gruppe CA" (not verified))
 by mail2.eckelmann.de (Sophos Email Appliance) with ESMTPS id
 02E1D1BF6045_A14490AF
 for <barebox@lists.infradead.org>; Tue, 21 Nov 2017 15:40:58 +0000 (GMT)
From: Gavin Schenk <g.schenk@eckelmann.de>
Date: Tue, 21 Nov 2017 16:40:47 +0100
Message-ID: <20171121154047.27334-1-g.schenk@eckelmann.de>
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
Subject: [PATCH] Add linux.devname property to eth device
To: barebox@lists.infradead.org
Cc: Gavin Schenk <g.schenk@eckelmann.de>

When you have a static network environment but more than one network
device on your machine it is necessary to provide the <device> parameter
to the ip parameter at kernel cmd line.

The device name assigned by Linux cannot in general be predicted as it
depends on driver bind order.

This patch introduces a new property linux.devname to eth devices.
The value is added to bootargs per interface and can be changed in
env/network/INTF

Note that the device name is also used when dhcp is in use.

Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>
---

This is V2 of "[PATCH] Configure network device for nfsboot via nv var"

 include/net.h |  1 +
 net/eth.c     |  2 ++
 net/ifup.c    | 19 +++++++++++++++----
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/include/net.h b/include/net.h
index 632b6d541..0aa5569e0 100644
--- a/include/net.h
+++ b/include/net.h
@@ -62,6 +62,7 @@ struct eth_device {
 	IPaddr_t netmask;
 	IPaddr_t gateway;
 	char ethaddr[6];
+	char *linuxdevname;
 	char *bootarg;
 };
 =

diff --git a/net/eth.c b/net/eth.c
index dac2400b8..fe661c832 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -384,6 +384,8 @@ int eth_register(struct eth_device *edev)
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
 			edev->ethaddr, edev);
+	edev->linuxdevname =3D xstrdup("");
+	dev_add_param_string(dev, "linux.devname", NULL, NULL, &edev->linuxdevnam=
e, NULL);
 	edev->bootarg =3D xstrdup("");
 	dev_add_param_string(dev, "linux.bootargs", NULL, NULL, &edev->bootarg, N=
ULL);
 =

diff --git a/net/ifup.c b/net/ifup.c
index 5113d1383..106700e2e 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -50,6 +50,7 @@ int ifup(const char *name, unsigned flags)
 	int ret;
 	char *cmd, *cmd_discover;
 	const char *ip;
+	const char *linuxdevname;
 	struct stat s;
 	int i;
 	struct device_d *dev;
@@ -63,6 +64,7 @@ int ifup(const char *name, unsigned flags)
 	env_push_context();
 =

 	setenv("ip", "");
+	setenv("linuxdevname", "");
 =

 	for (i =3D 0; i < ARRAY_SIZE(vars); i++)
 		setenv(vars[i], "");
@@ -95,6 +97,13 @@ int ifup(const char *name, unsigned flags)
 	if (ret)
 		goto out;
 =

+	linuxdevname =3D getenv("linuxdevname");
+	if (!linuxdevname)
+		linuxdevname =3D "";
+	ret =3D dev_set_param(dev, "linux.devname", linuxdevname);
+	if (ret)
+		goto out;
+
 	ip =3D getenv("ip");
 	if (!ip)
 		ip =3D "";
@@ -114,11 +123,12 @@ int ifup(const char *name, unsigned flags)
 			if (ret)
 				goto out;
 		}
-		bootarg =3D basprintf("ip=3D%pI4:%pI4:%pI4:%pI4:::",
+		bootarg =3D basprintf("ip=3D%pI4:%pI4:%pI4:%pI4::%s:",
 				&edev->ipaddr,
 				&edev->serverip,
 				&edev->gateway,
-				&edev->netmask);
+				&edev->netmask,
+				edev->linuxdevname);
 		dev_set_param(dev, "linux.bootargs", bootarg);
 		free(bootarg);
 	} else {
@@ -194,8 +204,9 @@ static int do_ifup(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(ifup)
 BAREBOX_CMD_HELP_TEXT("Each INTF must have a script /env/network/INTF that=
 set the variables")
 BAREBOX_CMD_HELP_TEXT("ip (to 'static' or 'dynamic'), ipaddr, netmask, gat=
eway, serverip and/or")
-BAREBOX_CMD_HELP_TEXT("ethaddr. A script /env/network/INTF-discover can co=
ntains for discovering")
-BAREBOX_CMD_HELP_TEXT("the ethernet device, e.g. 'usb'.")
+BAREBOX_CMD_HELP_TEXT("ethaddr, linuxdevname. A script /env/network/INTF-d=
iscover can contains")
+BAREBOX_CMD_HELP_TEXT("for discovering the ethernet device, e.g. 'usb'. If=
 set, linuxdevname is")
+BAREBOX_CMD_HELP_TEXT("added to bootargs as device parameter.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
-- =

2.15.0


Eckelmann AG
Vorstand: Dipl.-Ing. Peter Frankenbach (Sprecher) Dipl.-Wi.-Ing. Philipp Ec=
kelmann
Dr.-Ing. Marco M=FCnchhof Dr.-Ing. Frank Uhlemann
Vorsitzender des Aufsichtsrats: Hubertus G. Krossa
Stv. Vorsitzender des Aufsichtsrats: Dr.-Ing. Gerd Eckelmann
Sitz der Gesellschaft: Berliner Str. 161, 65205 Wiesbaden, Amtsgericht Wies=
baden HRB 12636
http://www.eckelmann.de =



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

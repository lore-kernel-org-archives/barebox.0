Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.eckelmann.de ([217.19.183.90])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eCRvS-00044g-CS
 for barebox@lists.infradead.org; Wed, 08 Nov 2017 15:06:04 +0000
Received: from mail2.eckelmann.de (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id DD2E61BF8D41_A031D3CB
 for <barebox@lists.infradead.org>; Wed,  8 Nov 2017 15:05:32 +0000 (GMT)
Received: from smtp.eckelmann.de (ex-srv1.eckelmann.group [172.18.35.4])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (Client CN "oa.eckelmann.de", Issuer "Eckelmann Gruppe CA" (not verified))
 by mail2.eckelmann.de (Sophos Email Appliance) with ESMTPS id
 AD1971BF60D9_A031D3CF
 for <barebox@lists.infradead.org>; Wed,  8 Nov 2017 15:05:32 +0000 (GMT)
From: Gavin Schenk <g.schenk@eckelmann.de>
Date: Wed, 8 Nov 2017 16:05:17 +0100
Message-ID: <20171108150517.130503-1-g.schenk@eckelmann.de>
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
Subject: [PATCH] Configure network device for nfsboot via nv var
To: barebox@lists.infradead.org
Cc: Gavin Schenk <g.schenk@eckelmann.de>

When you have a static network environment but more than one network
device on your machine it is necessary to provide the <device> parameter
to the ip parameter at kernel cmd line.

The device name assigned by Linux cannot in general be predicted as it
depends on driver bind order.

This patch introduces a new global variable
"global.linux.nfsroot.device" which when set is feed to the ip=3D
kernel parameter as device name.

Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>
---
 net/ifup.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 5113d138329a..bdb7cf0e6d0a 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -109,16 +109,19 @@ int ifup(const char *name, unsigned flags)
 		dev_set_param(dev, "linux.bootargs", "ip=3Ddhcp");
 	} else if (!strcmp(ip, "static")) {
 		char *bootarg;
+		const char *env_linux_nfsroot_device =3D =

+			getenv("global.linux.nfsroot.device");
 		for (i =3D 0; i < ARRAY_SIZE(vars); i++) {
 			ret =3D eth_set_param(dev, vars[i]);
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
+				env_linux_nfsroot_device ?: "");
 		dev_set_param(dev, "linux.bootargs", bootarg);
 		free(bootarg);
 	} else {
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

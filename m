Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcuoC-00024z-Dh
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:53:45 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Apr 2014 12:56:53 +0200
References: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
 <1398244766-5843-2-git-send-email-jbe@pengutronix.de>
 <20140423103042.GR5858@pengutronix.de>
In-Reply-To: <20140423103042.GR5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201404231256.53884.jbe@pengutronix.de>
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
Subject: [PATCH 1/3] net/ifup.c: don't fail silently
To: barebox@lists.infradead.org

Since commit a162dfe50345d3461010759f8a0e79f7e388c140 the ifup command is
implemented in C and runs up to two external scripts.
If one of these scripts return with an error code, the command terminates
silently. This can confuse a user because there is no hint about the reason
why it fails. Add error messages to avoid this case.
    =

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>

diff --git a/net/ifup.c b/net/ifup.c
index 7b6313629666..b259a975dc0b 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -70,14 +70,18 @@ int ifup(const char *name, unsigned flags)
 	cmd_discover =3D asprintf("/env/network/%s-discover", name);
 =

 	ret =3D run_command(cmd);
-	if (ret)
+	if (ret) {
+		pr_err("Running '%s' failed with %d\n", cmd, ret);
 		goto out;
+	}
 =

 	ret =3D stat(cmd_discover, &s);
 	if (!ret) {
 		ret =3D run_command(cmd_discover);
-		if (ret)
+		if (ret) {
+			pr_err("Running '%s' failed with %d\n", cmd, ret);
 			goto out;
+		}
 	}
 =

 	dev =3D get_device_by_name(name);

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-5121-20691=
7-5128 |
Peiner Str. 6-8, 31137 Hildesheim, Germany =A0 =A0| Fax: =A0 +49-5121-20691=
7-5555 |
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www.pe=
ngutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

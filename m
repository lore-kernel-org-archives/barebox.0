Delivery-date: Sun, 26 Jan 2025 23:05:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcAkz-004qbO-0z
	for lore@lore.pengutronix.de;
	Sun, 26 Jan 2025 23:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcAkz-0001Qf-CU
	for lore@pengutronix.de; Sun, 26 Jan 2025 23:05:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjPITc18h6kZY8CiGhkKYBD/h8AAu62EGkV0h5p0tSo=; b=jPo5p+2pE6OBWu78G/de9oLNzg
	LS5SUbCB77vEmcHDiyj4bzGlNKgwkXPLgJ5mbAtZq/iSDWHmaVtVIVnUPnChn3CJWWDO3PI+9zgwz
	3BIohl2jhCe+JY81Rh6Lb8Pe/Yu0Bcm7ZiHfhUse+qZRrSzPnLJqMS9rs9a6sIi8yfGPv/ONS03nA
	ogXYpSk81iu/0ptxTYyVnWHsq6OOQJo3gROiyLeSwh6K2pkjxDwQksFI+K9HOneopA0g7V7BY9+y4
	In+16OYlGVq2fpSEtBcGW9vlLP602zdadr3hFGR1ZXbvbbAJhHsfM1/PrmXK5WzB4P1Id8Qu6RbLQ
	3FIrHT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcAkU-00000001ANq-0YAo;
	Sun, 26 Jan 2025 22:04:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcAkS-00000001ANR-0OVG
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 22:04:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcAkP-0001If-I7
	for barebox@lists.infradead.org; Sun, 26 Jan 2025 23:04:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcAkP-0021Ic-1C
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 23:04:53 +0100
Received: from mgr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcAkP-00F1Nw-0u
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 23:04:53 +0100
Date: Sun, 26 Jan 2025 23:04:53 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <Z5axhT1Odd5jgWbu@pengutronix.de>
References: <20250126214428.257543-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9FrBCllkSeW3Kosm"
Content-Disposition: inline
In-Reply-To: <20250126214428.257543-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_140456_137010_548F28D6 
X-CRM114-Status: GOOD (  16.83  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] simple-panel: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--9FrBCllkSeW3Kosm
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ignore this patch. I forgot the signed-off-by.

On Sun, Jan 26, 2025 at 10:44:28PM +0100, Michael Grzeschik wrote:
>---
> drivers/video/simple-panel.c | 10 ++++++++++
> 1 file changed, 10 insertions(+)
>
>diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
>index 7048e2f51b..d4c6874987 100644
>--- a/drivers/video/simple-panel.c
>+++ b/drivers/video/simple-panel.c
>@@ -10,6 +10,7 @@
> #include <linux/err.h>
> #include <of.h>
> #include <fb.h>
>+#include <regulator.h>
> #include <gpio.h>
> #include <of_gpio.h>
> #include <video/backlight.h>
>@@ -25,6 +26,7 @@ struct simple_panel {
> 	struct device_node *backlight_node;
> 	struct backlight_device *backlight;
> 	struct device_node *ddc_node;
>+	struct regulator *power;
> 	int enable_delay;
> };
>
>@@ -49,6 +51,8 @@ static int simple_panel_enable(struct simple_panel *pane=
l)
> 	if (panel->enable_delay)
> 		mdelay(panel->enable_delay);
>
>+	regulator_enable(panel->power);
>+
> 	if (panel->backlight) {
> 		ret =3D backlight_set_brightness_default(panel->backlight);
> 		if (ret)
>@@ -65,6 +69,8 @@ static int simple_panel_disable(struct simple_panel *pan=
el)
> 	if (panel->backlight)
> 		backlight_set_brightness(panel->backlight, 0);
>
>+	regulator_disable(panel->power);
>+
> 	if (gpio_is_valid(panel->enable_gpio))
> 		gpio_direction_output(panel->enable_gpio,
> 			!panel->enable_active_high);
>@@ -154,6 +160,10 @@ static int simple_panel_probe(struct device *dev)
>
> 	panel->backlight_node =3D of_parse_phandle(node, "backlight", 0);
>
>+	panel->power =3D regulator_get(dev, "power");
>+	if (IS_ERR(panel->power))
>+		dev_warn(dev, "Cannot find regulator\n");
>+
> 	ret =3D vpl_register(&panel->vpl);
> 	if (ret)
> 		return ret;
>--=20
>2.39.5
>
>
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--9FrBCllkSeW3Kosm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmeWsYAACgkQC+njFXoe
LGTMCQ/+P1Pjk/SwvTOjLcsCV1o7oNmc+FA2KMKiP0/GCFcxeL9+5i3i0jXmSU3J
bifRak+Eu6XpqZvNTNgh4lxmz/dO45DjxlU34mc2LudLFW8dZLSPkfKVYxiIW1Bh
HHMiJt7X0st0IMRt5ntmZjuS2DsIESEaXPNbtSqWY/cambjif+G/WaFOKtdVtMP9
OoOiWYTvH1m9eaulQOcPMAiauELgW8xLcoHezTwSqvdWKT25e+txrThcdpdJvAyQ
IT3yrjAuJibQf8WUpwfNTrWGQRWSGPiSrdcok962TSsexGXvgInevC/Aq5fl9Xm5
B5lk4eTuVB/KTbsmQgx2n4mYvwKSVGBLt50CmKotFN0JKWSKaS3GEJ2n4KcPM4q5
NLPWGqaMf3BxHqUa/gOyyYXwk8AurmoVxdwVg+XQiFt6kOHSLx7UNeiG1gqruGNm
MbbSJUkNPxqakmBGWISpLHf7GD/Zzrzdd8eHgS6zCWWaTrrngeEqgPM34qRKmvVD
D17GfUTDMicFF09DmTfJ3JFEImt/PZzR+n3icyafVUoF5HowjhjnlhXjrjx1W1nC
pGT7L135huXfv3VWg5PgDoW0FjykCVCyzgOlpW/90TZfLLGEzWcC8Khvyh6x6EgD
fwG963h/04qRDbx10Rkh+uA670UUkjt70DP60FEK1+lSeNzcPWo=
=xifD
-----END PGP SIGNATURE-----

--9FrBCllkSeW3Kosm--



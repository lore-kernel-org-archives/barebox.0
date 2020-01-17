Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout02.rmx.de ([62.245.148.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQYt-0004Xt-4e
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 12:17:19 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout02.rmx.de (Postfix) with ESMTPS id 47zg6X3WQhzNn2b
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 13:17:08 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 47zg6R4rGDz2ytr
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 13:17:03 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 17 Jan 2020 13:16:53 +0100
Message-ID: <20200117121653.21371-1-ceggers@arri.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5064812112397239860=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pinctrl: imx-v3: Support for imx6ull-iomuxc-snvs
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

--===============5064812112397239860==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.=
c
index 5fadc8415..89fcb50c8 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -216,6 +216,10 @@ static int imx_iomux_v3_probe(struct device_d *dev)
        return ret;
 }

+static struct imx_iomux_v3_data imx_iomux_imx6_snvs_data =3D {
+       .flags =3D ZERO_OFFSET_VALID,
+};
+
 static struct imx_iomux_v3_data imx_iomux_imx7_lpsr_data =3D {
        .flags =3D ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR,
 };
@@ -238,6 +242,9 @@ static __maybe_unused struct of_device_id imx_iomux_v3_=
dt_ids[] =3D {
                .compatible =3D "fsl,imx6sx-iomuxc",
        }, {
                .compatible =3D "fsl,imx6ul-iomuxc",
+       }, {
+               .compatible =3D "fsl,imx6ull-iomuxc-snvs",
+               .data =3D &imx_iomux_imx6_snvs_data,
        }, {
                .compatible =3D "fsl,imx6sl-iomuxc",
        }, {
--
2.16.4

________________________________
 [http://assets.arri.com/media/sign/2019-12-13a-ARRI-E-mail-Signatur-Parkst=
adt.jpg] <https://www.google.com/maps/place/Herbert-Bayer-Stra%C3%9Fe+10,+8=
0807+M%C3%BCnchen/data=3D!4m2!3m1!1s0x479e74379489f045:0x4bbf0c7a9e893d66?s=
a=3DX&ved=3D2ahUKEwjjvdSlh8TmAhWIp4sKHe3vDlQQ8gEwAHoECAsQAQ>

Get all the latest information from www.arri.com<https://www.arri.com/>, Fa=
cebook<https://www.facebook.com/TeamARRI>, Twitter<https://twitter.com/ARRI=
Channel>, Instagram<https://instagram.com/arri> and YouTube<https://www.you=
tube.com/user/ARRIChannel>.

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: M=FCnchen - Registergericht: Amtsgericht M=FCnchen - Handelsregistern=
ummer: HRA 57918
Pers=F6nlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: M=FCnchen - Registergericht: Amtsgericht M=FCnchen - Handelsregistern=
ummer: HRB 54477
Gesch=E4ftsf=FChrer: Dr. Michael Neuh=E4user; Stephan Schenk; Walter Trauni=
nger; Markus Zeiler


--===============5064812112397239860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5064812112397239860==--

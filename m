Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQUv-0002It-2v
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 12:13:13 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 47zg1r1FKbz3qyTb
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 13:13:04 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 47zg1q1GKjz2xNM
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 13:13:03 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 17 Jan 2020 13:12:49 +0100
Message-ID: <20200117121249.21227-1-ceggers@arri.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7636076335313584479=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] nvmem: ocotp: Support for i.MX6ULL/ULZ
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

--===============7636076335313584479==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

i.MX6ULL and i.MX6ULZ have only half of the fuses as i.MX6UL

Linux commit: ffbc34bf0e ("nvmem: imx-ocotp: Implement i.MX6ULL/ULZ
support")

Fixes: 1dc748b3b2 ("dts: update to v5.1-rc1")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/nvmem/ocotp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 79693e22e..34e33dee8 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -712,6 +712,14 @@ static struct imx_ocotp_data imx6ul_ocotp_data =3D {
        .format_mac =3D imx_ocotp_format_mac,
 };

+static struct imx_ocotp_data imx6ull_ocotp_data =3D {
+       .num_regs =3D 256,
+       .addr_to_offset =3D imx6q_addr_to_offset,
+       .mac_offsets_num =3D 2,
+       .mac_offsets =3D { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
+       .format_mac =3D imx_ocotp_format_mac,
+};
+
 static struct imx_ocotp_data vf610_ocotp_data =3D {
        .num_regs =3D 512,
        .addr_to_offset =3D vf610_addr_to_offset,
@@ -741,6 +749,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_=
ids[] =3D {
        }, {
                .compatible =3D "fsl,imx6ul-ocotp",
                .data =3D &imx6ul_ocotp_data,
+       }, {
+               .compatible =3D "fsl,imx6ull-ocotp",
+               .data =3D &imx6ull_ocotp_data,
        }, {
                .compatible =3D "fsl,imx8mq-ocotp",
                .data =3D &imx8mq_ocotp_data,
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


--===============7636076335313584479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7636076335313584479==--

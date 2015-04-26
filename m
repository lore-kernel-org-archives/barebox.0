Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YmNd2-00013a-UJ
 for barebox@lists.infradead.org; Sun, 26 Apr 2015 14:33:53 +0000
Received: by lbcga7 with SMTP id ga7so65760424lbc.1
 for <barebox@lists.infradead.org>; Sun, 26 Apr 2015 07:33:30 -0700 (PDT)
Date: Sun, 26 Apr 2015 17:38:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150426173831.c6246f01a64d316351f3ce54@gmail.com>
Mime-Version: 1.0
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
Subject: RFC: of_device_id: use pointer for the data field
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

Just now barebox' of_device_id struct uses unsigned long type for data fiel=
d:

  struct of_device_id {
          char *compatible;
          unsigned long data;
  };

Here is of_device_id struct in linux kernel:

  struct of_device_id {
          char name[32];
          char type[32];
          char compatible[128];
          const void *data;
  };

Just all data fields are used as pointers and need 'unsigned long' casting.
E.g. see 'git grep -A 4 of_device_id drivers/' output:

  drivers/ata/sata-imx.c:static __maybe_unused struct of_device_id imx_sata=
_dt_ids[] =3D {
  drivers/ata/sata-imx.c- {
  drivers/ata/sata-imx.c-         .compatible =3D "fsl,imx6q-ahci",
  drivers/ata/sata-imx.c-         .data =3D (unsigned long)&data_imx6,
  drivers/ata/sata-imx.c- }, {

Could we use 'const void *' type for data field as linux kernel does?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

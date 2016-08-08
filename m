Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWnQl-0005M4-SB
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 16:29:36 +0000
Received: by mail-wm0-x242.google.com with SMTP id i5so16494280wmg.2
 for <barebox@lists.infradead.org>; Mon, 08 Aug 2016 09:29:14 -0700 (PDT)
Date: Mon, 8 Aug 2016 19:32:03 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160808193203.13ab931dc3ea505a3cdb2b09@gmail.com>
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
Subject: net: phy: fixed link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha!

I have just took a look on Lukas' =

'net: phy: fixed-link: read link parameters from devicetree' patch.
I see two problems with current 'of_phy_register_fixed_link()' implementati=
on
unrelated to Lukas' changes.

Please see current of_phy_register_fixed_link() implementation:

        static struct phy_device *of_phy_register_fixed_link(struct device_=
node *np,
                                                struct eth_device *edev)
        {
                struct phy_device *phydev;

                phydev =3D phy_device_create(NULL, 0, 0);

                phydev->dev.parent =3D &edev->dev;
                phydev->registered =3D 1;
                phydev->speed =3D 1000;
                phydev->duplex =3D 1;
                phydev->pause =3D phydev->asym_pause =3D 0;
                phydev->link =3D 1;

                return phydev;
        }

1. (a trivial think) the line

        phydev->link =3D 1;

is redundant because phy_device_create() has already set it.

2. (not so trivial think) the line

       phydev->registered =3D 1;

Why we want to set phydev->registered here? Can we use phy_register_device(=
) instead?

Any sugesstions?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

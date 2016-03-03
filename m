Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abUfO-0005Qy-8G
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 14:55:51 +0000
Received: by mail-lb0-x22d.google.com with SMTP id k15so26412172lbg.0
 for <barebox@lists.infradead.org>; Thu, 03 Mar 2016 06:55:29 -0800 (PST)
Date: Thu, 3 Mar 2016 18:21:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160303182135.38aa4d322e15c5dfb3a266dc@gmail.com>
In-Reply-To: <56D8406E.6020208@eurek.it>
References: <56D831C6.1010101@eurek.it>
 <20160303165252.0911b6cb49599a5bc06090ca@gmail.com>
 <56D8406E.6020208@eurek.it>
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
Subject: Re: Ethernet PHY KSZ9031 is not working
To: gianluca <gianlucarenzi@eurek.it>
Cc: barebox@lists.infradead.org

On Thu, 3 Mar 2016 14:47:26 +0100
gianluca <gianlucarenzi@eurek.it> wrote:

> On 03/03/2016 02:52 PM, Antony Pavlov wrote:
> =

> Before digging on the Datasheet for the explanation of all MII PHY =

> registers, here is the output of the command you wrote above:
> =

> > barebox@EK360 Eurek i.MX6 Quad:/ miitool -v -v
> > phy0: 2188000.ethernet-1: no link
> > registers for MII PHY:
> > 1140 7949 0022 1622 01e1 0000 0006 2001
> > 0000 0300 0000 0000 0000 0000 0000 3000
> > 0000 00f4 0000 0000 0000 0000 0000 0200
> > 0000 0000 0000 0028 0000 0000 0000 0301
> > product info: Micrel KSZ9031 Gigabit PHY (vendor 00:08:85, model 34 rev=
 2)
> > basic mode: autonegotiation enabled
> > basic status: no link


'no link' here, so please check your magnetics and RJ-45 connector.

> > capabilities: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10bas=
eT-FD 10baseT-HD
> > advertising: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10base=
T-FD 10baseT-HD
> >
> =

> So, the link between the FEC and the PHY it is seems to working good.

KSZ9031 connects to ethernet MAC with two busses: RGMII and MDIO.

You can read PHY registers, so it seems your MDIO bus works fine,
but there is no warranty that your RGMII link actually works.

> If everything seems to be ok (speaking about registers) maybe there is =

> some issue on the RJ-45 MagJack connector.
> =

> What kind of RJ45 are you using??

Sorry, I have not noted this hardware detail for my board.
Mostly I work as a software developer.

> I am using a 1000/100/10 from Wuerth =

> Elektronic named:
> Artikelnummer / part number :
> Bezeichnung :
> description :
> 7499111121A
> LAN-=DCbertrager WE-RJ45LAN 10/100/1000 BaseT
> LAN-Transformer WE-RJ45LAN 10/100/1000 BaseT
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

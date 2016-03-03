Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abTHX-0006EC-PK
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 13:27:08 +0000
Received: by mail-lb0-x232.google.com with SMTP id x1so23133861lbj.3
 for <barebox@lists.infradead.org>; Thu, 03 Mar 2016 05:26:46 -0800 (PST)
Date: Thu, 3 Mar 2016 16:52:52 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160303165252.0911b6cb49599a5bc06090ca@gmail.com>
In-Reply-To: <56D831C6.1010101@eurek.it>
References: <56D831C6.1010101@eurek.it>
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

On Thu, 3 Mar 2016 13:44:54 +0100
gianluca <gianlucarenzi@eurek.it> wrote:

> Hello list,
> It's me again! ;-)
> =

> Actually I had tested 80% of the board with barebox.

...

> =

> When Barebox takes control over, those pins are turned off, the device =

> tree information is telling me:
> =

> > `-- 2188000.ethernet
> >    `-- miibus0
> >       `-- phy0
> >          `-- 0x00000000-0x0000003f ( 64 Bytes): /dev/phy0
> >    `-- eth0
> =

> but when I try to bring up the ethernet connection here is the message:
> =

> > dhcp
> > warning: No MAC address set. Using random address ae:05:f1:62:bd:d8
> > ksz9031rn_phy_fixup Called
> > ksz9031rn_phy_fixup Exit
> > dhcp: Network is down
> =

> And all leds in the RJ-45 JackMag are still turned off.
> =

> I don't know where I can check if something goes wrong. May be a failure =

> on board, but at this time this board is the ONLY BOARD I can use.

Use 'miitool -v -v' command to check your phy registers and the link status.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqP9h-0002yo-93
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 15:23:26 +0000
Received: by mail-la0-f49.google.com with SMTP id er20so2789970lab.36
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 07:23:03 -0800 (PST)
Date: Tue, 10 Dec 2013 19:30:29 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20131210193029.a3c2a0f833beeb35dee5ccfc@gmail.com>
In-Reply-To: <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de>
 <20131206124327.GA22853@omega>
 <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
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
Subject: Re: How to debug Ethernet connectivity
To: Atilla Filiz <atilla.filiz@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 10 Dec 2013 14:31:23 +0100
Atilla Filiz <atilla.filiz@gmail.com> wrote:

> Ok, then my problem is slightly more clear, that /dev/phy0 does not exist.
> I do define a struct fec_platform_data with
> xcv_type=3DPHY_INTERFACE_MODE_MII and register it via imx27_add_fec().
> =

> Now I need to find out why it fails to register the device.

There is an issue with current barebox.

The /dev/phy0 device not present just after boot. You need somehow to use n=
etwork
to make it appeared.

Use this [ugly!] method:
  Run barebox on your board. Just after boot /dev/phy0 is absent.
  So run 'dhcp' command. In a few seconds press "ctrl-c" to interrupt it.
  Check /dev/phy0 presence.

 =


> On Fri, Dec 6, 2013 at 1:43 PM, Alexander Aring <alex.aring@gmail.com> wr=
ote:
> > On Fri, Dec 06, 2013 at 01:39:25PM +0100, Sascha Hauer wrote:
> >> On Fri, Dec 06, 2013 at 01:18:52PM +0100, Atilla Filiz wrote:
> >> > Sorry, figured it out. Just most verbose output is funny as well:
> >> > :/ miitool -vvv /dev/mc13xxx
> >>
> >> Don't know what miitool does in this case, but mc13xxx is not your phy,
> >> it's your PMIC.
> >>
> >
> > oh, doesn't realize that :D. So reading zeros can make sense in some
> > offset. :-)
> >
> > - Alex
> =

> =

> =

> -- =

> Atilla Filiz
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

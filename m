Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvTw0-00025q-Ol
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:21:13 +0000
Date: Thu, 9 Feb 2012 08:21:00 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120209140238.49a3863b@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202090818140.27245@oneiric>
References: <alpine.DEB.2.02.1202090652380.19369@oneiric>
 <20120209140238.49a3863b@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1781185463-1328793665=:27245"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: what config setting causes barebox to automount the boot
 partition?
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1781185463-1328793665=:27245
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 9 Feb 2012, Eric B=E9nard wrote:

> Le Thu, 9 Feb 2012 06:54:40 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>
> >
> >   i just noticed with my panda build that the boot partition of the SD
> > card is automatically mounted under "boot".  i don't remember that
> > happening with my beagle, and i'm not sure if i messed with the config
> > settings before building for the panda.
> >
> >   what is it that generates that mount?  thanks.
> >
> panda/board.c
> =09mkdir ("/boot", 0666);
> =09ret =3D mount(diskdev, "fat", "/boot");
> =09if (ret) {
> =09=09printf("failed to mount %s\n", diskdev);
> =09=09return 0;
> =09}

  oh, my, i can see there's much work to do as the beagle board.c file
does nothing equivalent.  i thought it was just a config setting of
some kind, now i see that there's definitely some coding to be done.
thanks.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--8323329-1781185463-1328793665=:27245
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-1781185463-1328793665=:27245--

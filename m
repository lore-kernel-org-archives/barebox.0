Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvYsJ-000364-Nj
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 18:37:44 +0000
Date: Thu, 9 Feb 2012 13:37:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120209174519.4d0ae559@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202091336340.2680@oneiric>
References: <alpine.DEB.2.02.1202091130540.14123@oneiric>
 <20120209174519.4d0ae559@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-532438995-1328812658=:2680"
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
Subject: Re: how to read GPIO values from command line?
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-532438995-1328812658=:2680
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 9 Feb 2012, Eric B=E9nard wrote:

> Le Thu, 9 Feb 2012 11:34:55 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> >   so what exactly does one do to read those values?  i tried:
> >
> > barebox@Texas Instrument's Beagle:/ gpio_direction_input 171
> > barebox@Texas Instrument's Beagle:/ gpio_get_value 171
> >
> > but what do i check?  the shell variable $?  i'm not sure what i
> > should do next.
> >
> you can check the mux of the pins to be sure they are in GPIO mode.

  how do i do that from the barebox prompt?  i can see the
gpio-related commands for setting direction and getting/setting
values, but how does one check if those pins are properly in gpio
mode?

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
--8323329-532438995-1328812658=:2680
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-532438995-1328812658=:2680--

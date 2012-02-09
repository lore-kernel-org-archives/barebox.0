Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvRh3-0002e7-7i
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 10:57:38 +0000
Date: Thu, 9 Feb 2012 05:57:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120209115533.02df9dd6@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202090557020.16824@oneiric>
References: <alpine.DEB.2.02.1202081718100.26281@oneiric>
 <20120209115533.02df9dd6@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1943109234-1328785053=:16824"
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
Subject: Re: "panda" config and build doesn't work on panda ES at all
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1943109234-1328785053=:16824
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 9 Feb 2012, Eric B=E9nard wrote:

> Hi,
> Le Wed, 8 Feb 2012 17:20:45 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> >   just for fun, i configured and built MLO and barebox.bin for the
> > panda, then tried to use that on a panda ES -- got no response
> > whatever from minicom.  i did verify that i could boot to barebox just
> > fine on a regular panda, though.
> >
> >   this is different from the case of a regular beagle and beagle xM,
> > for which the MLO and barebox.bin boot just fine on an xM, so there's
> > clearly a significant difference between those two panda variants as
> > far as barebox is concerned.  i haven't had any time to look at it in
> > more detail yet.
> >
> Panda ES has a OMAP4460 @ 1.2GHz Panda has a OMAP4430 @ 1GHz.
> This patch series shows that some changes are really needed to switch
> from the 4430 to the 4460 :
> http://lists.denx.de/pipermail/u-boot/2011-July/096351.html

  yup, i'm already looking at that.  hoping i'm not out of my depth
here, but i like a challenge. :-)

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
--8323329-1943109234-1328785053=:16824
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-1943109234-1328785053=:16824--

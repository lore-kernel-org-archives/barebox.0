Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru3YM-0007og-37
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 14:58:55 +0000
Date: Sun, 5 Feb 2012 09:58:39 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120205155201.4086003e@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202050955080.8440@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1677310593-1328453929=:8440"
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
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1677310593-1328453929=:8440
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Sun, 5 Feb 2012, Eric B=E9nard wrote:

> Hi Robert,
>
> Le Sun, 5 Feb 2012 06:52:28 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> >   thoughts?  i'd actually like to make the tweaks one at a time so
> > that the git log shows clearly how the two boards differ one feature
> > at a time.
>
> By sensing a few GPIO, you can easily check which board you are running
> barebox on and thus have ony binary which supports all beagleboards
> (as already done in u-boot).
>
> Check around line 108 in u-boot's beagle support for the details :
> http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dboard/ti/beagle/beagle.c;=
h=3D5c04b34e1ab0140aca93e7752c8672ce7aebc0b9;hb=3DHEAD
>
> So in the end you can register the nand support only if you run on a
> board which has a NAND flash and have one defconfig for all
> beagleboards (some tweaks in the clock settings may be nedded -
> especially for USB IIRC - as beagle XM is built around a DM3730 which
> can run at 1GHz when older beagles had older OMAP3530 limited to
> 720MHz).

  ah, thank you, that might be what i'm after.  we'll see if that's
enough to handle all of the differences.  i may very well be back with
more questions later.  in fact, count on it. :-)

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
--8323329-1677310593-1328453929=:8440
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-1677310593-1328453929=:8440--

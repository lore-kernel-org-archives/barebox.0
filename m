Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X45qO-0002ZY-Ba
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 10:08:21 +0000
Date: Mon, 7 Jul 2014 06:07:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
Message-ID: <alpine.LFD.2.11.1407070606100.3134@localhost>
References: <alpine.LFD.2.11.1407041217080.16169@localhost>
 <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1148613779-1404727676=:3134"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Clean up Kconfig and source for a couple device tree
 commands.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1148613779-1404727676=:3134
Content-Type: TEXT/PLAIN; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

On Mon, 7 Jul 2014, Jean-Christophe PLAGNIOL-VILLARD wrote:

>
> On Jul 5, 2014, at 12:18 AM, Robert P. J. Day <rpjday@crashcourse.ca> wro=
te:
>
> >
> >
> > Correct options listings for a couple device tree-related commands.
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> >  i *think* the following is valid.
> >
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index eed6fbd..3248de9 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -1950,10 +1950,11 @@ config CMD_OFTREE
> > 	help
> > 	  oftree - handle device trees
> >
> > -	  Usage: oftree [-lpfdn] [DTB]
> > +	  Usage: oftree [-lspf] [DTB]
> >
> > 	  Options:
> > 		  -l		Load DTB to internal device tree
> > +		  -s		save internal device tree to DTB
> > 		  -p		probe devices from stored device tree
> > 		  -f		free stored device tree
> >
>
> do we really need the help here
>
> it=92s a pain in the ass to keep it sync

  as a followup to my reply, if it were me, i would just toss all the
usage/synopsis info from the Kconfig help -- as the OP quite
correctly points out, it's a pain in the ass to keep it sync'ed with
the source, and i've already run across several commands whose Kconfig
help doesn't match the source.

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
--8323328-1148613779-1404727676=:3134
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-1148613779-1404727676=:3134--

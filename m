Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUEcr-0001uV-VN
	for barebox@lists.infradead.org; Thu, 01 Jul 2010 07:56:03 +0000
Date: Thu, 1 Jul 2010 10:55:51 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100701075551.GH16981@jasper.tkos.co.il>
References: <20100701071307.GG16981@jasper.tkos.co.il>
	<4C2C4396.1060702@eukrea.com>
	<20100701074739.GB12115@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100701074739.GB12115@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox 'git describe' strangeness
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

On Thu, Jul 01, 2010 at 09:47:39AM +0200, Sascha Hauer wrote:
> On Thu, Jul 01, 2010 at 09:28:22AM +0200, Eric B=E9nard wrote:
> > Le 01/07/2010 09:13, Baruch Siach a =E9crit :
> >> Hi barebox list,
> >>
> >> For some reason 'git describe' shows me:
> >>
> >> v2009.12.0-178-gdc882c3
> >>
> >> I.e. git doesn't find the more recent v2010.06.0 tag. What is worse is=
 that
> >> the top-level Makefile takes the '-178-gdc882c3' part and attaches it =
to
> >> '2010.06.0', making the output of the 'version' command:
> >>
> >> barebox 2010.06.0-00178-gcc827a1 (Jul  1 2010 - 09:02:45)
> >>
> >> which is plain wrong.
> >>
> >> Can anyone here explain what's going on?
> >>
> > same thing here (the man says "By default (without --all or --tags) git=
  =

> > describe only shows annotated tags." so maybe the tags after 2009.12.0  =

> > are not annotated ?)
> =

> No, they are not. Sorry, I'm still learning git...
> =

> I will fix this from the next release on.

I've posted a patch adding --tags to 'git describe'. This should fix the =

problem for older tags.

Thanks Eric.

baruch

-- =

                                                     ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SV6SR-0006Tv-SE
 for barebox@lists.infradead.org; Thu, 17 May 2012 19:33:56 +0000
Date: Thu, 17 May 2012 21:33:48 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120517213348.7174cd7c@eb-e6520>
In-Reply-To: <20120517174253.GF30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-14-git-send-email-eric@eukrea.com>
 <20120517174253.GF30400@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/16] eukrea_cpuimx35: fix PHY address
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le Thu, 17 May 2012 19:42:53 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Thu, May 17, 2012 at 05:46:16PM +0200, Eric B=E9nard wrote:
> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > ---
> >  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   90 ++++++++++---=
-------
> >  1 files changed, 45 insertions(+), 45 deletions(-)
> > =

> > diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/a=
rm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > index bfdd9de..1869e9d 100644
> > --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> > @@ -58,7 +58,7 @@
> >  =

> >  static struct fec_platform_data fec_info =3D {
> >  	.xcv_type	=3D MII100,
> > -	.phy_addr	=3D 0x1F,
> > +	.phy_addr	=3D 0,
> >  };
> =

> This patch seems to do more than what the subject suggests. What's the
> stuff below?
> =

oops will check that
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

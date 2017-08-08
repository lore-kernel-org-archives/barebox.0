Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1df6Kc-0002BO-4q
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 15:22:07 +0000
Date: Tue, 8 Aug 2017 11:21:44 -0400
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20170808152144.eikrnbp32fiqtz2j@gportay>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
 <1502178714.2934.21.camel@pengutronix.de>
 <aaed299c-a0e5-f7df-22de-72f14daace20@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaed299c-a0e5-f7df-22de-72f14daace20@mev.co.uk>
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
Subject: Re: [PATCH 1/2] readline_simple: return -1 if getc fails
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Tue, Aug 08, 2017 at 11:07:54AM +0100, Ian Abbott wrote:
> On 08/08/17 08:51, Lucas Stach wrote:
> > Am Montag, den 07.08.2017, 18:10 -0400 schrieb Ga=EBl PORTAY:
> > > The getc function may return an errno code if an error happens.
> > > =

> > > This patch prevents readline from printing a non printable character =
and
> > > from looping to infinity and beyong.
> > > =

> > > Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> > > ---
> > >   lib/readline_simple.c | 2 ++
> > >   1 file changed, 2 insertions(+)
> > > =

> > > diff --git a/lib/readline_simple.c b/lib/readline_simple.c
> > > index c4d3d240e..1283c9602 100644
> > > --- a/lib/readline_simple.c
> > > +++ b/lib/readline_simple.c
> > > @@ -58,6 +58,8 @@ int readline (const char *prompt, char *line, int l=
en)
> > >   	for (;;) {
> > >   		c =3D getchar();
> > > +		if (c < 0)
> > > +			return (-1);
> > =

> > I don't like made up error codes. Is there any reason why we couldn't
> > just pass through the negative error code from getchar?
> =

> And also change the type of the 'c' variable, as it is currently a plain
> 'char'?
> =


Indeed :)

Regards,
Ga=EBl

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

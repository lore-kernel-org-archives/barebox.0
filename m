Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1df79M-0004r9-Tg
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 16:14:34 +0000
Date: Tue, 8 Aug 2017 12:14:09 -0400
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20170808161409.3cfg6vpta2auit36@gportay>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
 <1502178714.2934.21.camel@pengutronix.de>
 <20170808152049.njl24tcwafccebwt@gportay>
 <1502206574.2934.93.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1502206574.2934.93.camel@pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 08, 2017 at 05:36:14PM +0200, Lucas Stach wrote:
> Am Dienstag, den 08.08.2017, 11:20 -0400 schrieb Ga=EBl PORTAY:
> > Hi Lucas,
> > =

> > On Tue, Aug 08, 2017 at 09:51:54AM +0200, Lucas Stach wrote:
> > > > diff --git a/lib/readline_simple.c b/lib/readline_simple.c
> > > > index c4d3d240e..1283c9602 100644
> > > > --- a/lib/readline_simple.c
> > > > +++ b/lib/readline_simple.c
> > > > @@ -58,6 +58,8 @@ int readline (const char *prompt, char *line, int=
 len)
> > > >  =

> > > >  	for (;;) {
> > > >  		c =3D getchar();
> > > > +		if (c < 0)
> > > > +			return (-1);
> > > =

> > > I don't like made up error codes. Is there any reason why we couldn't
> > > just pass through the negative error code from getchar?
> > > =

> > =

> > The thing here is that getchar() may return an error, and that error is=
 not
> > tested. This causes readline to print the character 0xea (-EINVAL) whic=
h is not
> > printable.
> =

> So why wouldn't the following fix the issue?
> =

> signed char c;
> =

> if (c < 0)
> 	return c;
> =


Okay. I do prefer your solution.

I returned -1 mainly because the function comment says it returns -1 when it
breaks; and because parser.c and hush.c test readline function against -1 a=
nd
not against a negative value.

Also readline returns -1 if character is 0x03. Maybe it should return -EINT=
R;
-1 is EPERM: Operation not permitted.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

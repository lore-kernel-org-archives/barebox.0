Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1df7iS-0004SH-O4
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 16:50:49 +0000
Date: Tue, 8 Aug 2017 12:49:49 -0400
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20170808164949.zgkj7vxz7urddcc5@gportay>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
 <1502178714.2934.21.camel@pengutronix.de>
 <20170808152049.njl24tcwafccebwt@gportay>
 <1502206574.2934.93.camel@pengutronix.de>
 <c72bc837-b2e0-2d95-ed1d-39b6a51befec@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c72bc837-b2e0-2d95-ed1d-39b6a51befec@mev.co.uk>
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

On Tue, Aug 08, 2017 at 05:05:35PM +0100, Ian Abbott wrote:
> On 08/08/17 16:36, Lucas Stach wrote:
> > Am Dienstag, den 08.08.2017, 11:20 -0400 schrieb Ga=EBl PORTAY:
> > > Hi Lucas,
> > > =

> > > On Tue, Aug 08, 2017 at 09:51:54AM +0200, Lucas Stach wrote:
> > > > (...)
> > > > I don't like made up error codes. Is there any reason why we couldn=
't
> > > > just pass through the negative error code from getchar?
> > > > =

> > > =

> > > The thing here is that getchar() may return an error, and that error =
is not
> > > tested. This causes readline to print the character 0xea (-EINVAL) wh=
ich is not
> > > printable.
> > =

> > So why wouldn't the following fix the issue?
> > =

> > signed char c;
> =

> `int` would be better to allow non-ASCII characters.
> =

> > =

> > if (c < 0)
> > 	return c;
> =

> There are places where the return value is checked for `-1` for example in
> get_user_input() ("common/hush.c"), and in run_shell() ("common/parser.c"=
).
> =

> I think Ga=EBl's patch is reasonable, although perhaps it should also set
> `line[0] =3D '\0';` before returning.
> =


Indeed, or `line[n] =3D '\0';` to preserve characters already entered.

BTW, it already performed by get_user_input in hush.c (n is reset to 0).

console_buffer[n] =3D '\n';
console_buffer[n + 1]=3D '\0';

> Off topic: there is another oddity in the the "simple" version of
> readline(). It ignores the `len` parameter and uses `CONFIG_CBSIZE` inste=
ad.
> =


I made a patch for this; but I have not tested yet all cases.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

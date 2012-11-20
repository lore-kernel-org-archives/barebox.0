Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f49.google.com ([209.85.219.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TampV-0000RB-7P
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 12:21:29 +0000
Received: by mail-oa0-f49.google.com with SMTP id l10so5707810oag.36
 for <barebox@lists.infradead.org>; Tue, 20 Nov 2012 04:21:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121114081051.GG10369@pengutronix.de>
References: <CAHkwnC-dDfPesg5vy5V2rj7vdY_DH9cjfJ3gCVsm8xY-DPf35A@mail.gmail.com>
 <20121112075536.GP10369@pengutronix.de>
 <CAHkwnC_FXJ3reNcwDuxhsC=fSG-dDSgg+7njS5sy7aCG5QCRoQ@mail.gmail.com>
 <20121114081051.GG10369@pengutronix.de>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Tue, 20 Nov 2012 13:21:06 +0100
Message-ID: <CAHkwnC8VEYf_DvsywSZ2cUM7QAN0EtRpmd2gKGOuXLaT-4+y9g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4170133661106468831=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: defaultenv-2: how to update a flash partition?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============4170133661106468831==
Content-Type: multipart/alternative; boundary=e89a8fb1f84ae8225d04ceec454e

--e89a8fb1f84ae8225d04ceec454e
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 14, 2012 at 9:10 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Tue, Nov 13, 2012 at 12:10:45PM +0100, Fabio Porcedda wrote:
> > On Mon, Nov 12, 2012 at 8:55 AM, Sascha Hauer <s.hauer@pengutronix.de
> >wrote:
> >
> > > On Fri, Nov 09, 2012 at 12:06:38PM +0100, Fabio Porcedda wrote:
> > > > ...
> > > ...
> > ...
> > > (I was thinking about adding a -e parameter to cp to eventually skip
> the
> > > first step)
> > >
> >
> > It seems a nice addition for me.
>
> I'll look into it.
>
>
Thanks.


> >
> > There is some plane in the future to add a "update" command, like in
> > "defaultenv"?
>
> I have no plans doing so. Basically not because I do not want such a
> command, but because I do not know what such should do. The old command
> took parameters like 'mmc' or 'net' which was hard to dispatch into
> the different files and does not work with multiple mmc cards, so I
> thought doing it completely on file level would be enough (with the
> above additions added, maybe).
>
>
Thanks for the explanation.


> ...
>

I hope to submit soon the support for the Telit EVK-PRO3.

Best regards
-- 
Fabio Porcedda

--e89a8fb1f84ae8225d04ceec454e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><div class=3D"gmail_quote">On Wed, Nov 14, 2012 =
at 9:10 AM, Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pe=
ngutronix.de" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">

<div class=3D"im">On Tue, Nov 13, 2012 at 12:10:45PM +0100, Fabio Porcedda =
wrote:<br>
&gt; On Mon, Nov 12, 2012 at 8:55 AM, Sascha Hauer &lt;<a href=3D"mailto:s.=
hauer@pengutronix.de">s.hauer@pengutronix.de</a>&gt;wrote:<br>
&gt;<br>
&gt; &gt; On Fri, Nov 09, 2012 at 12:06:38PM +0100, Fabio Porcedda wrote:<b=
r>
&gt; &gt; &gt; ...<br>
&gt; &gt; ...<br>
&gt; ...<br>
&gt; &gt; (I was thinking about adding a -e parameter to cp to eventually s=
kip the<br>
&gt; &gt; first step)<br>
&gt; &gt;<br>
&gt;<br>
&gt; It seems a nice addition for me.<br>
<br>
</div>I&#39;ll look into it.<br>
<div class=3D"im"><br></div></blockquote><div><br>Thanks.<br>=A0<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div class=3D"im">
&gt;<br>
&gt; There is some plane in the future to add a &quot;update&quot; command,=
 like in<br>
&gt; &quot;defaultenv&quot;?<br>
<br>
</div>I have no plans doing so. Basically not because I do not want such a<=
br>
command, but because I do not know what such should do. The old command<br>
took parameters like &#39;mmc&#39; or &#39;net&#39; which was hard to dispa=
tch into<br>
the different files and does not work with multiple mmc cards, so I<br>
thought doing it completely on file level would be enough (with the<br>
above additions added, maybe).<br>
<div class=3D"im"><br></div></blockquote><div><br>Thanks for the explanatio=
n.<br>=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
...<br></div></blockquote></div><br>I hope to submit soon the support for t=
he Telit EVK-PRO3.<br><br clear=3D"all">Best regards<br>-- <br>Fabio Porced=
da<br><br>
</div>

--e89a8fb1f84ae8225d04ceec454e--


--===============4170133661106468831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4170133661106468831==--

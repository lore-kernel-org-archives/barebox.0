Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f53.google.com ([74.125.82.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxH7e-0000bC-NM
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 13:09:11 +0000
Received: by mail-wg0-f53.google.com with SMTP id fn15so3630432wgb.8
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 05:09:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130121125109.GA1906@pengutronix.de>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
 <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
 <CAB_54W76DctVP5c_aeghd+Bh+7Lr86sGLJ=BdGQrg40npCTnYA@mail.gmail.com>
 <20130121125109.GA1906@pengutronix.de>
Date: Mon, 21 Jan 2013 14:09:08 +0100
Message-ID: <CAB_54W7rQkfMZtW1Ni6ze0ecvi+G5hLZV6MWW=w9EMTAfJxnJw@mail.gmail.com>
From: Alexander Aring <alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1529150205795174706=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/10] introduce common bootstrap code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

--===============1529150205795174706==
Content-Type: multipart/alternative; boundary=089e0122896ca395e504d3cc2a5e

--089e0122896ca395e504d3cc2a5e
Content-Type: text/plain; charset=UTF-8

Hi,

ok, thanks for this information.

Regards
Alex


2013/1/21 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Jan 21, 2013 at 12:04:16PM +0100, Alexander Aring wrote:
> > hi,
> >
> > found a little 'things'. Maybe it's matter.
> >
> > > +
> > > +       cdev = cdev_open(name, O_RDONLY);
> > > +       if (!cdev) {
> > > +               bootstrap_err("failed to open partition\n");
> > > +               return NULL;
> > > +       }
> > > +
> > > +       ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
> > >
> > check on error here?
> >
>
> This is done, see below.
>
> >
> > > +       cdev_close(cdev);
> > > +
> > > +       if (ret != BAREBOX_HEAD_SIZE) {
> > > +               bootstrap_err("failed to read from partition\n");
> > > +               return NULL;
> > > +       }
> > > +
> > > +       return header;
> > > +}
> > > +
> > > +
> > > +       if (!size) {
> > > +               size = default_size;
> > > +               bootstrap_err("%s: failed to detect barebox and it's
> image
> > > size so use %d\n",
> > > +                        devname, size);
> > > +       }
> > > +
> > > +       to = xmalloc(size);
> > >
> > check on null here?
>
> The x versions always return memory or else they panic.
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--089e0122896ca395e504d3cc2a5e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>ok, thanks for this information.<br><br>Regards=
<br>Alex<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">2013/1/21 Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer=
@pengutronix.de" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span><br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Mon, Jan 21, 2013 at 12=
:04:16PM +0100, Alexander Aring wrote:<br>
&gt; hi,<br>
&gt;<br>
&gt; found a little &#39;things&#39;. Maybe it&#39;s matter.<br>
&gt;<br>
</div><div class=3D"im">&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 cdev =3D cdev_open(name, O_RDONLY);<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 if (!cdev) {<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(=
&quot;failed to open partition\n&quot;);<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<b=
r>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 ret =3D cdev_read(cdev, header, BAREBOX_HE=
AD_SIZE, 0, 0);<br>
&gt; &gt;<br>
&gt; check on error here?<br>
&gt;<br>
<br>
</div>This is done, see below.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 cdev_close(cdev);<br>
&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 if (ret !=3D BAREBOX_HEAD_SIZE) {<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(=
&quot;failed to read from partition\n&quot;);<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<b=
r>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 return header;<br>
&gt; &gt; +}<br>
&gt; &gt; +<br>
</div><div class=3D"im">&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 if (!size) {<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size =3D defau=
lt_size;<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(=
&quot;%s: failed to detect barebox and it&#39;s image<br>
&gt; &gt; size so use %d\n&quot;,<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0devname, size);<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt; +<br>
&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 to =3D xmalloc(size);<br>
&gt; &gt;<br>
&gt; check on null here?<br>
<br>
</div>The x versions always return memory or else they panic.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
<br>
--<br>
Pengutronix e.K. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Industrial Linux Solutions =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | <a href=3D"http://www.pengutronix.de/" target=3D"_blank">http://w=
ww.pengutronix.de/</a> =C2=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =C2=A0 =C2=A0|<=
br>
Amtsgericht Hildesheim, HRA 2686 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Fax: =
=C2=A0 <a href=3D"tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+=
49-5121-206917-5555</a> |<br>
</font></span></blockquote></div><br></div>

--089e0122896ca395e504d3cc2a5e--


--===============1529150205795174706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1529150205795174706==--

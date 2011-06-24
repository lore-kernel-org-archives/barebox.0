Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qa6f9-0005R3-L3
	for barebox@lists.infradead.org; Fri, 24 Jun 2011 13:43:12 +0000
Received: by iyn15 with SMTP id 15so2891824iyn.36
	for <barebox@lists.infradead.org>; Fri, 24 Jun 2011 06:43:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <BANLkTin9gmGY+CApY98wEX_qTkoAgKcU6A@mail.gmail.com>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
	<1308606394-7510-2-git-send-email-h.feurstein@gmail.com>
	<BANLkTi=Bx41-N8=68LKxFKw5Lf8+6DW_FA@mail.gmail.com>
	<BANLkTi=-Aff5any29Fj8BwBLzehv28FweA@mail.gmail.com>
	<BANLkTin9gmGY+CApY98wEX_qTkoAgKcU6A@mail.gmail.com>
Date: Fri, 24 Jun 2011 15:43:02 +0200
Message-ID: <BANLkTin8MBGK+jfP63AHj_OMmy==BTjsiQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0950614275=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: [RFC PATCH 2/3] spi: add more spi transfer functions
To: barebox <barebox@lists.infradead.org>

--===============0950614275==
Content-Type: multipart/alternative; boundary=00151773e360643ef104a67561cf

--00151773e360643ef104a67561cf
Content-Type: text/plain; charset=ISO-8859-1

Hi Hubert,

2011/6/24 Hubert Feurstein <h.feurstein@gmail.com>

> Hi Franck,
>
> 2011/6/23 Franck JULLIEN <franck.jullien@gmail.com>:
> > Hello, I have a question regarding the SPI spi_write_then_read function.
> >
> [snip]
> >> +int spi_write_then_read(struct spi_device *spi,
> >> +               const void *txbuf, unsigned n_tx,
> >
> > Could you explain me why const is used here ?
> Because this function will *not* write to the data of txbuf. With the
> const here, this is
> ensured at least at syntax level.
>

OK.


>
> [snip]
> >
> > Then we call spi_sync then master->transfer. In this last function we
> have:
> > list_for_each_entry (t, &mesg->transfers, transfer_list) {
> > const u32 *txbuf = t->tx_buf;  <--- point to zero when x[1] right ?????
> > u32 *rxbuf = t->rx_buf;        <--- point to zero when x[0] right ?????
> > int i = 0;
> > while(i < t->len >> 2) {
> > rxbuf[i] = imx->xchg_single(imx, txbuf[i]);
> > i++;
> > }
> > }
> > What am I missing ???
> Your  transfer function has to handle this correctly:
> while(i < t->len >> 2) {
>   u32 txval = txbuf ? txbuf[i] : 0
>  u32 rxval = imx->xchg_single(imx, txval);
>  if (rxbuf)
>    rxbuf[i] = rxval;
>  i++;
> }
>

That's what I was thinking about. The code above is from imx_spi.c. I am
currently
writing an Altera spi driver that's why I was looking at this...



> If no txbuf is available then simply transfer 0, if no rxbuf is
> available then throw away the result.
> BTW, I'm not sure if the above transfer-handler is able to handle 8bit
> transfers correctly (because of len >> 2).
>
>
I agree.


> Hope this helps.
>
> Best Regards
> Hubert
>

Thanks,
Franck.

--00151773e360643ef104a67561cf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">Hi Hubert,<br><br><div class=3D"gmail_quote"><di=
v class=3D"im">2011/6/24 Hubert Feurstein <span dir=3D"ltr">&lt;<a href=3D"=
mailto:h.feurstein@gmail.com" target=3D"_blank">h.feurstein@gmail.com</a>&g=
t;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Franck,<br>
<br>
2011/6/23 Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.com" ta=
rget=3D"_blank">franck.jullien@gmail.com</a>&gt;:<br>
<div>&gt; Hello, I have a question regarding the SPI=A0spi_write_then_read =
function.<br>
&gt;<br>
</div>[snip]<br>
<div>&gt;&gt; +int spi_write_then_read(struct spi_device *spi,<br>
&gt;&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const void *txbuf, unsigned n_tx,<br=
>
&gt;<br>
&gt; Could you explain me why const is used here ?<br>
</div>Because this function will *not* write to the data of txbuf. With the=
<br>
const here, this is<br>
ensured at least at syntax level.<br></blockquote><div><br></div></div><div=
>OK.</div><div class=3D"im"><div>=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
[snip]<br>
<div>&gt;<br>
&gt; Then we call spi_sync then=A0master-&gt;transfer. In this last functio=
n we have:<br>
&gt; list_for_each_entry (t, &amp;mesg-&gt;transfers, transfer_list) {<br>
&gt; const u32 *txbuf =3D t-&gt;tx_buf; =A0&lt;--- point to zero=A0when x[1=
]=A0right ?????<br>
&gt; u32 *rxbuf =3D t-&gt;rx_buf; =A0 =A0 =A0 =A0&lt;---=A0point to zero wh=
en=A0x[0]=A0right ?????<br>
&gt; int i =3D 0;<br>
&gt; while(i &lt; t-&gt;len &gt;&gt; 2) {<br>
&gt; rxbuf[i] =3D imx-&gt;xchg_single(imx, txbuf[i]);<br>
&gt; i++;<br>
&gt; }<br>
&gt; }<br>
&gt; What am I missing ???<br>
</div>Your =A0transfer function has to handle this correctly:<br>
<div>while(i &lt; t-&gt;len &gt;&gt; 2) {<br>
</div> =A0u32 txval =3D txbuf ? txbuf[i] : 0<br>
 =A0u32 rxval =3D imx-&gt;xchg_single(imx, txval);<br>
 =A0if (rxbuf)<br>
 =A0 =A0rxbuf[i] =3D rxval;<br>
 =A0i++;<br>
}<br></blockquote><div><br></div></div><div>That&#39;s what I was thinking =
about. The code above is from imx_spi.c. I am currently</div><div>writing a=
n Altera spi driver that&#39;s why I was looking at this...</div><div class=
=3D"im">
<div><br></div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
If no txbuf is available then simply transfer 0, if no rxbuf is<br>
available then throw away the result.<br>
BTW, I&#39;m not sure if the above transfer-handler is able to handle 8bit<=
br>
transfers correctly (because of len &gt;&gt; 2).<br>
<br></blockquote><div><br></div></div><div>I agree.</div><div class=3D"im">=
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
Hope this helps.<br>
<br>
Best Regards<br>
<font color=3D"#888888">Hubert<br>
</font></blockquote></div></div><br><div>Thanks,</div><div>Franck.</div>
</div><br>

--00151773e360643ef104a67561cf--


--===============0950614275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0950614275==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZpsi-0006LM-JC
	for barebox@lists.infradead.org; Thu, 23 Jun 2011 19:48:06 +0000
Received: by iyn15 with SMTP id 15so2218867iyn.36
	for <barebox@lists.infradead.org>; Thu, 23 Jun 2011 12:47:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1308606394-7510-2-git-send-email-h.feurstein@gmail.com>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
	<1308606394-7510-2-git-send-email-h.feurstein@gmail.com>
Date: Thu, 23 Jun 2011 21:47:57 +0200
Message-ID: <BANLkTi=Bx41-N8=68LKxFKw5Lf8+6DW_FA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0586766306=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 2/3] spi: add more spi transfer functions
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

--===============0586766306==
Content-Type: multipart/alternative; boundary=90e6ba3fd5fda627cc04a6665c30

--90e6ba3fd5fda627cc04a6665c30
Content-Type: text/plain; charset=ISO-8859-1

Hello, I have a question regarding the SPI spi_write_then_read function.

2011/6/20 Hubert Feurstein <h.feurstein@gmail.com>

> This commit adds the following spi transfer functions:
>  - spi_write
>  - spi_read
>  - spi_write_then_read
>  - spi_w8r8
>
> The code has been ported from the linux kernel.
>
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/spi/spi.c |   41 +++++++++++++++++++++++++++++
>  include/spi/spi.h |   74
> +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 115 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 588c263..6456897 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -195,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct
> spi_message *message)
>        return spi->master->transfer(spi, message);
>  }
>
> +/**
> + * spi_write_then_read - SPI synchronous write followed by read
> + * @spi: device with which data will be exchanged
> + * @txbuf: data to be written
> + * @n_tx: size of txbuf, in bytes
> + * @rxbuf: buffer into which data will be read
> + * @n_rx: size of rxbuf, in bytes
> + * Context: can sleep
> + *
> + * This performs a half duplex MicroWire style transaction with the
> + * device, sending txbuf and then reading rxbuf.  The return value
> + * is zero for success, else a negative errno status code.
> + * This call may only be used from a context that may sleep.
> + */
> +int spi_write_then_read(struct spi_device *spi,
> +               const void *txbuf, unsigned n_tx,
>

Could you explain me why const is used here ?


> +               void *rxbuf, unsigned n_rx)
> +{
> +       int                     status;
> +       struct spi_message      message;
> +       struct spi_transfer     x[2];
> +
> +       spi_message_init(&message);
> +       memset(x, 0, sizeof x);
>

Here we set everything to zero, including rx/tx buffer pointers.



> +       if (n_tx) {
> +               x[0].len = n_tx;
> +               spi_message_add_tail(&x[0], &message);
> +       }
> +       if (n_rx) {
> +               x[1].len = n_rx;
> +               spi_message_add_tail(&x[1], &message);
> +       }
> +
> +       x[0].tx_buf = txbuf;
> +       x[1].rx_buf = rxbuf;
>

We still have x[0].rx_buf = 0 and x[1].tx_buf = 0


> +
> +       /* do the i/o */
> +       status = spi_sync(spi, &message);
>

Then we call spi_sync then master->transfer. In this last function we have:

list_for_each_entry (t, &mesg->transfers, transfer_list) {

const u32 *txbuf = t->tx_buf;  <--- point to zero when x[1] right ?????
u32 *rxbuf = t->rx_buf;        <--- point to zero when x[0] right ?????

int i = 0;

while(i < t->len >> 2) {
rxbuf[i] = imx->xchg_single(imx, txbuf[i]);
i++;
}
}

What am I missing ???



> +       return status;
> +}
> +EXPORT_SYMBOL(spi_write_then_read);
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index c76f3b7..ac2013a 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -349,6 +349,80 @@ static inline int spi_register_board_info(struct
> spi_board_info const *info,
>  }
>  #endif
>
> +/**
> + * spi_write - SPI synchronous write
> + * @spi: device to which data will be written
> + * @buf: data buffer
> + * @len: data buffer size
> + * Context: can sleep
> + *
> + * This writes the buffer and returns zero or a negative error code.
> + * Callable only from contexts that can sleep.
> + */
> +static inline int
> +spi_write(struct spi_device *spi, const void *buf, size_t len)
> +{
> +       struct spi_transfer     t = {
> +                       .tx_buf         = buf,
> +                       .len            = len,
> +               };
> +       struct spi_message      m;
> +
> +       spi_message_init(&m);
> +       spi_message_add_tail(&t, &m);
> +       return spi_sync(spi, &m);
> +}
> +
> +/**
> + * spi_read - SPI synchronous read
> + * @spi: device from which data will be read
> + * @buf: data buffer
> + * @len: data buffer size
> + * Context: can sleep
> + *
> + * This reads the buffer and returns zero or a negative error code.
> + * Callable only from contexts that can sleep.
> + */
> +static inline int
> +spi_read(struct spi_device *spi, void *buf, size_t len)
> +{
> +       struct spi_transfer     t = {
> +                       .rx_buf         = buf,
> +                       .len            = len,
> +               };
> +       struct spi_message      m;
> +
> +       spi_message_init(&m);
> +       spi_message_add_tail(&t, &m);
> +       return spi_sync(spi, &m);
> +}
> +
> +/* this copies txbuf and rxbuf data; for small transfers only! */
> +extern int spi_write_then_read(struct spi_device *spi,
> +               const void *txbuf, unsigned n_tx,
> +               void *rxbuf, unsigned n_rx);
> +
> +/**
> + * spi_w8r8 - SPI synchronous 8 bit write followed by 8 bit read
> + * @spi: device with which data will be exchanged
> + * @cmd: command to be written before data is read back
> + * Context: can sleep
> + *
> + * This returns the (unsigned) eight bit number returned by the
> + * device, or else a negative error code.  Callable only from
> + * contexts that can sleep.
> + */
> +static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
> +{
> +       ssize_t                 status;
> +       u8                      result;
> +
> +       status = spi_write_then_read(spi, &cmd, 1, &result, 1);
> +
> +       /* return negative errno or unsigned value */
> +       return (status < 0) ? status : result;
> +}
> +
>  #endif /* DOXYGEN_SHOULD_SKIP_THIS */
>
>  #endif /* __INCLUDE_SPI_H */
> --
> 1.7.4.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



Franck.

--90e6ba3fd5fda627cc04a6665c30
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello, I have a question regarding the SPI=A0spi_write_then_read function.<=
br><br><div class=3D"gmail_quote">2011/6/20 Hubert Feurstein <span dir=3D"l=
tr">&lt;<a href=3D"mailto:h.feurstein@gmail.com">h.feurstein@gmail.com</a>&=
gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">This commit adds the following spi transfer=
 functions:<br>
 =A0- spi_write<br>
 =A0- spi_read<br>
 =A0- spi_write_then_read<br>
 =A0- spi_w8r8<br>
<br>
The code has been ported from the linux kernel.<br>
<br>
Signed-off-by: Hubert Feurstein &lt;<a href=3D"mailto:h.feurstein@gmail.com=
">h.feurstein@gmail.com</a>&gt;<br>
---<br>
=A0drivers/spi/spi.c | =A0 41 +++++++++++++++++++++++++++++<br>
=A0include/spi/spi.h | =A0 74 +++++++++++++++++++++++++++++++++++++++++++++=
++++++++<br>
=A02 files changed, 115 insertions(+), 0 deletions(-)<br>
<br>
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c<br>
index 588c263..6456897 100644<br>
--- a/drivers/spi/spi.c<br>
+++ b/drivers/spi/spi.c<br>
@@ -195,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct spi_messag=
e *message)<br>
 =A0 =A0 =A0 =A0return spi-&gt;master-&gt;transfer(spi, message);<br>
=A0}<br>
<br>
+/**<br>
+ * spi_write_then_read - SPI synchronous write followed by read<br>
+ * @spi: device with which data will be exchanged<br>
+ * @txbuf: data to be written<br>
+ * @n_tx: size of txbuf, in bytes<br>
+ * @rxbuf: buffer into which data will be read<br>
+ * @n_rx: size of rxbuf, in bytes<br>
+ * Context: can sleep<br>
+ *<br>
+ * This performs a half duplex MicroWire style transaction with the<br>
+ * device, sending txbuf and then reading rxbuf. =A0The return value<br>
+ * is zero for success, else a negative errno status code.<br>
+ * This call may only be used from a context that may sleep.<br>
+ */<br>
+int spi_write_then_read(struct spi_device *spi,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 const void *txbuf, unsigned n_tx,<br></blockq=
uote><div><br></div><div>Could you explain me why const is used here ?</div=
><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex;">

+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 void *rxbuf, unsigned n_rx)<br>
+{<br>
+ =A0 =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 status;<br>
+ =A0 =A0 =A0 struct spi_message =A0 =A0 =A0message;<br>
+ =A0 =A0 =A0 struct spi_transfer =A0 =A0 x[2];<br>
+<br>
+ =A0 =A0 =A0 spi_message_init(&amp;message);<br>
+ =A0 =A0 =A0 memset(x, 0, sizeof x);<br></blockquote><div><br></div><div>H=
ere we set everything to zero, including rx/tx buffer pointers.</div><div><=
br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

+ =A0 =A0 =A0 if (n_tx) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 x[0].len =3D n_tx;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_message_add_tail(&amp;x[0], &amp;message)=
;<br>
+ =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 if (n_rx) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 x[1].len =3D n_rx;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_message_add_tail(&amp;x[1], &amp;message)=
;<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 x[0].tx_buf =3D txbuf;<br>
+ =A0 =A0 =A0 x[1].rx_buf =3D rxbuf;<br></blockquote><div><br></div><div>We=
 still have x[0].rx_buf =3D 0 and x[1].tx_buf =3D 0</div><div>=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex;">

+<br>
+ =A0 =A0 =A0 /* do the i/o */<br>
+ =A0 =A0 =A0 status =3D spi_sync(spi, &amp;message);<br></blockquote><div>=
<br></div><div>Then we call spi_sync then=A0master-&gt;transfer. In this la=
st function we have:</div><div><br></div><div><div><font class=3D"Apple-sty=
le-span" face=3D"&#39;courier new&#39;, monospace"><span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>list_for_each_entry (t, &amp;mesg-=
&gt;transfers, transfer_list) {</font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><br></font></div><div><font class=3D"Apple-style-span" face=3D"&#39;co=
urier new&#39;, monospace"><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">		</span>const u32 *txbuf =3D t-&gt;tx_buf; =A0&lt;--- point to ze=
ro=A0</font><span class=3D"Apple-style-span" style=3D"font-family: &#39;cou=
rier new&#39;, monospace; ">when x[1]=A0</span><span class=3D"Apple-style-s=
pan" style=3D"font-family: &#39;courier new&#39;, monospace; ">right ?????<=
/span></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>u32 =
*rxbuf =3D t-&gt;rx_buf; =A0 =A0 =A0 =A0&lt;---=A0</font><span class=3D"App=
le-style-span" style=3D"font-family: &#39;courier new&#39;, monospace; ">po=
int to zero when=A0</span><span class=3D"Apple-style-span" style=3D"font-fa=
mily: &#39;courier new&#39;, monospace; ">x[0]=A0</span><span class=3D"Appl=
e-style-span" style=3D"font-family: &#39;courier new&#39;, monospace; ">rig=
ht ?????</span></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><br></font></div><div><font class=3D"Apple-style-span" face=3D"&#39;co=
urier new&#39;, monospace"><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">		</span>int i =3D 0;</font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><br></font></div><div><font class=3D"Apple-style-span" face=3D"&#39;co=
urier new&#39;, monospace"><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">		</span>while(i &lt; t-&gt;len &gt;&gt; 2) {</font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>rxb=
uf[i] =3D imx-&gt;xchg_single(imx, txbuf[i]);</font></div><div><font class=
=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monospace"><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">			</span>i++;</font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>}</f=
ont></div><div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#3=
9;, monospace"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>}</font></div>
</div><div><br></div><div>What am I missing ???</div><div><br></div><div>=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex;">
+ =A0 =A0 =A0 return status;<br>
+}<br>
+EXPORT_SYMBOL(spi_write_then_read);<br>
diff --git a/include/spi/spi.h b/include/spi/spi.h<br>
index c76f3b7..ac2013a 100644<br>
--- a/include/spi/spi.h<br>
+++ b/include/spi/spi.h<br>
@@ -349,6 +349,80 @@ static inline int spi_register_board_info(struct spi_b=
oard_info const *info,<br>
=A0}<br>
=A0#endif<br>
<br>
+/**<br>
+ * spi_write - SPI synchronous write<br>
+ * @spi: device to which data will be written<br>
+ * @buf: data buffer<br>
+ * @len: data buffer size<br>
+ * Context: can sleep<br>
+ *<br>
+ * This writes the buffer and returns zero or a negative error code.<br>
+ * Callable only from contexts that can sleep.<br>
+ */<br>
+static inline int<br>
+spi_write(struct spi_device *spi, const void *buf, size_t len)<br>
+{<br>
+ =A0 =A0 =A0 struct spi_transfer =A0 =A0 t =3D {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 .tx_buf =A0 =A0 =A0 =A0 =3D b=
uf,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 .len =A0 =A0 =A0 =A0 =A0 =A0=
=3D len,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 struct spi_message =A0 =A0 =A0m;<br>
+<br>
+ =A0 =A0 =A0 spi_message_init(&amp;m);<br>
+ =A0 =A0 =A0 spi_message_add_tail(&amp;t, &amp;m);<br>
+ =A0 =A0 =A0 return spi_sync(spi, &amp;m);<br>
+}<br>
+<br>
+/**<br>
+ * spi_read - SPI synchronous read<br>
+ * @spi: device from which data will be read<br>
+ * @buf: data buffer<br>
+ * @len: data buffer size<br>
+ * Context: can sleep<br>
+ *<br>
+ * This reads the buffer and returns zero or a negative error code.<br>
+ * Callable only from contexts that can sleep.<br>
+ */<br>
+static inline int<br>
+spi_read(struct spi_device *spi, void *buf, size_t len)<br>
+{<br>
+ =A0 =A0 =A0 struct spi_transfer =A0 =A0 t =3D {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 .rx_buf =A0 =A0 =A0 =A0 =3D b=
uf,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 .len =A0 =A0 =A0 =A0 =A0 =A0=
=3D len,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 };<br>
+ =A0 =A0 =A0 struct spi_message =A0 =A0 =A0m;<br>
+<br>
+ =A0 =A0 =A0 spi_message_init(&amp;m);<br>
+ =A0 =A0 =A0 spi_message_add_tail(&amp;t, &amp;m);<br>
+ =A0 =A0 =A0 return spi_sync(spi, &amp;m);<br>
+}<br>
+<br>
+/* this copies txbuf and rxbuf data; for small transfers only! */<br>
+extern int spi_write_then_read(struct spi_device *spi,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 const void *txbuf, unsigned n_tx,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 void *rxbuf, unsigned n_rx);<br>
+<br>
+/**<br>
+ * spi_w8r8 - SPI synchronous 8 bit write followed by 8 bit read<br>
+ * @spi: device with which data will be exchanged<br>
+ * @cmd: command to be written before data is read back<br>
+ * Context: can sleep<br>
+ *<br>
+ * This returns the (unsigned) eight bit number returned by the<br>
+ * device, or else a negative error code. =A0Callable only from<br>
+ * contexts that can sleep.<br>
+ */<br>
+static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)<br>
+{<br>
+ =A0 =A0 =A0 ssize_t =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 status;<br>
+ =A0 =A0 =A0 u8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0result;<br>
+<br>
+ =A0 =A0 =A0 status =3D spi_write_then_read(spi, &amp;cmd, 1, &amp;result,=
 1);<br>
+<br>
+ =A0 =A0 =A0 /* return negative errno or unsigned value */<br>
+ =A0 =A0 =A0 return (status &lt; 0) ? status : result;<br>
+}<br>
+<br>
=A0#endif /* DOXYGEN_SHOULD_SKIP_THIS */<br>
<br>
=A0#endif /* __INCLUDE_SPI_H */<br>
<font color=3D"#888888">--<br>
1.7.4.1<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a></font></bloc=
kquote><div><br></div><div><br></div><div>Franck.=A0</div></div><br>

--90e6ba3fd5fda627cc04a6665c30--


--===============0586766306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0586766306==--

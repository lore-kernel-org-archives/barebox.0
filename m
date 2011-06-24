Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qa6Ba-00057R-D7
	for barebox@lists.infradead.org; Fri, 24 Jun 2011 13:12:39 +0000
Received: by ywf9 with SMTP id 9so1325581ywf.36
	for <barebox@lists.infradead.org>; Fri, 24 Jun 2011 06:12:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <BANLkTi=Bx41-N8=68LKxFKw5Lf8+6DW_FA@mail.gmail.com>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
	<1308606394-7510-2-git-send-email-h.feurstein@gmail.com>
	<BANLkTi=Bx41-N8=68LKxFKw5Lf8+6DW_FA@mail.gmail.com>
Date: Fri, 24 Jun 2011 15:12:32 +0200
Message-ID: <BANLkTi=-Aff5any29Fj8BwBLzehv28FweA@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: Re: [RFC PATCH 2/3] spi: add more spi transfer functions
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franck,

2011/6/23 Franck JULLIEN <franck.jullien@gmail.com>:
> Hello, I have a question regarding the SPI=A0spi_write_then_read function.
>
[snip]
>> +int spi_write_then_read(struct spi_device *spi,
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const void *txbuf, unsigned n_tx,
>
> Could you explain me why const is used here ?
Because this function will *not* write to the data of txbuf. With the
const here, this is
ensured at least at syntax level.

[snip]
>
> Then we call spi_sync then=A0master->transfer. In this last function we h=
ave:
> list_for_each_entry (t, &mesg->transfers, transfer_list) {
> const u32 *txbuf =3D t->tx_buf; =A0<--- point to zero=A0when x[1]=A0right=
 ?????
> u32 *rxbuf =3D t->rx_buf; =A0 =A0 =A0 =A0<---=A0point to zero when=A0x[0]=
=A0right ?????
> int i =3D 0;
> while(i < t->len >> 2) {
> rxbuf[i] =3D imx->xchg_single(imx, txbuf[i]);
> i++;
> }
> }
> What am I missing ???
Your  transfer function has to handle this correctly:
while(i < t->len >> 2) {
  u32 txval =3D txbuf ? txbuf[i] : 0
  u32 rxval =3D imx->xchg_single(imx, txval);
  if (rxbuf)
    rxbuf[i] =3D rxval;
  i++;
}
If no txbuf is available then simply transfer 0, if no rxbuf is
available then throw away the result.
BTW, I'm not sure if the above transfer-handler is able to handle 8bit
transfers correctly (because of len >> 2).

Hope this helps.

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

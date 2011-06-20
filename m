Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYYpj-00015v-Uy
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 07:23:44 +0000
Received: by vxd3 with SMTP id 3so2496931vxd.36
	for <barebox@lists.infradead.org>; Mon, 20 Jun 2011 00:23:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110620064501.GL23771@pengutronix.de>
References: <1308211963-4384-1-git-send-email-h.feurstein@gmail.com>
	<20110620064501.GL23771@pengutronix.de>
Date: Mon, 20 Jun 2011 09:23:40 +0200
Message-ID: <BANLkTi=2s_PWjLeNNEaOigRWfKg7JmYMtg@mail.gmail.com>
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
Subject: Re: [RFC PATCH] spi: add at25 spi eeprom driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

2011/6/20 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Hubert,
>
> On Thu, Jun 16, 2011 at 10:12:43AM +0200, Hubert Feurstein wrote:
>> =A0obj-y =A0 =A0 =A0 =A0+=3D mfd/
>> =A0obj-$(CONFIG_LED) +=3D led/
>> +obj-y =A0 =A0 =A0 =A0+=3D misc/
>> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
>
> I think we should move the driver up to drivers/eeprom and skip the
> 'misc'. The kernel guys like to get rid of it also.
>
OK

>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 /* Wait for non-busy status */
>> + =A0 =A0 =A0 =A0 =A0 =A0 start_time =3D get_time_ns();
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 retries =3D 0;
>> + =A0 =A0 =A0 =A0 =A0 =A0 do {
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sr =3D spi_w8r8(at25->spi, AT2=
5_RDSR);
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (sr < 0 || (sr & AT25_SR_nR=
DY)) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(at25->=
cdev.dev,
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 "rdsr --> %d (%02x)\n", sr, sr);
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 mdelay(1);
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!(sr & AT25_SR_nRDY))
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
>> + =A0 =A0 =A0 =A0 =A0 =A0 } while (retries++ < 3 || !is_timeout(start_ti=
me, EE_TIMEOUT));
>
> I don't understand this. The loop is limited by retries++ < 3. Why this
> additional is_timeout? Is this the same in the kernel?
>
Hmm, I don't know why we have both here. I simply ported the kernel code.

>> +static int at25_init(void)
>> +{
>> + =A0 =A0 register_driver(&at25_driver);
>> + =A0 =A0 return 0;
>> +}
>> +
>> +device_initcall(at25_init);
>> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
>> index 4560259..6456897 100644
>> --- a/drivers/spi/spi.c
>> +++ b/drivers/spi/spi.c
>> @@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *m=
aster,
>> =A0 =A0 =A0 proxy->chip_select =3D chip->chip_select;
>> =A0 =A0 =A0 proxy->max_speed_hz =3D chip->max_speed_hz;
>> =A0 =A0 =A0 proxy->mode =3D chip->mode;
>> + =A0 =A0 proxy->dev.platform_data =3D chip->platform_data;
>
> This should be a seperate patch.
OK

>
>> =A0 =A0 =A0 strcpy(proxy->dev.name, chip->name);
>> =A0 =A0 =A0 proxy->dev.type_data =3D proxy;
>> =A0 =A0 =A0 status =3D register_device(&proxy->dev);
>> @@ -194,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct spi_mes=
sage *message)
>> =A0 =A0 =A0 return spi->master->transfer(spi, message);
>> =A0}
>>
>> +/**
>> + * spi_write_then_read - SPI synchronous write followed by read
>> + * @spi: device with which data will be exchanged
>> + * @txbuf: data to be written
>> + * @n_tx: size of txbuf, in bytes
>> + * @rxbuf: buffer into which data will be read
>> + * @n_rx: size of rxbuf, in bytes
>> + * Context: can sleep
>> + *
>> + * This performs a half duplex MicroWire style transaction with the
>> + * device, sending txbuf and then reading rxbuf. =A0The return value
>> + * is zero for success, else a negative errno status code.
>> + * This call may only be used from a context that may sleep.
>> + */
>> +int spi_write_then_read(struct spi_device *spi,
>> + =A0 =A0 =A0 =A0 =A0 =A0 const void *txbuf, unsigned n_tx,
>> + =A0 =A0 =A0 =A0 =A0 =A0 void *rxbuf, unsigned n_rx)
>> +{
>> + =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 status;
>> + =A0 =A0 struct spi_message =A0 =A0 =A0message;
>> + =A0 =A0 struct spi_transfer =A0 =A0 x[2];
>> +
>> + =A0 =A0 spi_message_init(&message);
>> + =A0 =A0 memset(x, 0, sizeof x);
>> + =A0 =A0 if (n_tx) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 x[0].len =3D n_tx;
>> + =A0 =A0 =A0 =A0 =A0 =A0 spi_message_add_tail(&x[0], &message);
>> + =A0 =A0 }
>> + =A0 =A0 if (n_rx) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 x[1].len =3D n_rx;
>> + =A0 =A0 =A0 =A0 =A0 =A0 spi_message_add_tail(&x[1], &message);
>> + =A0 =A0 }
>> +
>> + =A0 =A0 x[0].tx_buf =3D txbuf;
>> + =A0 =A0 x[1].rx_buf =3D rxbuf;
>> +
>> + =A0 =A0 /* do the i/o */
>> + =A0 =A0 status =3D spi_sync(spi, &message);
>> + =A0 =A0 return status;
>> +}
>> +EXPORT_SYMBOL(spi_write_then_read);
>
> Also a seperate patch.
OK


Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

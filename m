Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTUTX-0005BI-3Q
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 07:43:52 +0000
Received: by vws8 with SMTP id 8so3449064vws.36
	for <barebox@lists.infradead.org>; Mon, 06 Jun 2011 00:43:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110602160400.GG32751@game.jcrosoft.org>
References: <20110601054500.GA32751@game.jcrosoft.org>
	<1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
	<20110602160400.GG32751@game.jcrosoft.org>
Date: Mon, 6 Jun 2011 09:43:49 +0200
Message-ID: <BANLkTikRx9gNs7jLkL1+A7WUoLewTp9JhQ@mail.gmail.com>
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
Subject: Re: [PATCH v2] mci: add Atmel AT91 MCI driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2011/6/2 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> On 13:48 Wed 01 Jun =A0 =A0 , Hubert Feurstein wrote:
[snip]
> I've test it on at91sam9263ek and work fine
Great, good to hear ;) I'll add also support for at91sam9m10g45ek
later in an extra commit.
>
> please fix the following comments
> Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>
[snip]
>> +/* Multimedia Card Interface */
>> +struct atmel_mci_platform_data {
>> +     unsigned bus_width;
>> +     unsigned host_caps; /* MCI_MODE_* from mci.h */
>> +     unsigned detect_pin;
>> +     unsigned wp_pin;
>> +};
>we can have 2 slot but you allow only one
Would it be ok to add the second slot in an extra commit?

[snip]
>> +/*
>> + * Structure for struct SoC access.
>> + * Names starting with '_' are fillers.
>> + */
>> +struct atmel_mci_regs {
>> + =A0 =A0 /* =A0 =A0 =A0reg =A0 =A0 Offset */
>> + =A0 =A0 u32 =A0 =A0 cr; =A0 =A0 /* 0x00 */
>> + =A0 =A0 u32 =A0 =A0 mr; =A0 =A0 /* 0x04 */
>> + =A0 =A0 u32 =A0 =A0 dtor; =A0 /* 0x08 */
>> + =A0 =A0 u32 =A0 =A0 sdcr; =A0 /* 0x0c */
>> + =A0 =A0 u32 =A0 =A0 argr; =A0 /* 0x10 */
>> + =A0 =A0 u32 =A0 =A0 cmdr; =A0 /* 0x14 */
>> + =A0 =A0 u32 =A0 =A0 blkr; =A0 /* 0x18 */
>> + =A0 =A0 u32 =A0 =A0 _1c; =A0 =A0/* 0x1c */
>> + =A0 =A0 u32 =A0 =A0 rspr; =A0 /* 0x20 */
>> + =A0 =A0 u32 =A0 =A0 rspr1; =A0/* 0x24 */
>> + =A0 =A0 u32 =A0 =A0 rspr2; =A0/* 0x28 */
>> + =A0 =A0 u32 =A0 =A0 rspr3; =A0/* 0x2c */
>> + =A0 =A0 u32 =A0 =A0 rdr; =A0 =A0/* 0x30 */
>> + =A0 =A0 u32 =A0 =A0 tdr; =A0 =A0/* 0x34 */
>> + =A0 =A0 u32 =A0 =A0 _38; =A0 =A0/* 0x38 */
>> + =A0 =A0 u32 =A0 =A0 _3c; =A0 =A0/* 0x3c */
>> + =A0 =A0 u32 =A0 =A0 sr; =A0 =A0 /* 0x40 */
>> + =A0 =A0 u32 =A0 =A0 ier; =A0 =A0/* 0x44 */
>> + =A0 =A0 u32 =A0 =A0 idr; =A0 =A0/* 0x48 */
>> + =A0 =A0 u32 =A0 =A0 imr; =A0 =A0/* 0x4c */
>> +};
> please use the same as the kernel here
> offset not a struct
Of course I could change it to offset, but I thought this is the way
how it is done in barebox.
What is Sascha's opinion on that?

>> +
>> +struct atmel_mci_host {
>> + =A0 =A0 struct mci_host mci;
>> + =A0 =A0 struct atmel_mci_regs volatile __iomem *base;
>> + =A0 =A0 struct device_d *hw_dev;
>> + =A0 =A0 struct clk *clk;
>> +
>> + =A0 =A0 u32 datasize;
>> + =A0 =A0 struct mci_cmd *cmd;
>> + =A0 =A0 struct mci_data *data;
>> +};
>> +
>
>> +static int atmel_pull(struct atmel_mci_host *host, void *_buf, int byte=
s)
>> +{
>> + =A0 =A0 unsigned int stat;
>> + =A0 =A0 u32 *buf =3D _buf;
>> +
>> + =A0 =A0 while (bytes > 3) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 stat =3D atmel_poll_status(host, AT91_MCI_RXRD=
Y);
>> + =A0 =A0 =A0 =A0 =A0 =A0 if (stat)
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return stat;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 *buf++ =3D readl(&host->base->rdr);
>> + =A0 =A0 =A0 =A0 =A0 =A0 bytes -=3D 4;
>> + =A0 =A0 }
>> +
>> + =A0 =A0 if (bytes) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 u8 *b =3D (u8 *)buf;
>> + =A0 =A0 =A0 =A0 =A0 =A0 u32 tmp;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 stat =3D atmel_poll_status(host, AT91_MCI_RXRD=
Y);
>> + =A0 =A0 =A0 =A0 =A0 =A0 if (stat)
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return stat;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 tmp =3D readl(&host->base->rdr);
>> + =A0 =A0 =A0 =A0 =A0 =A0 memcpy(b, &tmp, bytes);
> please use __iowrite32 to speedup the copy
I think memcpy is alright here. Usually this code-path shouldn't be
executed anyway, because the mci-core always
requests multiples of 512 bytes, and here we copy only the last
remaining _three_ bytes.

>> + =A0 =A0 }
>> +
>> + =A0 =A0 return 0;
>> +}
>> +
[snip]
>> +
>> + =A0 =A0 if (bus_width =3D=3D 8)
>> + =A0 =A0 =A0 =A0 =A0 =A0 writel(AT91_MCI_SDCBUS_8BIT, &host->base->sdcr=
);
>> + =A0 =A0 if (bus_width =3D=3D 4)
>> + =A0 =A0 =A0 =A0 =A0 =A0 writel(AT91_MCI_SDCBUS_4BIT, &host->base->sdcr=
);
>> + =A0 =A0 else
>> + =A0 =A0 =A0 =A0 =A0 =A0 writel(AT91_MCI_SDCBUS_1BIT, &host->base->sdcr=
);
> switch here
OK

[snip]
>> +
>> +static int mci_probe(struct device_d *hw_dev)
>> +{
>> + =A0 =A0 unsigned long clk_rate;
>> + =A0 =A0 struct atmel_mci_host *host;
>> + =A0 =A0 struct atmel_mci_platform_data *pd =3D hw_dev->platform_data;
>> +
>> + =A0 =A0 if (pd =3D=3D NULL) {
> if (!pd)
OK
>> + =A0 =A0 =A0 =A0 =A0 =A0 dev_err(hw_dev, "missing platform data\n");
>> + =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
>> + =A0 =A0 }
>> +
>> + =A0 =A0 host =3D xzalloc(sizeof(*host));
>> + =A0 =A0 host->mci.send_cmd =3D mci_request;
>> + =A0 =A0 host->mci.set_ios =3D mci_set_ios;
>> + =A0 =A0 host->mci.init =3D mci_reset;
>> +
>
> Best Regards,
> J.
>
Best Regards and thank you for the support.
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlg0d-0004Hd-7h
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 11:41:12 +0000
Received: by iyn15 with SMTP id 15so535252iyn.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 04:41:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110726064858.GC20587@pengutronix.de>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
	<1311623420-30234-3-git-send-email-franck.jullien@gmail.com>
	<20110726064858.GC20587@pengutronix.de>
Date: Tue, 26 Jul 2011 13:41:06 +0200
Message-ID: <CAJfOKBweX-C3DP3=Q4kU+g0GGUkVTMvy8ywBxwn2zAHw9cZy_w@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/4] nios2/altera_tse.c: switch to ressources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

2011/7/26 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Franck,
>
> On Mon, Jul 25, 2011 at 09:50:18PM +0200, franck.jullien@gmail.com wrote:
>> From: Franck Jullien <franck.jullien@gmail.com>
>>
>> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
>> ---
>> =A0drivers/net/altera_tse.c | =A0 =A04 ++--
>> =A01 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
>> index ac8cd2d..4298739 100644
>> --- a/drivers/net/altera_tse.c
>> +++ b/drivers/net/altera_tse.c
>> @@ -510,7 +510,7 @@ static int tse_probe(struct device_d *dev)
>> =A0 =A0 =A0 dev->type_data =3D edev;
>> =A0 =A0 =A0 edev->priv =3D (struct altera_tse_priv *)(edev + 1);
>>
>> - =A0 =A0 edev->iobase =3D dev->map_base;
>> + =A0 =A0 edev->iobase =3D (int)dev_request_mem_region(dev, 0);
>
> Damned. I wasn't aware that struct eth_device has an int iobase.
> Can you please move your iobase to edev->priv (as a void __iomem *)?
>

No problem. I'll also use resources for sgdma_tx and sgdma_rx. I'll resend =
the
patch tonight.


> Then we can remove this otherwise unused field from eth_device.
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

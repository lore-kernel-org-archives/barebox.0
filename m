Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH427-0003bT-9v
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:26:51 +0000
Received: by mail-lb0-x232.google.com with SMTP id bc4so201861485lbc.2
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:26:30 -0800 (PST)
Date: Thu, 7 Jan 2016 09:51:15 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160107095115.b80e0ba5d601f78e74e40d2f@gmail.com>
In-Reply-To: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/6] rtc: ds1307: Add code to support ds1337/1341
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed,  6 Jan 2016 22:17:30 -0800
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Port DS1337 specific bits from corresponding Linux driver and add
> small changes needed for DS1341.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/rtc/rtc-ds1307.c | 91 ++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 91 insertions(+)
> =

> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index d78faa8..2b46ae5 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
...
> @@ -263,6 +299,61 @@ static int ds1307_probe(struct device_d *dev)
>  	ds1307->read_block_data =3D ds1307_read_block_data;
>  	ds1307->write_block_data =3D ds1307_write_block_data;
> =

> +

Extra empty line here.

> +	switch (ds1307->type) {
> +	case ds_1337:
> +	case ds_1341:

...

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

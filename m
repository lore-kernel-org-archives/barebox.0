Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQYJ-0007SD-Hc
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:35:13 +0000
Received: by mail-it0-x241.google.com with SMTP id j186-v6so10690321ita.5
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 14:35:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180517135858.16202-16-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
 <20180517135858.16202-16-pmamonov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 14:34:59 -0700
Message-ID: <CAHQ1cqGBN7Gght6hMc+6dj7aGe2Mz-pvihhCvFeq31OAviUiyg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 15/15] i2c/muxes/i2c-mux-pca954x: fix private data
 retrieval for 64bit mode
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, May 17, 2018 at 6:58 AM, Peter Mamonov <pmamonov@gmail.com> wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/i2c/muxes/i2c-mux-pca954x.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
> index 0d5515b71..395254cdc 100644
> --- a/drivers/i2c/muxes/i2c-mux-pca954x.c
> +++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
> @@ -180,6 +180,7 @@ static int pca954x_probe(struct device_d *dev)
>         struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
>         int num, force;
>         struct pca954x *data;
> +       uintptr_t tmp;
>         int ret = -ENODEV;
>         int gpio;
>
> @@ -203,7 +204,8 @@ static int pca954x_probe(struct device_d *dev)
>                 goto exit_free;
>         }
>
> -       ret = dev_get_drvdata(dev, (const void **)&data->type);
> +       ret = dev_get_drvdata(dev, (const void **)&tmp);
> +       data->type = tmp;

Upstream Linux driver doesn't store "type", but the actual pointer to
"chip_desc". I think if you convert the driver to do that instead you
can avoid type width problems and not need helper variable minutiae.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

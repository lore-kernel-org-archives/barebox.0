Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f54.google.com ([209.85.160.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDqIy-0007qr-FB
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 05:57:21 +0000
Received: by mail-pb0-f54.google.com with SMTP id rr4so941165pbb.27
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2013 21:57:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
References: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 8 Mar 2013 09:57:10 +0400
Message-ID: <CAA4bVAFTT=34QtjaJdvs5Fg6bBKmMN-W4XYYiTbtT1vbCj+HJw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] usb: ehci: initialize ehci_data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 4 March 2013 20:00, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Without it fields of ehci_data may be unitialized and the driver
> crashes.

Sascha!

Please apply a patch like this! Without it the 'usb' command on my
Tegra board hangs.


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/host/ehci-hcd.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 0c789e4..7c389aa 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -892,7 +892,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
>
>  static int ehci_probe(struct device_d *dev)
>  {
> -       struct ehci_data data;
> +       struct ehci_data data = {};
>         struct ehci_platform_data *pdata = dev->platform_data;
>
>         /* default to EHCI_HAS_TT to not change behaviour of boards
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

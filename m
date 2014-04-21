Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f181.google.com ([209.85.212.181])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcL4Y-0005Bf-Ny
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:44:15 +0000
Received: by mail-wi0-f181.google.com with SMTP id hm4so2298824wib.14
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 13:43:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1398111326-21783-5-git-send-email-dev@lynxeye.de>
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
 <1398111326-21783-5-git-send-email-dev@lynxeye.de>
Date: Mon, 21 Apr 2014 17:43:46 -0300
Message-ID: <CAOMZO5Aka_=iyA=qUf+_1s9dyxpNpf6DxwWPq=62hZBxsKLkKQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH 5/5] video: imx-ipu-v3: fix possible NULL ptr dereference
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 21, 2014 at 5:15 PM, Lucas Stach <dev@lynxeye.de> wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/video/imx-ipu-v3/ipu-dmfc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/video/imx-ipu-v3/ipu-dmfc.c b/drivers/video/imx-ipu-v3/ipu-dmfc.c
> index 7b54e25001c6..61704f4a9c06 100644
> --- a/drivers/video/imx-ipu-v3/ipu-dmfc.c
> +++ b/drivers/video/imx-ipu-v3/ipu-dmfc.c
> @@ -146,16 +146,18 @@ EXPORT_SYMBOL_GPL(ipu_dmfc_disable_channel);
>  static int ipu_dmfc_setup_channel(struct dmfc_channel *dmfc, int slots,
>                 int segment, int burstsize)
>  {
> -       struct ipu_dmfc_priv *priv = dmfc->priv;
> +       struct ipu_dmfc_priv *priv;
>         u32 val, field;
>
> +       if (!dmfc)
> +               return -EINVAL;

Would be better to fix it in the same way we did in the kernel:
http://www.spinics.net/lists/linux-driver-devel/msg45096.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

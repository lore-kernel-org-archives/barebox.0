Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmVa9-0000oA-C9
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 03:21:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id m22so1472344wml.3
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2019 19:21:31 -0800 (PST)
MIME-Version: 1.0
References: <20190123151620.4398-1-vivien.didelot@gmail.com>
 <20190123151620.4398-2-vivien.didelot@gmail.com>
In-Reply-To: <20190123151620.4398-2-vivien.didelot@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 23 Jan 2019 19:21:18 -0800
Message-ID: <CAHQ1cqFV2W=J+0RP_dA+SL=Mcxe6VN-JkRnY9W13F-RN-2nk4g@mail.gmail.com>
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
Subject: Re: [PATCH v2 2/2] ARM: zii-vf610-dev: boot initrd from SD
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 23, 2019 at 7:16 AM Vivien Didelot <vivien.didelot@gmail.com> wrote:
>
> As for tftp, make use of the initramfs if one is present on the SD card.
>

Makes sense:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>

> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  .../boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd    | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> index 92dfae0ab..dd8e99ba6 100644
> --- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> +++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> @@ -6,3 +6,8 @@ path="/mnt/mmc1.0"
>
>  global.bootm.image="${path}/zImage"
>  global.bootm.oftree="${path}/vf610-zii-${global.hostname}.dtb"
> +
> +initramfs="${path}/initramfs"
> +if [ -f "${initramfs}" ]; then
> +       global.bootm.initrd="$initramfs"
> +fi
> --
> 2.20.1
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

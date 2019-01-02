Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geq0U-0003Fx-5c
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 23:33:03 +0000
Received: by mail-wm1-x329.google.com with SMTP id d15so27915658wmb.3
 for <barebox@lists.infradead.org>; Wed, 02 Jan 2019 15:33:00 -0800 (PST)
MIME-Version: 1.0
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-3-sam@ravnborg.org>
In-Reply-To: <20190102202611.6530-3-sam@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 2 Jan 2019 15:32:47 -0800
Message-ID: <CAHQ1cqFcXt7Vg7qJB=o1nwKOzW8FC=s3YNaKTcF8jA1BXC7jxQ@mail.gmail.com>
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
Subject: Re: [PATCH v1 2/3] lib: bootstrap: detect SD card before mounting
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 2, 2019 at 12:26 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> To support bootstrap from SD card run a detect all before
> mounting the SD card.
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  lib/bootstrap/disk.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
> index fd016166e..77be95c2f 100644
> --- a/lib/bootstrap/disk.c
> +++ b/lib/bootstrap/disk.c
> @@ -21,6 +21,8 @@ void* bootstrap_read_disk(const char *dev, const char *fstype)
>         size_t len;
>         const char *path = "/";
>
> +       device_detect_all();
> +

Can device_detect_by_name(dev) be used here instead?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

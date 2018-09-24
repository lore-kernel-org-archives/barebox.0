Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4Qpi-0000MW-CN
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 13:23:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id u12-v6so19649004wrr.4
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2018 06:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <20180921122955.9513-1-s.hauer@pengutronix.de>
 <20180921122955.9513-2-s.hauer@pengutronix.de>
In-Reply-To: <20180921122955.9513-2-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Sep 2018 06:23:02 -0700
Message-ID: <CAHQ1cqG6fuum4RKKXhLKZu+1CWMVTaU7cU9xyjSwLAO_eaKBGw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] environment: Do not use environment when overlapping
 with other partitions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Sep 21, 2018 at 5:44 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Environment partitions are usually specified with their hardcoded offset
> and size, either in the device tree or the board file. These partitions
> potentially overlap with other partitions read from the partition table.
> Overlapping partitions for sure have bad effects. Be more friendly to our
> users and warn them when such a situation occurs and stop using that
> partition for storing the environment.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/startup.c | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
>  include/common.h | 10 ++++++++++
>  2 files changed, 57 insertions(+), 1 deletion(-)
>
> diff --git a/common/startup.c b/common/startup.c
> index 8553849cb3..f6bb1f1947 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -73,16 +73,62 @@ fs_initcall(mount_root);
>  #endif
>
>  #ifdef CONFIG_ENV_HANDLING
> +static int check_overlap(const char *path)
> +{
> +       struct cdev *cenv, *cdisk, *cpart;
> +
> +       if (strncmp(path, "/dev/", 5))
> +               return 0;
> +
> +       path = devpath_to_name(path);

Minor suggestions: you can drop the strcmp above by relying on the
fact that, if argument given to devpath_to_name() does not have
"/dev/" in front of it, the return value would be that same as the
argument. IOW, replace the above with:

name = devpath_to_name(path);

if (name == path) /* No "/dev" in front */
    return 0;

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

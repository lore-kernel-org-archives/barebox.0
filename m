Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x242.google.com ([2607:f8b0:4001:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aKyFb-0002vE-GT
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 01:04:55 +0000
Received: by mail-ig0-x242.google.com with SMTP id o2so5324744iga.3
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 17:04:34 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160111075257.GK13058@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-3-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqE_vUNr-9Eh_TO8yr-19pt2THbSRUdGrtMOkJTdCzO=gA@mail.gmail.com>
 <20160111075257.GK13058@pengutronix.de>
Date: Sun, 17 Jan 2016 17:04:33 -0800
Message-ID: <CAHQ1cqGKkF_V4zoQ5MqaBAN9sQO-qXNmTzYkaquFuXy4ZD-55g@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/8] barebox remote control
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

One more time without HTML (my apologies)

On Sun, Jan 10, 2016 at 11:52 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 10, 2016 at 06:10:12PM -0800, Andrey Smirnov wrote:
>> On Fri, Jan 8, 2016 at 3:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > +#include <ratp.h>
>> > +#include <command.h>
>> > +#include <byteorder.h>
>> > +#include <environment.h>
>> > +#include <kfifo.h>
>> > +#include <poller.h>
>> > +#include <linux/sizes.h>
>> > +#include <ratp_bb.h>
>>
>> It looks like this file is missing from the patchset
>>
>
> Sorry. Here comes:
>
> Sascha
>
> -----------------------------8<-------------------
>
> From e4bea815fad4cecb14cf8361f50cd10ab6e3ebb1 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 11 Jan 2016 08:48:53 +0100
> Subject: [PATCH] fixup! barebox remote control
>
> ---
>  include/ratp_bb.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/ratp_bb.h
>
> diff --git a/include/ratp_bb.h b/include/ratp_bb.h
> new file mode 100644
> index 0000000..2885731
> --- /dev/null
> +++ b/include/ratp_bb.h
> @@ -0,0 +1,14 @@
> +#ifndef __RATP_BB_H
> +#define __RATP_BB_H
> +
> +struct ratp_bb_pkt {
> +       struct list_head list;
> +
> +       unsigned int len;
> +       uint8_t data[];
> +};
> +
> +int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
> +int barebox_ratp_fs_mount(const char *path);
> +
> +#endif /* __RATP_BB_H */
> --
> 2.6.4
>
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

For the original patch + the fix,

Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

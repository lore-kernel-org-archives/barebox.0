Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK8NW-00088o-B8
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 20:55:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id j26-v6so15123885wre.1
 for <barebox@lists.infradead.org>; Tue, 06 Nov 2018 12:55:02 -0800 (PST)
MIME-Version: 1.0
References: <20181106143605.29820-1-l.stach@pengutronix.de>
In-Reply-To: <20181106143605.29820-1-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 6 Nov 2018 12:54:48 -0800
Message-ID: <CAHQ1cqF1JKPm3tstZrB0oWdjF0xxhFPU86g_twnuCKLctrRhCQ@mail.gmail.com>
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
Subject: Re: [PATCH] scripts: imx-image: fix first instruction in i.MX8MQ
 header
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 6, 2018 at 6:36 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> The instruction being patched in was a branch to 0x24000, instead of
> the intended 0x9000. This doesn't matter when starting the image from
> a regular boot source, but breaks starting the image via bootm, as we
> rely on the jump in the first header instruction taking us to the
> actual code.
>

For some reason I thought I submitted a patch fixing this, but
apparently not. Did you have a chance to run this fix with and without
signed HDMI firmware blob? AFAIR, adding it shifts entry point from
0x9000 to 0x28000 (don't quote me on this), so it's possible that some
code around imx-image.c:894 might have to be added to handle this
problem. This can be a subject for another patch, though.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

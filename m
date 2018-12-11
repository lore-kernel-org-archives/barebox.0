Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWXZb-0001ea-EQ
 for barebox@lists.infradead.org; Tue, 11 Dec 2018 02:15:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id m22so573602wml.3
 for <barebox@lists.infradead.org>; Mon, 10 Dec 2018 18:14:46 -0800 (PST)
MIME-Version: 1.0
References: <20181210132719.15419-1-l.stach@pengutronix.de>
In-Reply-To: <20181210132719.15419-1-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Dec 2018 18:14:33 -0800
Message-ID: <CAHQ1cqFqwp0GeuXCaKOf8Rg63HaBWm5_8xNcLekWgZaDJ1Cu=g@mail.gmail.com>
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
Subject: Re: [PATCH] lib/xymodem: Decrease read block timeout
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 10, 2018 at 5:27 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Andrey Smirnov <andrew.smirnov@gmail.com>
>
> When operating at hight baudrates (> 1Mbaud) on a system that perfoms
> several polling tasks, it is often the case that xy_read_block()
> errors out due to the fact that incoming data overran serial FIFO and
> some of the payload got lost. For those kind of situations it is not
> very beneficital to wait for 3 seconds for every block lost this way,
> and decreasing it in order to force a quick NAK to the host is
> beneficial to overall throughput.
>
> This patch changes the timeout to be the bigger of 50ms or 10 times
> the about of time it'd take to transfer a single payload block for a
> given baudrate.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I don't think this patch is really needed anymore. It was initially
created to alleviate problems there were encountered when doing X/Y
modem transfers on a system with a serdev driver running, but the
final version of the serdev code that landed in the tree allows
polling to be temporarily disabled by setting polling interval to 0:

https://git.pengutronix.de/cgit/barebox/tree/common/serdev.c#n78

IMHO, in light of that, a user would be better off disabling polling,
performing X/Y modem and re-enabling polling back rather than relying
on a faster failed transfer recovery due to this patch.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

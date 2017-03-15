Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coFc7-0005Jj-GK
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 20:33:45 +0000
Date: Wed, 15 Mar 2017 21:33:13 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170315203313.GA3531@ravnborg.org>
References: <20170314155222.11657-1-andrew.smirnov@gmail.com>
 <20170314155222.11657-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314155222.11657-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 01/11] clocksource: at91: Add DT compatibility table
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 08:52:12AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clocksource/timer-atmel-pit.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
> index cc7ad2f..d59efa6 100644
> --- a/drivers/clocksource/timer-atmel-pit.c
> +++ b/drivers/clocksource/timer-atmel-pit.c
> @@ -102,9 +102,18 @@ static int at91_pit_probe(struct device_d *dev)
>  	return init_clock(&cs);
>  }
>  
> +static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {

should this be const?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

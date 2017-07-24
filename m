Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZfW6-0003Bj-F2
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 15:43:32 +0000
Date: Mon, 24 Jul 2017 17:36:37 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170724153637.GA18294@ravnborg.org>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
 <20170724145400.2279-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724145400.2279-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/9] gpiolib: Fix buggy flag detection code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Mon, Jul 24, 2017 at 07:53:52AM -0700, Andrey Smirnov wrote:
> Both GPIOF_ACTIVE_LOW and GPIOF_INIT_ACTIVE are multi-bit constants so
> detecting their assertion using simple bit-wise and is incorrect and
> would lead to false positives.
> 
> Fixes: bbc499914 ("gpiolib: Add code to support "active low" GPIOs")
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

When looking at the resulting code there is now two ways to check
flags in gpiolib.
One where assume the flags are one bit values, and one where
we make sure to check the resuting value for > 1 bit values.
When revisitng this code in years from now this will look
inconsistent and only if you look up gpio.h you will see
why this is done in different ways.

I dunno if this should be consistent, but as I noted this when
reading the code I commented on this.

The use of "const bool" also baffeled me, but it makes
good sense to say that this bool value are not changed
after it is initialised.
And we use "const bool" in a few other places already.
This was just the first time I noticed.

So despite the comments:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam


The two ways flags are tested:
> +	const bool active_low = (flags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;

>  	if (flags & GPIOF_DIR_IN) {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3l8Q-0002oT-Nc
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:24:47 +0000
Message-ID: <5114D266.4030909@atmel.com>
Date: Fri, 8 Feb 2013 11:24:38 +0100
From: Nicolas Ferre <nicolas.ferre@atmel.com>
MIME-Version: 1.0
References: <20130208090739.GP19322@game.jcrosoft.org>
In-Reply-To: <20130208090739.GP19322@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [For master PATCH 0/7] macb: more fixes + gem (gigabit support)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/08/2013 10:07 AM, Jean-Christophe PLAGNIOL-VILLARD :
> HI,
> 
> 	This patch serie fixe more issue on the macb and add the GEM support
> 	(gigabit support) present on Atmel sama5d3x as example
> 
> 	The IP version is detected as in linux
> 
> 	we now share more code with the kernel and will help to maintain the
> 	driver
> 
> 	tesed on at91 macb & gem


You can add to the whole patch series:

Tested-by: Nicolas Ferre <nicolas.ferre@atmel.com>


> 
> The following changes since commit 15c5fa0467b20c05e9ebea36e049764054a7e308:
> 
>   macb: drop non used define (2013-02-08 16:55:16 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/macb
> 
> for you to fetch changes up to b7058953abdd014b9626b22d868fb29c1c563514:
> 
>   macb: add cadence Gigabit GEM support (2013-02-08 16:55:41 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (7):
>       macb: call macb_init at probe explecitly
>       macb: sync remaining define with linux
>       macb: use the macro as in linux for tx/rx buffer ring size
>       macb: enable Tramsmit and Receive at open
>       macb: reset the IP at init
>       macb: fix tx ring size
>       macb: add cadence Gigabit GEM support
> 
>  drivers/net/macb.c |  394 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------
>  drivers/net/macb.h |  179 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 466 insertions(+), 107 deletions(-)
> 
> Best Regards,
> J.
> 
> 


-- 
Nicolas Ferre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

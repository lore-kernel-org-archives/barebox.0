Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cngcZ-0005NE-Cs
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:11:54 +0000
Date: Tue, 14 Mar 2017 08:11:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314071129.fhfxtclmbv5sl5m3@pengutronix.de>
References: <20170313093339.12597-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313093339.12597-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v3 0/4] upstream led blinking rework
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 13, 2017 at 10:33:35AM +0100, Oleksij Rempel wrote:
> changes v1:
>  - merge blinking/flashing and led_blink_pattern patches
>  - remove new unsued variables from structs
>  - add sanity check in the led command to avoid simultan -b anf -f options
> 
> changes v2:
>  - reword commit message in "led: add blinking/flashing..." patch
> 
> changes v3:
>  - reword "led-trigger: Allow multiple..." patch
>  - remove sanity check before free()
> 
> Sascha Hauer (4):
>   led: add blinking/flashing and led_blink_pattern interface
>   led: Add blink/flash to led command
>   led: trigger: Use led triggers
>   led-trigger: Allow multiple led triggers of the same type

Applied, thanks

Sascha

> 
>  commands/led.c             |  44 ++++++++++++-
>  commands/trigger.c         |  54 ++++++++--------
>  drivers/led/core.c         | 101 ++++++++++++++++++++++++++++-
>  drivers/led/led-triggers.c | 157 ++++++++++++++++++++++++++++-----------------
>  include/led.h              |  17 ++++-
>  5 files changed, 286 insertions(+), 87 deletions(-)
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

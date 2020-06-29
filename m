Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jppIQ-0000Ng-C9
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 08:37:47 +0000
References: <20200626064129.12094-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fa8c9ed1-8cde-a015-86ee-10c86ff65bbf@pengutronix.de>
Date: Mon, 29 Jun 2020 10:37:43 +0200
MIME-Version: 1.0
In-Reply-To: <20200626064129.12094-1-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] startup: Fix do_autoboot_countdown() running multiple
 times
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi,

On 6/26/20 8:41 AM, Sascha Hauer wrote:
> The comment above do_autoboot_countdown() states: "This function can be
> called multiple times, it is executed only the first time.". Since
> 1973892533 ("startup: don't clobber original autoboot state") This is no
> longer the case. Bring back the old and documented behaviour.

guilty as charged. I didn't read the comment..
do_autoboot_countdown is called only once though in the code base.
How do you make use of being able to call it multiple times?

Cheers
Ahmad 

> 
> Fixes: 1973892533 ("startup: don't clobber original autoboot state")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/startup.c | 5 ++++-
>  include/common.h | 1 +
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 7e0f7d6b64..71a28a7be8 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -235,7 +235,7 @@ void set_autoboot_state(enum autoboot_state autoboot)
>   */
>  enum autoboot_state do_autoboot_countdown(void)
>  {
> -	enum autoboot_state autoboot_state;
> +	static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
>  	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
>  	int ret;
>  	struct stat s;
> @@ -243,6 +243,9 @@ enum autoboot_state do_autoboot_countdown(void)
>  	char *abortkeys = NULL;
>  	unsigned char outkey;
>  
> +	if (autoboot_state != AUTOBOOT_UNKNOWN)
> +		return autoboot_state;
> +
>  	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
>  		return global_autoboot_state;
>  
> diff --git a/include/common.h b/include/common.h
> index ce16ff83af..ceb0b358bd 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -88,6 +88,7 @@ enum autoboot_state {
>  	AUTOBOOT_ABORT,
>  	AUTOBOOT_MENU,
>  	AUTOBOOT_BOOT,
> +	AUTOBOOT_UNKNOWN,
>  };
>  
>  void set_autoboot_state(enum autoboot_state autoboot);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

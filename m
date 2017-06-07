Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIU44-0002AT-AJ
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 06:03:34 +0000
Date: Wed, 7 Jun 2017 08:03:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170607060306.fpyl5ppqqbfoqss6@pengutronix.de>
References: <20170606053910.bqxqopk7ceirgldp@pengutronix.de>
 <20170606135210.28846-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170606135210.28846-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] ratp: only allow bidirectional consoles
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Jun 06, 2017 at 03:52:10PM +0200, Aleksander Morgado wrote:
> Ignore requests to switch to RATP mode in input-only or output-only
> consoles.
> 
> This actually also avoids segfaulting later on:
> 
>     #0  0x0000000000000000 in ?? ()
>     #1  0x000000000040b2a4 in console_send (r=<optimized out>, pkt=0x7fffffffd8ec, len=4) at common/ratp.c:102
>     #2  0x000000000042ab99 in ratp_behaviour_a (pkt=0x7ffff7298780, ri=0x7ffff72766d0) at lib/ratp.c:530
>     #3  ratp_state_machine (pkt=0x7ffff7298780, ri=0x7ffff72766d0) at lib/ratp.c:1384
>     #4  ratp_poll (ratp=0x7ffff7277ed8) at lib/ratp.c:1561
>     #5  0x000000000042b2ab in ratp_establish (ratp=ratp@entry=0x7ffff7277ed8, active=active@entry=false, timeout_ms=timeout_ms@entry=100) at lib/ratp.c:1645
>     #6  0x000000000040b888 in barebox_ratp (cdev=cdev@entry=0x7ffff7212bd0) at common/ratp.c:470
>     #7  0x00000000004046c3 in getc_raw () at common/console.c:416
>     ...
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/ratp.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/ratp.c b/common/ratp.c
> index e879e2b3c..7be86d49a 100644
> --- a/common/ratp.c
> +++ b/common/ratp.c
> @@ -443,6 +443,9 @@ int barebox_ratp(struct console_device *cdev)
>  	struct ratp_ctx *ctx;
>  	struct ratp *ratp;
> 
> +	if (!cdev->getc || !cdev->putc)
> +		return -EINVAL;
> +
>  	if (ratp_command_ctx) {
>  		ctx = ratp_command_ctx;
>  	} else {
> --
> 2.12.2
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

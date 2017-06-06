Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7DM-000136-Pm
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 05:39:39 +0000
Date: Tue, 6 Jun 2017 07:39:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606053910.bqxqopk7ceirgldp@pengutronix.de>
References: <20170601181457.12858-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170601181457.12858-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] console: only bidirectional consoles allow RATP
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

Hi Aleksander,

On Thu, Jun 01, 2017 at 08:14:57PM +0200, Aleksander Morgado wrote:
> If a request to switch to RATP mode is received in an input-only
> console, ignore the request.
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
> 
> Hey Sascha,
> 
> Looks like I may actually need to update the options to allow setting up bidirectional consoles, instead of separate input/output ones. Otherwise I won't be able to use RATP over the FIFO-based console. This patch fixes a segfault happening in barebox sandbox when the input-only console receives a request to switch to RATP mode, it ends up crashing afterwards when the SYN/ACK response is to be sent via the non-existent output path.
> 
> Cheers!
> 
> ---
>  common/console.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/common/console.c b/common/console.c
> index f4c799fa5..f8677659e 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -412,7 +412,9 @@ static int getc_raw(void)
>  			if (cdev->tstc(cdev)) {
>  				int ch = cdev->getc(cdev);
> 
> -				if (IS_ENABLED(CONFIG_RATP) && ch == 0x01) {
> +				if (IS_ENABLED(CONFIG_RATP) &&
> +				    ch == 0x01 &&
> +				    (cdev->f_active & CONSOLE_STDOUT)) {
>  					barebox_ratp(cdev);

Can we add a test for the existence of cdev->getc and cdev->putc in
barebox_ratp() instead? It makes it more explicit that the ratp code
needs this and also works when somebody cally barebox_ratp() directly.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

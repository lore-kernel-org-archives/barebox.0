Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdd8c-0001ag-SN
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 07:00:11 +0000
Date: Mon, 4 Jul 2011 09:00:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110704070003.GZ6069@pengutronix.de>
References: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/bootm.c: fix unused-but-set-variable gcc warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

All applied to -next

Sascha

On Mon, Jul 04, 2011 at 12:53:01AM +0400, Antony Pavlov wrote:
> ---
>  commands/bootm.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 34164bc..e5ffacb 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -282,7 +282,6 @@ static int handler_parse_options(struct image_data *data, int opt, char *optarg)
>  
>  static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  {
> -	ulong	iflag;
>  	int	opt;
>  	image_header_t *os_header;
>  	struct image_handle *os_handle, *initrd_handle = NULL;
> @@ -344,7 +343,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  	 * recover from any failures any more...
>  	 */
>  
> -	iflag = disable_interrupts();
> +	disable_interrupts();
>  
>  	puts ("OK\n");
>  
> -- 
> 1.7.5.4
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

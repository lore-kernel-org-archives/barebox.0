Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eizZu-0002kM-OP
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 09:30:55 +0000
Date: Tue, 6 Feb 2018 10:30:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206093002.nzokloyjtn7g46l5@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180202111442.12444-7-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180202111442.12444-7-aleksander@aleksander.es>
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
Subject: Re: [PATCH 06/10] ratp: implement generic command support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Fri, Feb 02, 2018 at 12:14:38PM +0100, Aleksander Morgado wrote:
> The RATP implementation now allows executing generic commands with a
> binary interface: binary requests are received and binary responses
> are returned.
> 
> Each command can define its own RATP request contents (e.g. to specify
> command-specific options) as well as its own RATP response contents
> (if any data is to be returned).
> 
> Each command is associated with a numeric unique command ID, and for
> easy reference these IDs are maintained in the common ratp_bb header.
> Modules may override generic implemented commands or include their own
> new ones (as long as the numeric IDs introduced are unique).
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
> @@ -11,4 +29,33 @@ void barebox_ratp_command_run(void);
>  int  barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
>  int  barebox_ratp_fs_mount(const char *path);
>  
> +/*
> + * RATP commands definition
> + */
> +
> +struct ratp_command {
> +	struct list_head  list;
> +	uint16_t          id;
> +	int		(*cmd)(const struct ratp_bb *req,
> +			       int req_len,
> +			       struct ratp_bb **rsp,
> +			       int *rsp_len);
> +}
> +#ifdef __x86_64__
> +/* This is required because the linker will put symbols on a 64 bit alignment */
> +__attribute__((aligned(64)))
> +#endif
> +;
> +
> +#define BAREBOX_RATP_CMD_START(_name)							\
> +extern const struct ratp_command __barebox_cmd_##_name;					\

You shouldn't use the same name as the existing barebox commands,
otherwise there might be name clashes. Add some _ratp_ to it.

> +const struct ratp_command __barebox_cmd_##_name						\
> +	__attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {	\
> +	.id		= BB_RATP_TYPE_##_name,

I am not sure if I like the magic construction of the id field. Being
able to grep for BB_RATP_TYPE_PING and finding the user has advantages.
How about manually setting the field in the body of the command instead
of constructing it?

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

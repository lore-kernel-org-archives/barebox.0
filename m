Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boPGI-0000Wc-6U
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 06:19:34 +0000
Date: Mon, 26 Sep 2016 08:19:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
References: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
 <20160923090739.25517-3-iw3gtf@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160923090739.25517-3-iw3gtf@arcor.de>
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
Subject: Re: [PATCH 2/2] mtd: ubi: commands: added the new command 'ubirename'.
To: Giorgio Dal Molin <iw3gtf@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,


Looks good mostly. Patch 1/2 is fine, some small remarks for this one.

On Fri, Sep 23, 2016 at 11:07:39AM +0200, Giorgio Dal Molin wrote:
> Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
> ---
>  commands/ubi.c | 71 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/commands/ubi.c b/commands/ubi.c
> index 7c55195..3c5729e 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -328,3 +328,74 @@ BAREBOX_CMD_START(ubirmvol)
>  	BAREBOX_CMD_GROUP(CMD_GRP_PART)
>  	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
>  BAREBOX_CMD_END
> +
> +	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubi_num);
> +	if (ret) {
> +		perror("failed to get the ubi num");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	close(fd);
> +
> +	for(i=2, j=0; i<argc; ++j, i+=2) {

Please add a space pn both sides of binary operators.

> +		req.ents[j].vol_id = get_vol_id(ubi_num, argv[i]);
> +		if(req.ents[j].vol_id < 0) {
> +			printf("'%s' is not a volume name.\n", argv[i]);

It is a volume name, but not a valid one. Better something like

			printf("Volume '%s' does not exist on %s\n", argv[i], argv[1]);

?

> +			return COMMAND_ERROR_USAGE;
> +		}
> +		strncpy(req.ents[j].name, argv[i+1], UBI_MAX_VOLUME_NAME);
> +		req.ents[j].name_len = strlen(req.ents[j].name);
> +	}
> +
> +	ret = ubi_api_rename_volumes(ubi_num, &req);
> +	if (ret)
> +		perror("failed to rename.");

perror("failed to rename: %s", strerror(-ret));

It's always nice to print the error reason if we can.

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

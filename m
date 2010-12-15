Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate01.web.de ([217.72.192.221])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PSwqC-0006um-OB
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 19:16:45 +0000
Date: Wed, 15 Dec 2010 20:16:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101215191641.GG6017@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
	<1292413908-464-4-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1292413908-464-4-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH 03/34] doc: add documentation for 'unlzo' command
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 15, 2010 at 12:51:17PM +0100, Robert Schwebel wrote:
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  Documentation/commands.dox |    2 +-
>  commands/unlzo.c           |   14 +++++++++++---
>  2 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/commands.dox b/Documentation/commands.dox
> index 6c2f59d..cc892d4 100644
> --- a/Documentation/commands.dox
> +++ b/Documentation/commands.dox
> @@ -103,7 +103,7 @@ available in @a Barebox:
>  @li @subpage ubimkvol
>  @li @subpage ubirmvol
>  @li @subpage umount
> -@li @subpage unlzo
> +@li @subpage unlzo_command
>  @li @subpage unprotect_command
>  @li @subpage usb
>  @li @subpage version_command
> diff --git a/commands/unlzo.c b/commands/unlzo.c
> index 0b6dd4b..40225e6 100644
> --- a/commands/unlzo.c
> +++ b/commands/unlzo.c
> @@ -57,9 +57,17 @@ exit_close:
>  	return ret;
>  }
>  
> -static const __maybe_unused char cmd_unlzo_help[] =
> -"Usage: unlzo <infile> <outfile>\n"
> -"Uncompress a lzo compressed file\n";
> +BAREBOX_CMD_HELP_START(unlzo)
> +BAREBOX_CMD_HELP_USAGE("unlzo <infile> <outfile>\n")
> +BAREBOX_CMD_HELP_SHORT("Uncompress a lzo compressed file.\n")
> +BAREBOX_CMD_HELP_END
> +
> +/**
> + * @page unlzo_command
> +
> +\todo Add an example, how to handle LZO files in RAM.

That's simple: unlzo <src> <target>, where src and target are valid files
including devices or partitions.

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

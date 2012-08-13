Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T12aB-0005t2-82
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 21:53:56 +0000
Date: Mon, 13 Aug 2012 23:53:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120813215352.GW1451@pengutronix.de>
References: <1344888183-1489-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344888183-1489-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] filetype: add command support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 13, 2012 at 10:03:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to detect the filetype of a file and export it as filetype
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig    |    5 +++++
>  commands/Makefile   |    1 +
>  commands/filetype.c |   60 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 66 insertions(+)
>  create mode 100644 commands/filetype.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 92a8152..e9fb9f6 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -220,6 +220,11 @@ config CMD_DIRNAME
>  	  Strip last component of file name and store the result in a
>  	  environment variable
>  
> +config CMD_FILETYPE
> +	tristate
> +	depends on FILETYPE
> +	prompt "filetype"

How about a short description of the command here?

> +
> +static int do_filetype(int argc, char *argv[])
> +{
> +	int opt;
> +	enum filetype type;
> +	char* filename = NULL;
> +	int verbose = 0;
> +
> +	while ((opt = getopt(argc, argv, "vf:")) > 0) {
> +		switch (opt) {
> +		case 'f':
> +			filename = optarg;
> +			break;
> +		case 'v':
> +			verbose = 1;
> +			break;
> +		}
> +	}
> +
> +	if (!filename)
> +		return COMMAND_ERROR_USAGE;
> +
> +	type = file_name_detect_type(filename);
> +
> +	if (verbose)
> +		pr_info("%s: %s detected\n", filename,
> +			file_type_to_string(type));
> +
> +	export_env_ull("filetype" , type);

Normally we do this by passing the variable name to the command, see
readline, basename or getopt. Lets do it the same way here.

Also, we should export strings instead of numbers. The numbers are not
documented anywhere and I think we should not expose them.

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

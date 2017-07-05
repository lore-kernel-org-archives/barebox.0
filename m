Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSmaM-0004D7-Sm
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 15:51:33 +0000
Message-ID: <1499269829.22075.31.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 17:50:29 +0200
In-Reply-To: <20170703131729.12055-1-abbotti@mev.co.uk>
References: <20170703131729.12055-1-abbotti@mev.co.uk>
Mime-Version: 1.0
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
Subject: Re: [PATCH] readlink: Improve -f handling
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Am Montag, den 03.07.2017, 14:17 +0100 schrieb Ian Abbott:
> For `readlink -f FILE VARIABLE`, set VARIABLE to the absolute, canonical
> file name of FILE by following symbolic links.  All but the final
> component of FILE must exist.
> 
> Prior to commit a602bebcf7e4 ("fs: Implement links to directories") the
> above worked in the limited case where FILE was an absolute path, the
> final component was a symbolic link, and all preceding components were
> directories.  If FILE was a relative path with the final component being
> a symbolic link, and all preceding paths being directories, the command
> sort of worked, but produced a relative path as the result.  Both of
> these cases were broken by the above commit.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>

Applied, thanks.

> ---
>  commands/readlink.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/commands/readlink.c b/commands/readlink.c
> index a19c8e004..2dfa56667 100644
> --- a/commands/readlink.c
> +++ b/commands/readlink.c
> @@ -44,17 +44,21 @@ static int do_readlink(int argc, char *argv[])
>  	if (argc < optind + 2)
>  		return COMMAND_ERROR_USAGE;
>  
> -	if (readlink(argv[optind], realname, PATH_MAX - 1) < 0)
> -		goto err;
> -
>  	if (canonicalize) {
> -		char *buf = canonicalize_path(realname);
> +		char *buf = canonicalize_path(argv[optind]);
> +		struct stat s;
>  
>  		if (!buf)
>  			goto err;
> +		if (stat(dirname(argv[optind]), &s) || !S_ISDIR(s.st_mode)) {
> +			free(buf);
> +			goto err;
> +		}
>  		setenv(argv[optind + 1], buf);
>  		free(buf);
>  	} else {
> +		if (readlink(argv[optind], realname, PATH_MAX - 1) < 0)
> +			goto err;
>  		setenv(argv[optind + 1], realname);
>  	}
>  
> @@ -65,15 +69,16 @@ err:
>  }
>  
>  BAREBOX_CMD_HELP_START(readlink)
> -BAREBOX_CMD_HELP_TEXT("Read value of a symbolic link and store it into VARIABLE.")
> +BAREBOX_CMD_HELP_TEXT("Read value of a symbolic link or canonical file name and store it into VARIABLE.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
> -BAREBOX_CMD_HELP_OPT ("-f", "canonicalize by following first symlink");
> +BAREBOX_CMD_HELP_OPT("-f", "canonicalize by following symlinks;")
> +BAREBOX_CMD_HELP_OPT("",   "final component need not exist");
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(readlink)
>  	.cmd		= do_readlink,
> -	BAREBOX_CMD_DESC("read value of a symbolic link")
> +	BAREBOX_CMD_DESC("read value of a symbolic link or canonical file name")
>  	BAREBOX_CMD_OPTS("[-f] FILE VARIABLE")
>  	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
>  	BAREBOX_CMD_HELP(cmd_readlink_help)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

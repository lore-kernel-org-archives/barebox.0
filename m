Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra1s5-0002y2-7C
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 09:08:34 +0000
Date: Mon, 12 Dec 2011 10:08:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111212090814.GO27267@pengutronix.de>
References: <1323424372-8142-1-git-send-email-a.aring@phytec.de>
 <1323424372-8142-3-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323424372-8142-3-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 2/2] auto-completion: add auto-completion for path files
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 10:52:48AM +0100, Alexander Aring wrote:
> Add auto-completion for path files.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  commands/ls.c     |    4 +-
>  common/complete.c |   68 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 68 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/ls.c b/commands/ls.c
> index 278a8bc..070aa90 100644
> --- a/commands/ls.c
> +++ b/commands/ls.c
> @@ -68,7 +68,7 @@ int ls(const char *path, ulong flags)
>  		if (stat(tmp, &s))
>  			goto out;
>  		if (flags & LS_COLUMN)
> -			string_list_add(&sl, d->d_name);
> +			string_list_add_sorted(&sl, d->d_name);
>  		else
>  			ls_one(d->d_name, &s);
>  	}
> @@ -156,7 +156,7 @@ static int do_ls(struct command *cmdtp, int argc, char *argv[])
>  
>  		if (!(s.st_mode & S_IFDIR)) {
>  			if (flags & LS_COLUMN)
> -				string_list_add(&sl, argv[o]);
> +				string_list_add_sorted(&sl, argv[o]);
>  			else
>  				ls_one(argv[o], &s);
>  		}

Ok, but this seems unrelated to the subject of this patch. Please
separate.

> diff --git a/common/complete.c b/common/complete.c
> index 46ba871..0b79f92 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -27,6 +27,7 @@
>  #include <libgen.h>
>  #include <command.h>
>  #include <stringlist.h>
> +#include <environment.h>
>  
>  static int file_complete(struct string_list *sl, char *instr)
>  {
> @@ -55,7 +56,7 @@ static int file_complete(struct string_list *sl, char *instr)
>  				strcat(tmp, "/");
>  			else
>  				strcat(tmp, " ");
> -			string_list_add(sl, tmp);
> +			string_list_add_sorted(sl, tmp);
>  		}
>  	}
>  
> @@ -67,6 +68,67 @@ out:
>  	return 0;
>  }
>  
> +static int path_command_complete(struct string_list *sl, char *instr)
> +{
> +	struct stat s;
> +	DIR *dir;
> +	struct dirent *d;
> +	char tmp[PATH_MAX];
> +	char *path, *p, *n;
> +
> +	p = path = strdup(getenv("PATH"));
> +
> +	if (!path)
> +		return -1;
> +
> +	while (p) {
> +		n = strchr(p, ':');
> +		if (n)
> +			*n++ = '\0';
> +		if (*p != '\0') {

You can save one indention level by doing

		if (*p == '\0' ) {
			p = n;
			continue;
		}


> +			dir = opendir(p);
> +
> +			/* We need to check all PATH dirs, so if one failed,
> +			 * try next */
> +			if (!dir) {
> +				p = n;
> +				continue;
> +			}
> +
> +			while ((d = readdir(dir))) {
> +				if (!strcmp(d->d_name, ".") ||
> +					!strcmp(d->d_name, ".."))
> +					continue;
> +
> +				if (!strncmp(instr, d->d_name, strlen(instr))) {
> +					strcpy(tmp, d->d_name);
> +					if (!stat(tmp, &s) &&
> +						S_ISDIR(s.st_mode))
> +						continue;
> +					else
> +						strcat(tmp, " ");
> +
> +					/* This function is called
> +					 * after command_complete,
> +					 * so we check if a double
> +					 * entry exist */
> +					if (string_list_contains
> +							(sl, tmp) == 0) {
> +						string_list_add_sorted(sl, tmp);
> +					}
> +				}
> +			}
> +
> +			closedir(dir);
> +		}
> +		p = n;
> +	}
> +
> +	free(path);
> +
> +	return 0;
> +}
> +
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBKwg-0007m9-Us
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:31:43 +0000
Date: Tue, 11 Sep 2012 09:31:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911073138.GE18243@pengutronix.de>
References: <1347341518-2779-1-git-send-email-alex.aring@gmail.com>
 <1347341518-2779-2-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347341518-2779-2-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 2/2] complete: abstract path complete
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 07:31:58AM +0200, Alexander Aring wrote:
> Rewritten path complete, to use it maybe
> in another functions.

Do you have a usecase for this?

> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  common/complete.c | 73 +++++++++++++------------------------------------------
>  include/libbb.h   |  2 ++
>  lib/libbb.c       | 64 +++++++++++++++++++++++++++++++++++++++++++++++-
>  3 files changed, 82 insertions(+), 57 deletions(-)
> 
> diff --git a/common/complete.c b/common/complete.c
> index 6a871ef..a06c070 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -25,6 +25,8 @@
>  #include <libgen.h>
>  #include <command.h>
>  #include <environment.h>
> +#include <errno.h>
> +#include <libbb.h>
>  
>  static int file_complete(struct string_list *sl, char *instr, int exec)
>  {
> @@ -70,65 +72,24 @@ out:
>  	return 0;
>  }
>  
> -static int path_command_complete(struct string_list *sl, char *instr)
> +static int path_command_complete(char *name, void *priv)
>  {
> -	struct stat s;
> -	DIR *dir;
> -	struct dirent *d;
> -	char tmp[PATH_MAX];
> -	char *path, *p, *n;
> -
> -	p = path = strdup(getenv("PATH"));
> -
> -	if (!path)
> -		return -1;
> -
> -	while (p) {
> -		n = strchr(p, ':');
> -		if (n)
> -			*n++ = '\0';
> -		if (*p == '\0') {
> -			p = n;
> -			continue;
> -		}
> -		dir = opendir(p);
> +	struct string_list *sl = priv;
> +	char *filename;
>  
> -		/* We need to check all PATH dirs, so if one failed,
> -		 * try next */
> -		if (!dir) {
> -			p = n;
> -			continue;
> -		}
> +	filename = strrchr(name, '/') + 1;
> +	if (!filename)
> +		return -EINVAL;
>  
> -		while ((d = readdir(dir))) {
> -			if (!strcmp(d->d_name, ".") ||
> -					!strcmp(d->d_name, ".."))
> -				continue;
> +	strcat(filename, " ");
>  
> -			if (!strncmp(instr, d->d_name, strlen(instr))) {
> -				strcpy(tmp, d->d_name);
> -				if (!stat(tmp, &s) &&
> -						S_ISDIR(s.st_mode))
> -					continue;
> -				else
> -					strcat(tmp, " ");
> -
> -				/* This function is called
> -				 * after command_complete,
> -				 * so we check if a double
> -				 * entry exist */
> -				if (string_list_contains
> -						(sl, tmp) == 0) {
> -					string_list_add_sorted(sl, tmp);
> -				}
> -			}
> -		}
> -
> -		closedir(dir);
> -		p = n;
> -	}
> -
> -	free(path);
> +	/* This function is called
> +	 * after command_complete,
> +	 * so we check if a double
> +	 * entry exist */
> +	if (!string_list_contains
> +		(sl, filename))
> +		string_list_add_sorted(sl, filename);
>  
>  	return 0;
>  }
> @@ -334,7 +295,7 @@ int complete(char *instr, char **outstr)
>  			instr = t;
>  		} else {
>  			command_complete(&sl, instr);
> -			path_command_complete(&sl, instr);
> +			find_execable_like(path_command_complete, instr, &sl);
>  			env_param_complete(&sl, instr, 0);
>  		}
>  		if (*instr == '$')
> diff --git a/include/libbb.h b/include/libbb.h
> index 47b2e08..0ef702b 100644
> --- a/include/libbb.h
> +++ b/include/libbb.h
> @@ -11,6 +11,8 @@ char *concat_subpath_file(const char *path, const char *f);
>  int execable_file(const char *name);
>  char *find_execable(const char *filename);
>  char* last_char_is(const char *s, int c);
> +int find_execable_like(int found(char *name, void *priv),
> +		const char *likelyname, void *priv);
>  
>  enum {
>  	ACTION_RECURSE     = (1 << 0),
> diff --git a/lib/libbb.c b/lib/libbb.c
> index e0d7481..daf77c7 100644
> --- a/lib/libbb.c
> +++ b/lib/libbb.c
> @@ -14,6 +14,7 @@
>  #include <xfuncs.h>
>  #include <malloc.h>
>  #include <environment.h>
> +#include <errno.h>
>  
>  /* concatenate path and file name to new allocation buffer,
>   * not adding '/' if path name already has '/'
> @@ -60,7 +61,6 @@ int execable_file(const char *name)
>  }
>  EXPORT_SYMBOL(execable_file);
>  
> -
>  /* search $PATH for an executable file;
>   * return allocated string containing full path if found;
>   * return NULL otherwise;
> @@ -89,6 +89,68 @@ char *find_execable(const char *filename)
>  }
>  EXPORT_SYMBOL(find_execable);
>  
> +/* search $PATH for an executable file which is
> + * like the filename specified in likelyname;
> + * A likelyname on match will call the found function;
> + * Caller need to duplicate the name string in
> + * found functionpointer, if he want to save it;
> + * return 0 on success and <0 on error;
> + */
> +int find_execable_like(int found(char *name, void *priv),
> +		const char *likelyname, void *priv)

I don't like the name very much. Can we name it execable_complete?
Also I would use the likelyname argument as first argument, because
then it would read "on 'name' do call 'found'"

(I always stumble over 'execable', it should rather be 'executable', but
we have the former everywhere, so either change them all keep it here
aswell)

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

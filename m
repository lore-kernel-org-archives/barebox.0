Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKQFM-0001qo-7F
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 08:28:21 +0000
Date: Wed, 18 Apr 2012 10:27:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418082759.GA13302@pengutronix.de>
References: <20120413075705.GE11079@game.jcrosoft.org>
 <1334304170-26176-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334304170-26176-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/5] Introduce binfmt support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 13, 2012 at 10:02:46AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to execute any file and detect it's type to handle it.
> This will allow to use shell for bootp bootfile or dfu.
> 
> You can register multiple hook for the same filetype. They will be execute
> in the invert order of register. If a hook does not handle the file you just
> return -ERESTARTNOHAND;
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Makefile  |    2 +-
>  common/binfmt.c  |   90 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  common/hush.c    |   31 +++++++++++-------
>  include/binfmt.h |   26 +++++++++++++++
>  4 files changed, 136 insertions(+), 13 deletions(-)
>  create mode 100644 common/binfmt.c
>  create mode 100644 include/binfmt.h
> 
> diff --git a/common/Makefile b/common/Makefile
> index 76fe407..d7dbf88 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -1,4 +1,4 @@
> -obj-$(CONFIG_SHELL_HUSH)	+= hush.o
> +obj-$(CONFIG_SHELL_HUSH)	+= hush.o binfmt.o

Please check compilation with bootm command + simple shell. It will
give you undefined reference to binfmt_register.

> +static LIST_HEAD(binfmt_hooks);
> +
> +static int binfmt_run(char* file, int argc, char** argv)
> +{
> +	struct binfmt_hook* b;

A pointer is like this:

void *something

Not 'void* something' and not 'void * something'. There are all three
variants in this patch.

> +	enum filetype type = file_name_detect_type(file);
> +	int ret;
> +
> +	list_for_each_entry(b, &binfmt_hooks, list) {
> +		if(b->type != type)
> +			continue;
> +
> +		ret = b->hook(b, file, argc, argv);
> +		if (ret != -ERESTARTNOHAND)
> +			return ret;
> +	}
> +	return -ENOENT;
> +}
> +
> +static int binfmt_exec_excute(struct binfmt_hook *b, char* file, int argc, char **argv)
> +{
> +	char ** newargv = xzalloc(sizeof(char*) * (argc + 1));
> +	int ret, i;
> +
> +	newargv[0] = b->exec;
> +
> +	for (i = 1 ; i < argc; i++)
> +		newargv[i] = argv[i];
> +	newargv[i] = file;

It took me some time to see what this does and why it has to do this.
Can you add a comment like:

/*
 * This converts the original '/executable <args>' into
 * 'barebox_cmd <args> /executable'
 */

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODx7-0005m3-BE
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 20:41:25 +0000
Date: Tue, 16 Oct 2012 22:41:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016204123.GP24458@pengutronix.de>
References: <1347464902-2127-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347464902-2127-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH v4] bootm: add global bootm.{image/initrd}.loadaddr support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 05:48:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> To be able to pass the loadaddr of the image and the initrd.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/bootm.c |   25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 2d9f7f2..dfd9ac9 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -254,6 +254,19 @@ static char *bootm_image_name_and_no(const char *name, int *no)
>  #define BOOTM_OPTS BOOTM_OPTS_COMMON
>  #endif
>  
> +static unsigned long long getenv_loadaddr(const char *name)
> +{
> +	const char *valstr = getenv(name);
> +
> +	if (!valstr)
> +		return UIMAGE_SOME_ADDRESS;
> +
> +	if (valstr[0] == '\0')
> +		return UIMAGE_SOME_ADDRESS;
> +
> +	return simple_strtoull(valstr, NULL, 0);
> +}
> +
>  static int do_bootm(int argc, char *argv[])
>  {
>  	int opt;
> @@ -273,8 +286,11 @@ static int do_bootm(int argc, char *argv[])
>  
>  	oftree = getenv("global.bootm.oftree");
>  	os_file = getenv("global.bootm.image");
> -	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
> +	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
> +	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");

This needs to be in the 'if' below.

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

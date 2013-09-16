Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLTlI-00043C-8D
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:02:25 +0000
Date: Mon, 16 Sep 2013 10:02:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130916080202.GV30088@pengutronix.de>
References: <20130915112850.GC21829@ns203013.ovh.net>
 <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] login: add globalvar timeout support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 15, 2013 at 01:30:51PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/login.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/commands/login.c b/commands/login.c
> index fb6bb35..f5429bc 100644
> --- a/commands/login.c
> +++ b/commands/login.c
> @@ -20,6 +20,10 @@
>  #include <complete.h>
>  #include <password.h>
>  #include <getopt.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +#include <init.h>
>  
>  #define PASSWD_MAX_LENGTH	(128 + 1)
>  
> @@ -31,6 +35,16 @@
>  #define LOGIN_MODE HIDE
>  #endif
>  
> +static void login_getenv_int(const char *name, int *i)
> +{
> +	const char* str = getenv(name);
> +
> +	if (!str)
> +		return;
> +
> +	*i = simple_strtoul(str, NULL, 10);
> +}

We already have getenv_ull. Should we use it here?

> +
>  static int do_login(int argc, char *argv[])
>  {
>  	unsigned char passwd[PASSWD_MAX_LENGTH];
> @@ -38,6 +52,8 @@ static int do_login(int argc, char *argv[])
>  	int timeout = 0;
>  	char *timeout_cmd = "boot";
>  
> +	login_getenv_int("global.login.timeout", &timeout);
> +
>  	if (!is_passwd_enable()) {
>  		puts("login: password not set\n");
>  		return 0;
> @@ -80,3 +96,13 @@ BAREBOX_CMD_START(login)
>  	BAREBOX_CMD_HELP(cmd_login_help)
>  	BAREBOX_CMD_COMPLETE(empty_complete)
>  BAREBOX_CMD_END
> +
> +static int login_global_init(void)
> +{
> +	globalvar_add_simple("login.timeout");

globalvar_add_simple now takes an initial value, like this:

int globalvar_add_simple(const char *name, const char *value)

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

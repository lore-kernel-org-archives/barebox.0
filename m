Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0let-000124-RN
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:35:32 +0000
Date: Mon, 23 Nov 2015 08:35:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123073510.GT11966@pengutronix.de>
References: <1448220480-4488-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448220480-4488-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [RFC] regulator: add runtime disable/enable support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 22, 2015 at 08:28:00PM +0100, Alexander Aring wrote:
> This patch adds support to call disable/enable for a specific regulator
> by name. This can be useful to test various linux boot tests in
> different regulator states or adding workarounds inside the bootloader
> when linux doesn't support to enable the regulator for probing.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  commands/regulator.c     | 73 ++++++++++++++++++++++++++++++++++++++++++++++--
>  drivers/regulator/core.c | 30 ++++++++++++++++++++
>  include/regulator.h      | 12 ++++++++
>  3 files changed, 112 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/regulator.c b/commands/regulator.c
> index e0b704f..1fb1559 100644
> --- a/commands/regulator.c
> +++ b/commands/regulator.c
> @@ -18,17 +18,84 @@
>   */
>  #include <common.h>
>  #include <command.h>
> +#include <getopt.h>
>  #include <regulator.h>
>  
> +static inline void regulator_setting_parse_error(int ret, const char *cmd)
> +{
> +	perror(cmd);
> +	if (ret == -ENOENT)
> +		printf("check \"%s -l\" for possible regulator names.\n", cmd);
> +}
> +
>  static int do_regulator(int argc, char *argv[])
>  {
> -	regulators_print();
> +	char *name = NULL, *setting = NULL;
> +	int opt, ret, print = 0;
> +
> +	if (argc == 1)
> +		return COMMAND_ERROR_USAGE;
> +
> +	while ((opt = getopt(argc, argv, "ln:s:")) > 0) {
> +		switch (opt) {
> +		case 'l':
> +			print = 1;
> +			break;
> +		case 'n':
> +			name = optarg;
> +			break;
> +		case 's':
> +			setting = optarg;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}

The usage is not very intuitive. How about creating separate
regulator_enable / regulator_disable commands? These would be easy to
use then and wouldn't require clever option parsing.

> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 73f5c6e..de764f3 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -345,3 +345,33 @@ void regulators_print(void)
>  	list_for_each_entry(ri, &regulator_list, list)
>  		regulator_print_one(ri);
>  }
> +
> +/*
> + * regulator_enable_by_name - enable regulator by internal regulator name
> + */
> +int regulator_enable_by_name(const char *name)
> +{
> +	struct regulator_internal *ri;
> +
> +	list_for_each_entry(ri, &regulator_list, list) {
> +		if (!strcmp(ri->name, name))
> +			return regulator_enable_internal(ri);
> +	}
> +
> +	return -ENOENT;
> +}

regulator_by_name() would be a useful addition, but I think introducing
a regulator_*_by name set of functions is a bit too much, given that we
might also need set/get voltage and maybe other functions.

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

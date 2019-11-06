Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHs5-00062F-57
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 09:45:02 +0000
Date: Wed, 6 Nov 2019 10:44:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191106094459.w32tgsl22ty34vhe@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
 <20191106071155.26389-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106071155.26389-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 02/10] commands: regulator: add support for
 enabling/disabling regulators
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mgr@pengutronix.de

On Wed, Nov 06, 2019 at 08:11:47AM +0100, Ahmad Fatoum wrote:
> For testing regulator drivers, it can be handy to enable/disable them
> from the shell prompt. Extend the regulator command to support this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/core.c | 67 +++++++++++++++++++++++++++++++++++-----
>  1 file changed, 60 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 591e44c15407..4ebad3f906ad 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -388,22 +388,75 @@ static void regulator_print_one(struct regulator_internal *ri)
>  #include <common.h>
>  #include <command.h>
>  #include <regulator.h>
> +#include <getopt.h>
>  
>  static int do_regulator(int argc, char *argv[])
>  {
> -	struct regulator_internal *ri;
> +	struct regulator_internal *ri, *chosen = NULL;
> +	int opt;
>  
> -	printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
> -	list_for_each_entry(ri, &regulator_list, list)
> -		regulator_print_one(ri);
> +	if (argc == 1) {
> +		printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
> +		list_for_each_entry(ri, &regulator_list, list)
> +			regulator_print_one(ri);
>  
> -	return 0;
> +		return 0;
> +	}
> +
> +	while ((opt = getopt(argc, argv, "r:")) > 0) {
> +		switch (opt) {
> +		case 'r':
> +			if (chosen)
> +				return COMMAND_ERROR_USAGE;
> +
> +			list_for_each_entry(ri, &regulator_list, list) {
> +				if (!strcmp(ri->name, optarg)) {
> +					chosen = ri;
> +					break;
> +				}
> +			}
> +
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +
> +	if (!chosen) {
> +		printf("regulator not found.\n");
> +		return COMMAND_ERROR;
> +	}
> +
> +	if (argc != optind + 1) {
> +		printf("Operation must be specified\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (!strcmp(argv[optind], "enable"))
> +		return regulator_enable_internal(chosen);
> +
> +	if (!strcmp(argv[optind], "disable"))
> +		return regulator_disable_internal(chosen);

How about doing

-e <regulator>
-d <regulator>

or

-r <regulator> -e
-r <regulator> -d

I don't like these batteries of strcmp(argv[optind], ...) very much,
neither from the programming side nor from the usage of these commands.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l594F-0004DG-Ri
 for barebox@lists.infradead.org; Thu, 28 Jan 2021 15:18:45 +0000
Date: Thu, 28 Jan 2021 16:16:32 +0100
Message-ID: <20210128151632.GC19583@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
 <20210127134423.31587-10-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127134423.31587-10-s.trumtrar@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 10/12] commands: firmwareload: allow loading firmware
 from dt
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 27, 2021 at 02:44:21PM +0100, Steffen Trumtrar wrote:
> firmwareload can only load a bitstream into an FPGA without any
> knowledge of possible additional needs (e.g. FPGA bridges).
> 
> These are defined in the fpga-region nodes in the devicetree. The
> fpga-region describes the layout of the FPGA and the bridges it needs
> en/disabled.
> 
> Add an option to let firmwareload go via the oftree route and load the
> firmware that way.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  commands/firmwareload.c | 42 +++++++++++++++++++++++++++++++++++------
>  1 file changed, 36 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/firmwareload.c b/commands/firmwareload.c
> index b735088f6117..2b1e770662d1 100644
> --- a/commands/firmwareload.c
> +++ b/commands/firmwareload.c
> @@ -5,18 +5,38 @@
>  #include <command.h>
>  #include <getopt.h>
>  #include <firmware.h>
> +#include <of.h>
>  
>  static int do_firmwareload(int argc, char *argv[])
>  {
> -	int ret, opt;
> +	int opt;
>  	const char *name = NULL, *firmware;
>  	struct firmware_mgr *mgr;
> +	char *path = NULL;
> +	char *search_path = NULL;
> +	char *compatible = NULL;
> +	int oftree = 0;
>  
> -	while ((opt = getopt(argc, argv, "t:l")) > 0) {
> +	while ((opt = getopt(argc, argv, "t:c:S:D:lo")) > 0) {

'o' is added but not handled.

>  		switch (opt) {
>  		case 't':
>  			name = optarg;
>  			break;
> +		case 'c':
> +			compatible = xzalloc(strlen(optarg) + 1);
> +			strcpy(compatible, optarg);

Use xstrdup(). The string is not freed.

> +			oftree = 1;
> +			break;
> +		case 'S':
> +			search_path = xzalloc(strlen(optarg) + 1);
> +			strcpy(search_path, optarg);

ditto

> +			oftree = 1;
> +			break;
> +		case 'D':
> +			path = xzalloc(strlen(optarg) + 1);
> +			strcpy(path, optarg);

ditto

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

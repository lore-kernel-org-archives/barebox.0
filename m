Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ydv9f-0001R5-Kz
 for barebox@lists.infradead.org; Fri, 03 Apr 2015 06:32:36 +0000
Date: Fri, 3 Apr 2015 08:32:13 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20150403063213.GP9742@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
 <1427904855-32548-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427904855-32548-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 01/10] imx-image: sort included header files
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 01, 2015 at 06:14:06PM +0200, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  scripts/imx/imx-image.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 1f37fe20bcc0..2fa84b1a1d53 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -15,17 +15,18 @@
>   * GNU General Public License for more details.
>   *
>   */
> -#include <stdio.h>
> -#include <unistd.h>
> +#include <endian.h>
> +#include <errno.h>
> +#include <fcntl.h>
>  #include <getopt.h>
> -#include <stdlib.h>
>  #include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
>  #include <string.h>
> -#include <errno.h>
> -#include <sys/types.h>
> +#include <unistd.h>
> +
>  #include <sys/stat.h>
> -#include <fcntl.h>
> -#include <endian.h>
> +#include <sys/types.h>

I sometimes sort the includes by length which also looks very nice ;)

We don't have a policy how includes should be sorted, so I prefer to keep
them like they are.

Also sometimes the include order matters since not all include files
include everything they need themselves, This of course should be fixed,
but forcing you to fix it before you can add new files with sorted includes
causes additional pain which I think is unnecessary

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

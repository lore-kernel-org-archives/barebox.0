Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yzqb2-0000SR-51
 for barebox@lists.infradead.org; Tue, 02 Jun 2015 18:07:33 +0000
Date: Tue, 2 Jun 2015 20:06:44 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20150602180644.GU26523@pengutronix.de>
References: <1433268277-995-1-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433268277-995-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH] dhcp: add missing define
To: barebox@lists.infradead.org

Hi,

I think this was somehow missing in 32900eaf7c95e52da33442b24ce91c747e700cff
and this patch should be squashed into the patch above in next.

rsc

On Tue, Jun 02, 2015 at 08:04:37PM +0200, Robert Schwebel wrote:
> Without this, we get
> 
> commands/dhcp.c: In function 'do_dhcp':
> commands/dhcp.c:22:16: error: 'DHCP_DEFAULT_RETRY' undeclared (first use in this function)
>   int retries = DHCP_DEFAULT_RETRY;
>                 ^
> commands/dhcp.c:22:16: note: each undeclared identifier is reported only once for each function it appears in
> scripts/Makefile.build:249: recipe for target 'commands/dhcp.o' failed
> 
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  commands/dhcp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/commands/dhcp.c b/commands/dhcp.c
> index eb98bfc..0358a4c 100644
> --- a/commands/dhcp.c
> +++ b/commands/dhcp.c
> @@ -16,6 +16,8 @@
>  #include <getopt.h>
>  #include <dhcp.h>
>  
> +#define DHCP_DEFAULT_RETRY 20
> +
>  static int do_dhcp(int argc, char *argv[])
>  {
>  	int ret, opt;
> -- 
> 2.1.4



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

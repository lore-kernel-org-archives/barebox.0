Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs3Si-00024D-4g
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 08:23:45 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs3SM-0006uP-Pk
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 10:23:22 +0200
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs3SM-0004Ut-JE
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 10:23:22 +0200
Date: Sun, 26 Mar 2017 10:23:22 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170326082322.bgy7gkj3duid4wjb@pengutronix.de>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
 <1490496304-30850-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490496304-30850-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 07/13] go: only use it if boot signature is not required
To: barebox@lists.infradead.org

On Sun, Mar 26, 2017 at 04:44:58AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Does this realy help? If someone has access to the barebox shell, then
there are many ways to overwrite the secure boot check.

Michael

> ---
>  commands/go.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/commands/go.c b/commands/go.c
> index fb319b320..e0385a977 100644
> --- a/commands/go.c
> +++ b/commands/go.c
> @@ -26,6 +26,7 @@
>  #include <fcntl.h>
>  #include <linux/ctype.h>
>  #include <errno.h>
> +#include <boot_verify.h>
>  
>  static int do_go(int argc, char *argv[])
>  {
> @@ -37,6 +38,9 @@ static int do_go(int argc, char *argv[])
>  	if (argc < 2)
>  		return COMMAND_ERROR_USAGE;
>  
> +	if (boot_get_verify_mode() < BOOT_VERIFY_AVAILABLE)
> +		return -ESECVIOLATION;
> +
>  	if (!isdigit(*argv[1])) {
>  		fd = open(argv[1], O_RDONLY);
>  		if (fd < 0) {
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

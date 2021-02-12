Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUJ6-0006tI-Je
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 09:00:09 +0000
Date: Fri, 12 Feb 2021 10:00:07 +0100
Message-ID: <20210212090007.GJ19583@pengutronix.de>
References: <20210212085148.19347-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212085148.19347-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] sandbox: fix unreliable block device detection
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 12, 2021 at 09:51:48AM +0100, Ahmad Fatoum wrote:
> If barebox detects that an --image file is a block device, it will try
> to represent it as a block device internally as well, provided that
> the user didn't explicitly specify that it should be mapped as a
> character device instead. The hf_info::is_cdev member used to indicate
> this override wasn't initialized though, so detection was unreliable,
> Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/os/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
> index da87be29c74d..56c2d0519388 100644
> --- a/arch/sandbox/os/common.c
> +++ b/arch/sandbox/os/common.c
> @@ -276,7 +276,7 @@ extern char * strsep_unescaped(char **s, const char *ct);
>  
>  static int add_image(const char *_str, char *devname_template, int *devname_number)
>  {
> -	struct hf_info *hf = malloc(sizeof(struct hf_info));
> +	struct hf_info *hf = calloc(1, sizeof(struct hf_info));
>  	char *str, *filename, *devname;
>  	char tmp[16];
>  	char *opt;
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

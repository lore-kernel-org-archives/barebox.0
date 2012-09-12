Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBp4W-0003VB-EP
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:41:50 +0000
Date: Wed, 12 Sep 2012 17:41:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912154145.GZ6180@pengutronix.de>
References: <1347459234-17676-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347459234-17676-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1 v3] bootm: add global bootm.{image/initrd}.loadaddr
 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 04:13:54PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> To be able to pass the loadaddr of the image and the initrd.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> fix typo in doc
> 
> Best Regards,
> J.
>  commands/bootm.c |   25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 2d9f7f2..c03ca30 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -254,6 +254,19 @@ static char *bootm_image_name_and_no(const char *name, int *no)
>  #define BOOTM_OPTS BOOTM_OPTS_COMMON
>  #endif
>  
> +unsigned long long getenv_loadaddr(const char *name)

Static?

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

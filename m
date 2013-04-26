Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVm42-0000TM-1M
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 17:04:03 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6ADC3104F285
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2013 19:03:57 +0200 (CEST)
Date: Fri, 26 Apr 2013 18:59:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130426165928.GH13393@game.jcrosoft.org>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366994474-21325-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/9] ARM: at91 smc: Fix possible uninitialized variable
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 20:41 Fri 26 Apr     , Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-at91/sam9_smc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index b48275e..a137da4 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -120,12 +120,12 @@ void sam9_smc_read(int id, int cs, struct sam9_smc_config *config)
>  
>  static int at91sam9_smc_probe(struct device_d *dev)
>  {
you fix nothing here
> -	int id;
> +	int id = dev->id;
>  
> -	if (dev->id < 0) {
> +	if (id < 0) {
>  		id = 0;
> -	} else if (dev->id > 1) {
> -		dev_warn(dev, ": id > 2\n");
> +	} else if (id > 1) {
> +		dev_warn(dev, "id > 1\n");
>  		return -EIO;
>  	}
>  
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

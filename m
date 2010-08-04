Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgXnu-0003Z9-NC
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 06:50:19 +0000
Date: Wed, 4 Aug 2010 09:50:08 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100804065008.GC17208@jasper.tkos.co.il>
References: <1280888414-22759-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1280888414-22759-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] init.h: introduce fake define (__init & __initdata) to
	simplify the linux sync
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Wed, Aug 04, 2010 at 04:20:14AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/init.h |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)
> 
> diff --git a/include/init.h b/include/init.h
> index c5dea07..accc4d0 100644
> --- a/include/init.h
> +++ b/include/init.h
> @@ -1,6 +1,12 @@
>  #ifndef _INIT_H
>  #define _INIT_H
>  
> +/*
> + * fake define to simplify the linux sync
> + */
> +#define __init
> +#define __initdata
> +

IMO, having useless __init/__initdata in the code adds noise, and reduces 
readability.  These can be easily removed as code gets moved from Linux to 
Barebox.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

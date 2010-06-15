Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OOOS7-0000nw-9K
	for barebox@lists.infradead.org; Tue, 15 Jun 2010 05:12:49 +0000
Received: from sivan.tkos.co.il (guitar.tcltek.co.il [192.115.133.116])
	by tango.tkos.co.il (8.14.4/8.12.11) with ESMTP id o5F5Ch52001388
	for <barebox@lists.infradead.org>; Tue, 15 Jun 2010 08:12:43 +0300
Received: from jasper.tkos.co.il (taragon.tkos.co.il [10.0.4.3])
	by sivan.tkos.co.il (Postfix) with SMTP id 7A7D2B4F98
	for <barebox@lists.infradead.org>; Tue, 15 Jun 2010 08:12:38 +0300 (IDT)
Date: Tue, 15 Jun 2010 08:12:35 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100615051235.GC3233@jasper.tkos.co.il>
References: <471ada329c4028bfda67cfa2bca1e131aed6ae0e.1276022070.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <471ada329c4028bfda67cfa2bca1e131aed6ae0e.1276022070.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] i2c: fix adapter_list manipulation
To: barebox@lists.infradead.org

Hi barebox list,

Ping?
This seems to fix an obvious bug.

baruch

On Tue, Jun 08, 2010 at 09:36:04PM +0300, Baruch Siach wrote:
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  drivers/i2c/i2c.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 1fa114a..87360f3 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -365,7 +365,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	if (i2c_get_adapter(adapter->nr))
>  		return -EBUSY;
>  
> -	list_add_tail(&adapter_list, &adapter->list);
> +	list_add_tail(&adapter->list, &adapter_list);
>  
>  	/* populate children from any i2c device tables */
>  	scan_boardinfo(adapter);
> -- 
> 1.7.1
> 

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

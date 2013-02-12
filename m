Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp155.iad.emailsrvr.com ([207.97.245.155])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5G6f-00057K-W8
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:41:10 +0000
Message-ID: <511A4671.2070000@calxeda.com>
Date: Tue, 12 Feb 2013 07:41:05 -0600
From: Rob Herring <rob.herring@calxeda.com>
MIME-Version: 1.0
References: <1360674608-12732-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360674608-12732-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] ahci-generic: add oftree support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/12/2013 07:10 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> calxeda use the generic driver but have it's own compatible cf Linux kernel
> Documentation
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/ata/ahci-generic.c |   11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/ata/ahci-generic.c b/drivers/ata/ahci-generic.c
> index 4077627..62f2a19 100644
> --- a/drivers/ata/ahci-generic.c
> +++ b/drivers/ata/ahci-generic.c
> @@ -35,9 +35,20 @@ err_free:
>  	return ret;
>  }
>  
> +static __maybe_unused struct of_device_id ahci_dt_ids[] = {
> +	{
> +		.compatible = "ahci",

I don't believe this is a documented compatible value.

> +	}, {
> +		.compatible = "calxeda,hb-ahci",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
>  static struct driver_d ahci_driver = {
>  	.name	= "ahci",
>  	.probe	= ahci_probe,
> +	.of_compatible = DRV_OF_COMPAT(ahci_dt_ids),
>  };
>  
>  static int ahci_init(void)
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

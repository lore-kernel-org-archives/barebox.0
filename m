Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giH1R-0007wL-W9
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 11:00:15 +0000
Date: Sat, 12 Jan 2019 12:00:08 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190112110008.GC14273@ravnborg.org>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
 <20190112072234.21878-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112072234.21878-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 04/16] PCI: Simplify resource setup code in
 setup_device()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> ---
>  drivers/pci/pci.c | 99 ++++++++++++++++++++---------------------------
>  1 file changed, 42 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index b8089207a4..666b457257 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -169,8 +169,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
>  			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
>  
>  	for (bar = 0; bar < max_bar; bar++) {
> -		resource_size_t last_addr;
> +		resource_size_t *last;
>  		u32 orig, mask, size;
> +		unsigned long flags;
> +		const char *kind;
> +		int r;
A more descriptine name than "r" would maybe improve readability.

> @@ -183,67 +186,49 @@ static void setup_device(struct pci_dev *dev, int max_bar)
>  		if (mask & PCI_BASE_ADDRESS_SPACE_IO) { /* IO */
> -			last_io = ALIGN(last_io, size);
> -			last_addr = last_io;
>  		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
>  		           last_mem_pref) /* prefetchable MEM */ {
> -			last_mem_pref = ALIGN(last_mem_pref, size);
> -			                           IORESOURCE_PREFETCH;
> -			last_addr = last_mem_pref;
>  		} else { /* non-prefetch MEM */
> -			last_mem = ALIGN(last_mem, size);
> -			last_addr = last_mem;
>  		}
>  
> -		dev->resource[bar].end = last_addr + size - 1;
> +		dev->resource[bar].start = *last;
> +		dev->resource[bar].end = dev->resource[bar].start + size - 1;
> +
> +		pr_debug("pbar%d: allocated at %pa\n", bar, last);
> +
> +		*last += size;

I could not see that dev->resource[bar].end was assigned the
same value with the new code.
Maybe I just missed it because I did not follow *last?

I think it is worth to double check it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clI5b-0000qQ-8B
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 16:35:57 +0000
Date: Tue, 7 Mar 2017 17:35:31 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170307163531.GB26868@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170306225356.31475-33-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306225356.31475-33-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 32/45] usb: ohci-at91: Check result of clk_get()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 02:53:43PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/usb/host/ohci-at91.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
> index 0f5c8f1..c70d898 100644
> --- a/drivers/usb/host/ohci-at91.c
> +++ b/drivers/usb/host/ohci-at91.c
> @@ -47,7 +47,16 @@ static int at91_ohci_probe(struct device_d *dev)
>  	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
>  
>  	iclk = clk_get(NULL, "ohci_clk");
> +	if (IS_ERR(iclk)) {
> +		dev_err(dev, "Failed to get 'iclk'\n");
iclk is the internal name. Woudl it make more sense to use "ohci_clk" here?

> +		return PTR_ERR(iclk);
> +	}
> +
>  	fclk = clk_get(NULL, "uhpck");
> +	if (IS_ERR(fclk)) {
> +		dev_err(dev, "Failed to get 'fclk'\n");
Likewise - uhpck?


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

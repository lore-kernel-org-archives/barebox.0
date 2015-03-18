Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YY9yc-0004oV-H7
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 09:09:23 +0000
Received: from mail613.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4D977FFA6C1
 for <barebox@lists.infradead.org>; Wed, 18 Mar 2015 10:08:57 +0100 (CET)
Date: Wed, 18 Mar 2015 10:08:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150318090853.GS26127@ns203013.ovh.net>
References: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
 <1426574331-22797-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426574331-22797-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/7] pci: Use standard pr_debug
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On 07:38 Tue 17 Mar     , Sascha Hauer wrote:
> Use pr_debug instead of custom DBG macro.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/pci/pci.c | 34 +++++++++++++++-------------------
>  1 file changed, 15 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 1f5dc78..cb8c539 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -1,13 +1,9 @@
> +#define pr_fmt(fmt)  "pci: " fmt
> +
>  #include <common.h>
>  #include <linux/sizes.h>
>  #include <linux/pci.h>
>  
> -#ifdef DEBUG
> -#define DBG(x...) printk(x)
> -#else
> -#define DBG(x...)
> -#endif
> -
>  static struct pci_controller *hose_head, **hose_tail = &hose_head;
>  
>  LIST_HEAD(pci_root_buses);
> @@ -150,16 +146,16 @@ static void setup_device(struct pci_dev *dev, int max_bar)
>  		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
>  
>  		if (mask == 0 || mask == 0xffffffff) {
> -			DBG("  PCI: pbar%d set bad mask\n", bar);
> +			pr_debug("pbar%d set bad mask\n", bar);
dev_debug

please

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

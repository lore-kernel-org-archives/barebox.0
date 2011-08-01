Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnmzV-0007yA-TQ
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 07:32:47 +0000
Date: Mon, 1 Aug 2011 09:32:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110801073240.GE20587@pengutronix.de>
References: <20110729155356.GF25658@game.jcrosoft.org>
	<1311995831-25350-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311995831-25350-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 21/23] mci-core: switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 30, 2011 at 05:17:09AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/mci/mci-core.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 3cf364c..c03885b 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1231,7 +1231,7 @@ static int mci_card_probe(struct device_d *mci_dev)
>  	p->priv = mci_dev;
>  
>  	strcpy(disk_dev->name, "disk");
> -	disk_dev->size = mci->capacity;
> +	disk_dev->resource[0].size = mci->capacity;
>  	disk_dev->platform_data = p;

Resources for a device must be allocated. I already fixed this once with
the following. Please do not reintroduce this bug again.

(and honestly, this registering of the "disk" device is just a crude way
of passing around data in a void pointer. The real solution for this is
to just add a register_ata_interface() function instead of registering a
device.)

Sascha

commit 8f24f965e117444c1b253c14621d80fcaf31554c
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Jul 27 14:56:57 2011 +0200

    mci: do not use unitialized resource
    
    disk_dev->resource is unitialized. Do not use it. This
    got broken in:
    
    commit 4c542622cb07354c410680e0a6782508179f9e5f
    Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
    Date:   Mon Jul 18 20:17:04 2011 +0800
    
        mci: switch to "struct resource"
    
        Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com>
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0611ce6..3cf364c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1231,8 +1231,7 @@ static int mci_card_probe(struct device_d
*mci_dev)
 	p->priv = mci_dev;
 
 	strcpy(disk_dev->name, "disk");
-	disk_dev->resource[0].size = mci->capacity;
-	disk_dev->resource[0].start = 0;
+	disk_dev->size = mci->capacity;
 	disk_dev->platform_data = p;
 
 	register_device(disk_dev);
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

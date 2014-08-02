Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDUw4-0001xP-L9
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 08:45:05 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so5261053wgh.5
 for <barebox@lists.infradead.org>; Sat, 02 Aug 2014 01:44:42 -0700 (PDT)
Message-ID: <53DCA4F6.3060701@gmail.com>
Date: Sat, 02 Aug 2014 10:44:38 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406956372-7850-1-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1406956372-7850-1-git-send-email-ezequiel.garcia@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bus: mvebu: fix ranges fixup
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On 08/02/2014 07:12 AM, Ezequiel Garcia wrote:
> The current fixup code is slightly wrong, and only works when the
> root address cell number is one.
> 
> However, Armada XP has a root address cell number of two. In this case
> we are currently applying the fixup on the child high base address,
> while it should be applied on the child low base address.
> 
> Fix it and add some detailed explanation to avoid having to figure this
> out each time.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
> Without this patch, the Plathome Openblocks AX3-4 board wouldn't
> boot on -next. It should affect every Armada XP board that require this
> fixup.

Ezequiel,

great catch! TBH, dealing with ranges is a PITA..

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>


>  drivers/bus/mvebu-mbus.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
> index b1e407a..b7f7836 100644
> --- a/drivers/bus/mvebu-mbus.c
> +++ b/drivers/bus/mvebu-mbus.c
> @@ -788,6 +788,21 @@ static int mvebu_mbus_of_fixup(struct device_node *root, void *context)
>  		ranges = xzalloc(lenp);
>  		of_property_read_u32_array(np, "ranges", ranges, lenp/4);
>  
> +		/*
> +		 * Iterate through each ranges tuple and fixup the custom
> +		 * window ranges low base address. Because Armada XP supports
> +		 * LPAE, it has 2 cells for the parent address:
> +		 *   <windowid child_base high_base low_base size>
> +		 *
> +		 * whereas for Armada 370, there's just one:
> +		 *   <windowid child_base base size>
> +		 *
> +		 * For instance, the following tuple:
> +		 *   <MBUS_ID(0xf0, 0x01) child_base {0} base 0x100000>
> +		 *
> +		 * would be fixed-up like:
> +		 *   <MBUS_ID(0xf0, 0x01) child_base {0} remap 0x100000>
> +		 */
>  		for (n = 0; n < lenp/4; n += size) {
>  			struct mbus_range *r;
>  			u32 mbusid = ranges[n];
> @@ -797,7 +812,7 @@ static int mvebu_mbus_of_fixup(struct device_node *root, void *context)
>  
>  			list_for_each_entry(r, &mbus_ranges, list) {
>  				if (r->mbusid == mbusid)
> -					ranges[n + na] = r->remap;
> +					ranges[n + na + pa - 1] = r->remap;
>  			}
>  		}
>  
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

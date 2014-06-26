Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0Ew3-00035S-G4
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:02:16 +0000
Date: Thu, 26 Jun 2014 21:01:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626190152.GE14257@pengutronix.de>
References: <1403606628-30148-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625065615.GM15686@pengutronix.de>
 <20140625124006.GA25802@omega>
 <20140626055658.GW15686@pengutronix.de>
 <20140626143831.GA30025@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626143831.GA30025@omega>
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
Subject: Re: [PATCH v2] pinctrl: mvebu: add pinctrl drivers for Dove and
 Kirkwood
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 04:38:34PM +0200, Alexander Aring wrote:
> Hi,
> 
> > We could also return an error pointer instead of NULL. Given that not
> > many drivers check the return value anyway this shouldn't be hard to
> > change.
> > 
> 
> yeah, but a ERR_PTR(-ERRNO) is also some valid address which
> dev_request_mem_region could return. Likely in power of two addresses.
> But this is more unlikely than check on NULL. :-)
> 
> Anyway I would try to use the ERR_PTR solution.

So we can't use the last 524 bytes of the physical address space. I
think that's a risk we can take.

> 
> 
> I also see now because we print warning on resource conflicts Holger
> reports some resource conflict on his board. Maybe there is also some
> others board with resource conflicts but we didn't saw that because the
> debug print level.
> 
> I only add pr_warn for conflicts, but there are also some other debug
> prints on error handling, maybe we should change it to:
> 
> diff --git a/common/resource.c b/common/resource.c
> index 1ea2a75..e77805b 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -44,7 +44,7 @@ struct resource *__request_region(struct resource *parent,
>         struct resource *r, *new;
>  
>         if (end < start) {
> -               debug("%s: request region 0x%08llx:0x%08llx: end < start\n",
> +               pr_warn("%s: request region 0x%08llx:0x%08llx: end < start\n",
>                                 __func__,
>                                 (unsigned long long)start,
>                                 (unsigned long long)end);
> @@ -53,7 +53,7 @@ struct resource *__request_region(struct resource *parent,
>  
>         /* outside parent resource? */
>         if (start < parent->start || end > parent->end) {
> -               debug("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
> +               pr_warn("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
>                                 __func__,
>                                 (unsigned long long)start,
>                                 (unsigned long long)end,
> 
> Should I prepare a patch for this? Maybe more users comes because there
> os something wrong with device probing, etc...

I don't think that's necessary. These debug prints are more for
debugging the resource code.

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

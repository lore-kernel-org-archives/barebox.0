Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bP1tS-0006Fv-HN
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 06:19:07 +0000
Date: Mon, 18 Jul 2016 08:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160718061844.GM20657@pengutronix.de>
References: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
 <1468476665-26409-3-git-send-email-andrew.smirnov@gmail.com>
 <20160715055952.GG20657@pengutronix.de>
 <CAHQ1cqHqUm3Bg4gYfqh45MQFgMsvSjDMrJWheTMJoqT25UMw1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHqUm3Bg4gYfqh45MQFgMsvSjDMrJWheTMJoqT25UMw1A@mail.gmail.com>
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
Subject: Re: [PATCH 3/7] mfd: syscon: Decouple syscon interface from platform
 devices
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Jul 15, 2016 at 02:50:00PM -0700, Andrey Smirnov wrote:
> On Thu, Jul 14, 2016 at 10:59 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Jul 13, 2016 at 11:11:01PM -0700, Andrey Smirnov wrote:
> >> Follow Linux Kernel change introduced in
> >> bdb0066df96e74a4002125467ebe459feff1ebef and avoid device/driver model
> >> for DT-based platforms. See the original kernel commit for the rationale.
> >>
> >> Also make syscon_base_lookup_by_pdevname() behave the same way as its
> >> kernel counterpart in the case whern "property" argument is NULL.
> >>
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>  drivers/mfd/syscon.c | 79 ++++++++++++++++++++++++++++++++++++++++------------
> >>  1 file changed, 61 insertions(+), 18 deletions(-)
> >>
> >> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> >> index ac46122..5fd22dd 100644
> >> --- a/drivers/mfd/syscon.c
> >> +++ b/drivers/mfd/syscon.c
> >> @@ -17,15 +17,68 @@
> >>  #include <driver.h>
> >>  #include <malloc.h>
> >>  #include <xfuncs.h>
> >> -
> >> +#include <of_address.h>
> >>  #include <linux/err.h>
> >>
> >>  #include <mfd/syscon.h>
> >>
> >> +static LIST_HEAD(syscon_list);
> >> +
> >>  struct syscon {
> >> +     struct device_node *np;
> >>       void __iomem *base;
> >> +     struct list_head list;
> >>  };
> >>
> >> +static struct syscon *of_syscon_register(struct device_node *np)
> >> +{
> >> +     int ret;
> >> +     struct syscon *syscon;
> >> +     struct resource res;
> >> +
> >> +     if (!of_device_is_compatible(np, "syscon"))
> >> +             return ERR_PTR(-EINVAL);
> >> +
> >> +     syscon = xzalloc(sizeof(*syscon));
> >> +
> >> +     if (of_address_to_resource(np, 0, &res)) {
> >> +             ret = -ENOMEM;
> >> +             goto err_map;
> >> +     }
> >> +
> >> +     syscon->base = IOMEM(res.start);
> >> +     syscon->np   = np;
> >> +
> >> +     list_add_tail(&syscon->list, &syscon_list);
> >> +
> >> +     return syscon;
> >> +
> >> +err_map:
> >> +     kfree(syscon);
> >> +     return ERR_PTR(ret);
> >> +}
> >> +
> >> +void __iomem *syscon_node_to_base(struct device_node *np)
> >
> > This should either be static or the prototype added to include/
> >
> 
> Oops, missed this one. It should be static. Will fix in v2.

Ok, thanks. The rest of the series looks fine.

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

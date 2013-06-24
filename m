Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCnE-0003Vc-Vl
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:51:17 +0000
Date: Mon, 24 Jun 2013 21:50:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130624195021.GY32299@pengutronix.de>
References: <1371634395.4111.54.camel@mars>
 <1372080750.6281.4.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372080750.6281.4.camel@mars>
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
Subject: Re: [PATCH 1/2] omap-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>, barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 03:32:30PM +0200, Christoph Fritz wrote:
> On Wed, 2013-06-19 at 11:33 +0200, Christoph Fritz wrote:
> > This patch adds omap display controller support. Currently only
> > OMAP4 DSS is supported.
> 
> Any objections here?

Oh, sorry, I missed this last version. Applied now

Thanks
 Sascha

> 
> These are the changes in the review-process so far:
> 
> changes since v2:
>         - use dev_request_mem_region_by_name()
> changes since v3:
>         - remove register struct
>         - use uncached screen_base
> changes since v4:
>         - remove useless dev_add_param()
>         - use wait_on_timeout() instead while-deadlock
> changes since v5:
>         - use dev_dbg() and dev_err(), be less verbose
>         - fix coding-style issues
>         - add omap4fb_find_display_by_name()
>         - add additional read/write macros
> changes since v6:
> 	- split driver into two commits
> 	- rename driver to "omap-fb"
> 
>  Thanks
>   -- Christoph
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfFn-0000eO-3X
 for barebox@lists.infradead.org; Thu, 07 May 2020 12:03:53 +0000
Date: Thu, 7 May 2020 14:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200507120347.GC5877@pengutronix.de>
References: <20200505125506.12843-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505125506.12843-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] drivers: fix dev_request_mem_resource() usage
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi Antony,

On Tue, May 05, 2020 at 03:55:06PM +0300, Antony Pavlov wrote:
> Here is the code from drivers/reset/reset-socfpga.c
> 
> > res = dev_request_mem_resource(dev, 0);
> > data->membase = IOMEM(res->start);
> > if (IS_ERR(data->membase))
> >     return PTR_ERR(data->membase);
> 
> dev_request_mem_resource(dev, 0) returns res or ERR_CASE(res)
> so we can't use IOMEM(res->start) just after
> res = dev_request_mem_resource(dev, 0) call.
> 
> Code should look like this
> 
> > res = dev_request_mem_resource(dev, 0);
> > if (IS_ERR(res))
> >     return PTR_ERR(res);
> > data->membase = IOMEM(res->start);
> 
> but if res isn't used in after that we can
> use dev_request_mem_region() instead of
> dev_request_mem_resource(), e.g.
> 
> > data->membase = dev_request_mem_region(dev, 0);
> > if (IS_ERR(data->membase))
> >     return PTR_ERR(data->membase);

The problem with dev_request_mem_region() is that the returned value
leaves no space for error codes. IS_ERR() returns false positives when
the returned region is within the last 512 bytes of the address space.
This is rare, but has happened. This is why the common pattern is to use
dev_request_mem_resource() which can fail and then convert the resource
into a pointer, which cannot fail.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

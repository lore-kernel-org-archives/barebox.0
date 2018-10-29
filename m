Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH3Pq-00039e-Jn
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 09:00:55 +0000
Date: Mon, 29 Oct 2018 10:00:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029090039.4c6agc3rcf67vn3v@pengutronix.de>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013230.24387-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] Refactor driver resource allocation code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 06:32:24PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series is my attempt to minimzie amount of repeating code in
> various resource allocating function in drivers/base/driver.c. All
> patches are optional, so if some/all changes don't seem like an
> improvement, I am more than happy to drop them.
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (6):
>   drivers: base: Simplify generic_memmap_ro()
>   drivers: base: Drop dev_get_mem_region_by_name()
>   drivers: base: Share implementations for dev_get_resource*()
>   drivers: base: Simplify dev_request_mem_region_err_null()
>   drivers: base: Share code for dev_request_mem_region*()
>   drivers: base: Share code for getting and then requesting a region

Ok, I took:

[PATCH 1/6] drivers: base: Simplify generic_memmap_ro()
[PATCH 2/6] drivers: base: Drop dev_get_mem_region_by_name()
[PATCH 4/6] drivers: base: Simplify dev_request_mem_region_err_null()

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

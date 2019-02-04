Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqekx-00062P-PG
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 13:57:54 +0000
Date: Mon, 4 Feb 2019 14:57:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190204135749.f2xoc6vli5od7htl@pengutronix.de>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-18-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190129065549.29161-18-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 17/19] commands: md: Do not use memmap()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2019 at 10:55:47PM -0800, Andrey Smirnov wrote:
> Codepaths using memmap() in md.c don't do any boundary checks, so it
> can be easily made to read past the underlying file's
> boundary. For example on i.MX8MQ based board with 4GiB or RAM we get:
> 
> md -b -s /dev/ram0 0xfffffff0
> fffffff0: 00 00 00 00 00 00 08 0c  00 02 20 00 20 00 05 20   .......... . ..
> 100000000: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000010: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000020: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000030: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000040: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000050: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000060: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000070: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000080: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 100000090: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 1000000a0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 1000000b0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 1000000c0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 1000000d0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 1000000e0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> 
> Drop the memmap() realted codepath, so we can realy on boundary
> checking done by file I/O layer.
> 
> Note that this change has a cosmetic side effect, before:

With this change we can no longer see that the underlying memory cannot
be accessed 'xx'. I find this feature very useful and don't want to
loose it.
If we want to do size checking we can do this, well, by checking the
size. We could add offset/size parameters to memmap().

So, dropped this patch for now.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3FJJ-0004Gr-2t
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 07:25:22 +0000
Date: Mon, 11 Mar 2019 08:25:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190311072518.c7blhssphcycedrh@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
 <20190306094239.29413-6-s.hauer@pengutronix.de>
 <5ad113f6-f0a3-0243-5fd0-57453ed057c6@klevio.com>
 <20190307132435.6ublqhzg7oetk7qw@pengutronix.de>
 <6858091551965541@iva4-406defa25fee.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6858091551965541@iva4-406defa25fee.qloud-c.yandex.net>
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
Subject: Re: [HELP] Kernel + initrd in FIT
To: Seraphim Dolbilov <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Seraphim,

Please do not ask new questions as a response to other threads.

On Thu, Mar 07, 2019 at 04:32:21PM +0300, Seraphim Dolbilov wrote:
> Hello,
> 
> I'm interested in way Barebox passes initrd to kernel if both are taken
> from FIT. What shall I do, if I want my kernel and initrd to be compressed
> in a single FIT image? What kernel boot params and config options
> should be set then?

If you put the ramdisk into the ramdisk property of the configuration
node in your its file then no further action is required. barebox will
pass the ramdisk in the "linux,initrd-start" and "linux,initrd-end"
properties in the devicetree.

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

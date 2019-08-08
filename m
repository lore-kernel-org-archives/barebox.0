Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvi4Y-000823-0D
 for barebox@lists.infradead.org; Thu, 08 Aug 2019 13:03:15 +0000
Date: Thu, 8 Aug 2019 15:03:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20190808130307.5zyfhah23xurwxlq@pengutronix.de>
References: <20190726093400.4957-1-m.felsch@pengutronix.de>
 <20190726093400.4957-2-m.felsch@pengutronix.de>
 <20190805101731.zskslrcxvrn4nsnp@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805101731.zskslrcxvrn4nsnp@pengutronix.de>
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
Subject: Re: [PATCH 2/2] mtd: nand: mxs: sync page_size information
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 19-08-05 12:17, Sascha Hauer wrote:
> Hi Marco,
> 
> On Fri, Jul 26, 2019 at 11:34:00AM +0200, Marco Felsch wrote:
> > Since commit 51061a9884a3 ("mtd: nand: nand_mxs: Add subpage read
> > support") the ecc_read_page and ecc_write_page page_size can be differ
> > if the calculation is not writesize+oobsize. So during write more bytes
> > are passed trough the bch than during the read operation.
> > 
> > It seems that there are no problems for typical nand flashes using the
> > "normal" layout e.g. 2048+64 (user+oob) but if it gets a bit atypical
> > e.g. 2048+128 (user+oob) this leads into ecc errors.
> 
> What problems did you see exactly? I am using boards here with 2k/128b
> page size and they seem to work properly, also when interacting with Linux.

You are right, the problem was caused by a kernel bug.. which is fixed
now.

Anyway IMHO it seems to be right to write as many bytes as are read. So
do you will accept the patches if I adapt the commit message(s).

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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

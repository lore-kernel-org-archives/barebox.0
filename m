Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YyEeR-0007lj-1R
 for barebox@lists.infradead.org; Fri, 29 May 2015 07:24:19 +0000
Date: Fri, 29 May 2015 09:23:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150529072354.GC6325@pengutronix.de>
References: <55636025.4050508@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55636025.4050508@ge.com>
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
Subject: Re: Memtest failed. Error: -22
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Mon, May 25, 2015 at 06:47:17PM +0100, Renaud Barbier wrote:
> I just used memtest on a couple of PPC board (freescale mpc8544 and
> P1014) and it failed with:
> 
> barebox>/ memtest
> Memtest failed. Error: -22
> 
> This error happens when the space between two regions is smaller than a
> page size:
>  0x0bf75000 - 0x0ff74fff (size 0x04000000) malloc space
>  0x0ff756e8 - 0x0ff7d6e7 (size 0x00008000) stack
> 
> 
> In this case, the size - when doing the calculation "size =
> PAGE_ALIGN_DOWN(end - start + 1);" - is zero.
> 
> The function call ret = alloc_memtest_region(list, start, size);
> then fails.
> 
> I will not be able to offer a patch until second week of June as I am away.

Thanks for noting, this is worth fixing. I think though that we can wait
until you are back.

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

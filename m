Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIe2r-0004Km-Dc
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 09:11:16 +0000
Date: Wed, 17 Nov 2010 10:11:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101117091102.GS6017@pengutronix.de>
References: <AANLkTinH6kLH99A0DgUCp3AFnrLsmcACMeTgW1s1PNKt@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinH6kLH99A0DgUCp3AFnrLsmcACMeTgW1s1PNKt@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sparse warnings
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Mon, Nov 15, 2010 at 03:20:47PM +0100, Belisko Marek wrote:
> Hi,
> 
> barebox compilation with C=1 produce a lot of sparse warnings.
> Mainly concerning __iomem problems with readb() and similar functions.
> 
> Make it sense to take care or just could be omitted?

I think it makes sense to work on this. Then we can see the useful
warnings buried under the __iomem warnings.

I had the idea of adding a

#define IOMEM(addr)        ((void __force __iomem *)(addr))

and use it where appropriate.

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

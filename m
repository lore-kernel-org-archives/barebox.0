Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQXxu-0003Du-Vh
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 06:27:51 +0000
Date: Tue, 23 Oct 2012 08:27:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023062749.GG27665@pengutronix.de>
References: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 0/8] improve nandtest command
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 22, 2012 at 09:23:24AM +0200, Alexander Aring wrote:
> Small Summary:
> 	- The old nandtest do a ecc statistic per eraseblock, it's better to
> 	  do this per page. I don't know how this works with subpages.
> 	
> 	- Add a progressbar instead of prints of current flash offset.
> 
> 	- Rename command argument 'passes' to 'iterations', which makes more
> 	  sense.
> 
> 	- use builtin function 'get_random_bytes' to generate random buffer.
> 
> 	- use loff_t instead of off_t. To handle flash >4GB.
> 
> 	- add another constraints check for writesize.

Applied, thanks

Sascha

> 
> Alexander Aring (8):
>   nandtest: stat ecc per page not per eraseblock
>   nandtest: add progressbar instead of offset print
>   nandtest: rename command argument p to i
>   nandtest: change flash length variable type
>   nandtest: use get_random_bytes instead of for loop
>   nandtest: clean up code
>   nandtest: use loff_t instead off_t
>   nandtest: add another constraints check
> 
>  commands/nandtest.c | 190 ++++++++++++++++++++++++++++------------------------
>  1 file changed, 103 insertions(+), 87 deletions(-)
> 
> -- 
> 1.7.12.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

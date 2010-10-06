Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3OQ4-0007EN-NA
	for barebox@lists.infradead.org; Wed, 06 Oct 2010 07:28:11 +0000
Date: Wed, 6 Oct 2010 09:27:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101006072749.GR28242@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101005135213.24F871539A0@gemini.denx.de>
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
Subject: Re: Code "borrowed" without attribution to original authors
To: Wolfgang Denk <wd@denx.de>
Cc: barebox@lists.infradead.org

Hello WOlfgang,

On Tue, Oct 05, 2010 at 03:52:13PM +0200, Wolfgang Denk wrote:
> Hello,
> 
> it has been brought to my attention that lately a number of commits
> have been added to the BareBox repository (and released as BareBox
> v2010.10.0) that contain literal copies of hundreds of lines of code
> taken from the U-Boot project.
> 
> While this is OK in general (U-Boot is covered by the GPLv2/GPLv2+),
> in this case the code has been added to the BareBox repository
> without any attribution to the original authors.  Instead, the
> respective commits carry only SoB lines like these:
> 
> 	Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 	Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Commits that very clearly show this problem are for example:
> 
>  d424ce7  image: factorise image printing contents
>  0ceafe1  Replace direct header access with the API routines
>  aba80a2  image: rename IH_CPU to IH_ARCH to be more concistant
>  7bd7d59  image: factorise string helper
> 
> In the examples given, most of the copied code was actually written by
> Marian Balakowicz and should be attributed to him.  Neither
> Jean-Christophe nor Sascha have any credits on that code.
> 
> 
> We all have been working long enough in free and open source software
> projects that I can assume you are well aware of the basic principles
> of open source software licensing and the requirement to attribute
> code to its original authors.

Does that mean U-Boot has credits to all the original mtd authors when
updating U-Boots mtd support to a newer kernel? /me is digging in the
archives; no, it has not. Does that mean with
9b7076229ec6a958bd835ab70745f7676297ce82 Ilya Yanok is the original
author of jffs2 summary support? No, it's the same in the Linux kernel.
Does that mean you are the original author of include/linux/list.h in
700a0c648df72f2c8e0589c0d0470b5ffd7cab7b? Obviously not.

Please lets go not down that road, it leads to nowhere.

We obviously copy code from other projects like U-Boot and the kernel
and we do our best to keep the copyrights intact, but we can only do
this on a per file base, not on a per commit base. That said,
common/image.c has a copyright to semihalf in U-Boot which is missing in
barebox, we can add this. Note that Jean-Christophe added a copyright to
*you* and not to *him* to this file, which means that he did not even
try to put this his own work.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiiIj-0002GC-Or
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 09:08:26 +0000
Date: Wed, 12 Dec 2012 10:08:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121212090822.GV10369@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-7-git-send-email-w.sang@pengutronix.de>
 <20121211093528.GR10369@pengutronix.de>
 <20121211191742.GA24155@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121211191742.GA24155@pengutronix.de>
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
Subject: Re: [PATCH 06/10] lib: add ubiutils-common
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 11, 2012 at 08:17:42PM +0100, Wolfram Sang wrote:
> 
> > In barebox we have the strtoull_suffix function. We normally accept 'G',
> > 'M' and 'k' suffixes. Restricting the ubi functions to '*iB' suffixes
> > might be confusing for barebox users. Not accepting '*iB' suffixes might
> > be confusing to UBI tool users. How about extending strtoull_suffix to
> > accept '*iB' suffixes and use it here? It seems the all that's missing
> > is to adjust *endp to skip the additional 'iB'
> 
> OK. It probably makes sense to move the ubiutils_print_bytes() function
> then to misc.c also and completely get rif of ubiutils-common? What
> would be a proper name for the function, printull_suffix? Or
> ulltostr_suffix? :)

Both seem fine. BTW we already have size_human_readable()

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORkT9-0001vN-QR
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:19:45 +0000
Date: Thu, 24 Jun 2010 14:19:17 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100624111917.GE27906@jasper.tkos.co.il>
References: <60663606c7efe2aaede86326339cb620c0a6bf8a.1277370124.git.baruch@tkos.co.il>
	<20100624111030.GZ12115@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100624111030.GZ12115@pengutronix.de>
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
Subject: Re: [PATCH] envfs: fix build warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Jun 24, 2010 at 01:10:30PM +0200, Sascha Hauer wrote:
> On Thu, Jun 24, 2010 at 12:04:59PM +0300, Baruch Siach wrote:
> > __LITTLE_ENDIAN or __BIG_ENDIAN are not always defined. E.g. the CodeSourcery
> > G++ Lite 2010q1 for ARM (4.4.1) does not define __BIG_ENDIAN. This causes a
> > compile time warning.
> 
> Maybe we should rather define __LITTLE_ENDIAN and __BIG_ENDIAN
> in include/linux/byteorder.h.

You mean include/linux/byteorder/generic.h? I now see that __LITTLE_ENDIAN and 
__BIG_ENDIAN are defined in include/linux/byteorder/little_endian.h and 
include/linux/byteorder/big_endian.h respectively. Should we add their 
complement?

baruch

> We do not seem to have any
> #ifdef __XX_ENDIAN left in the code.
> 
> Sascha
> 
> > 
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> >  include/envfs.h |    4 ++--
> >  1 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/include/envfs.h b/include/envfs.h
> > index b5849d9..0dd4e6a 100644
> > --- a/include/envfs.h
> > +++ b/include/envfs.h
> > @@ -36,7 +36,7 @@ struct envfs_super {
> >  #error "No byte order defined in __BYTE_ORDER"
> >  #endif
> >  
> > -#if __BYTE_ORDER == __LITTLE_ENDIAN
> > +#if defined(__LITTLE_ENDIAN) && __BYTE_ORDER == __LITTLE_ENDIAN
> >  #define ENVFS_16(x)	(x)
> >  #define ENVFS_24(x)	(x)
> >  #define ENVFS_32(x)	(x)
> > @@ -44,7 +44,7 @@ struct envfs_super {
> >  #define ENVFS_GET_OFFSET(x)	((x)->offset)
> >  #define ENVFS_SET_OFFSET(x,y)	((x)->offset = (y))
> >  #define ENVFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
> > -#elif __BYTE_ORDER == __BIG_ENDIAN
> > +#elif defined(__BIG_ENDIAN) && __BYTE_ORDER == __BIG_ENDIAN
> >  #ifdef __KERNEL__
> >  #define ENVFS_16(x)	swab16(x)
> >  #define ENVFS_24(x)	((swab32(x)) >> 8)
> > -- 
> > 1.7.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

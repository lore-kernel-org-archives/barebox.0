Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTop-0007vH-AM
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:48:28 +0000
Date: Fri, 13 Nov 2020 08:48:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201113074825.GS29830@pengutronix.de>
References: <20201105080245.21325-1-s.hauer@pengutronix.de>
 <8e1faa90-2d82-8bcb-b045-cb694a2c1981@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e1faa90-2d82-8bcb-b045-cb694a2c1981@pengutronix.de>
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
Subject: Re: [PATCH] firmware: Fix dependencies for PBL
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Rouven Czerwinski <r.czerwinski@pengutronix.de>

On Thu, Nov 05, 2020 at 02:32:41PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11/5/20 9:02 AM, Sascha Hauer wrote:
> > The firmware object files for PBL have the name %.gen-pbl.o, not
> > pbl-%.gen.o. Fix The dependencies so that the object files for PBL
> > get rebuilt when the firmware changes.
> > 
> > Fixes: ff047395b9 ("kbuild: rename pbl object pbl-*.o to *.pbl.o")
> 
> With this applied, there is one remaining instance:
> 
> $ egrep -I --exclude-dir=.git -r 'pbl-\S+\.[ao]' .
> ./common/Makefile:$(obj)/pbl-imd-barebox.o: include/generated/compile.h
> 
> This should be s/pbl-imd-barebox.o/imd-barebox.pbl.o/ as well, right?

Right, thanks for looking at it. I fixed that up.

Sascha

> 
> 
> > Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  firmware/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/firmware/Makefile b/firmware/Makefile
> > index 0d1b445783..cc28c0fc39 100644
> > --- a/firmware/Makefile
> > +++ b/firmware/Makefile
> > @@ -55,7 +55,7 @@ $(patsubst %,$(obj)/%.gen.S, $(fw-external-y)): %: $(wordsize_deps) \
> >  $(patsubst %,$(obj)/%.gen.o, $(fw-external-y)): $(obj)/%.gen.o: $(fwdir)/%
> >  
> >  # The same for pbl:
> > -$(patsubst %,$(obj)/pbl-%.gen.o, $(fw-external-y)): $(obj)/pbl-%.gen.o: $(fwdir)/%
> > +$(patsubst %,$(obj)/%.gen.pbl.o, $(fw-external-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
> >  
> >  obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
> >  
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

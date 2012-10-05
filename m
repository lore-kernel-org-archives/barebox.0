Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKFW5-0003U5-Di
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 21:33:06 +0000
Date: Fri, 5 Oct 2012 23:33:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005213302.GZ1322@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
 <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
 <87txu8y9rb.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87txu8y9rb.fsf@free.fr>
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
Subject: Re: [PATCH 2/4] introduce region_overlap() function
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 09:55:04PM +0200, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > To check if two regions overlap
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/common.h |   13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/include/common.h b/include/common.h
> > index c1f44b4..e30774a 100644
> > --- a/include/common.h
> > +++ b/include/common.h
> > @@ -256,4 +256,17 @@ static inline void barebox_banner(void) {}
> >  		(__x < 0) ? -__x : __x;         \
> >  	})
> >  
> > +/*
> > + * Check if two regions overlap. returns true if they do, false otherwise
> > + */
> > +static inline bool region_overlap(unsigned long starta, unsigned long lena,
> > +		unsigned long startb, unsigned long lenb)
> > +{
> > +	if (starta + lena <= startb)
> > +		return 0;
> > +	if (startb + lenb <= starta)
> > +		return 0;
> > +	return 1;
> > +}
> > +
> >  #endif	/* __COMMON_H_ */
> 
> Or if you look for perfomance (I presume not in barebox) :
> static inline bool region_overlap(unsigned long starta, unsigned long lena,
> 		unsigned long startb, unsigned long lenb)
> {
>         return starta <= startb + lenb && starta + lena >= startb;
> }
> 
> It's a bit more obfuscated, but performance wise no branch prediction :)

You made me curious. I tried to compile both and here is the result on
ARM (I swapped the arguments left and right of the &&):

00025000 <_region_overlap>:
   25000:       e0811000        add     r1, r1, r0
   25004:       e1510002        cmp     r1, r2
   25008:       9a000004        bls     25020 <_region_overlap+0x20>
   2500c:       e0832002        add     r2, r3, r2
   25010:       e1520000        cmp     r2, r0
   25014:       93a00000        movls   r0, #0
   25018:       83a00001        movhi   r0, #1
   2501c:       e12fff1e        bx      lr
   25020:       e3a00000        mov     r0, #0
   25024:       e12fff1e        bx      lr

00025000 <__region_overlap>:
   25000:       e0811000        add     r1, r1, r0
   25004:       e1510002        cmp     r1, r2
   25008:       3a000004        bcc     25020 <__region_overlap+0x20>
   2500c:       e0832002        add     r2, r3, r2
   25010:       e1500002        cmp     r0, r2
   25014:       83a00000        movhi   r0, #0
   25018:       93a00001        movls   r0, #1
   2501c:       e12fff1e        bx      lr
   25020:       e3a00000        mov     r0, #0
   25024:       e12fff1e        bx      lr

Maybe gcc isn't so clever on other architectures, I don't know ;)

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

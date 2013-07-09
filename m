Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwcOI-00078y-JN
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 18:11:55 +0000
Date: Tue, 9 Jul 2013 20:11:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709181131.GC516@pengutronix.de>
References: <1373374600-13856-1-git-send-email-shc_work@mail.ru>
 <20130709175433.GB516@pengutronix.de>
 <1373392840.824667706@f353.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373392840.824667706@f353.mail.ru>
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
Subject: Re: [PATCH] ARM: Use armlinux_bootparams address for DTB
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jul 09, 2013 at 10:00:41PM +0400, Alexander Shiyan wrote:
> > On Tue, Jul 09, 2013 at 04:56:40PM +0400, Alexander Shiyan wrote:
> > > In some cases, the address of the devicetree, which is obtained
> > > dynamically, may be located in the kernel text area, which leads
> > > to malfunction of the devicetree. The patch uses the address of
> > > the devicetree, designed for the board, if it possible.
> > > 
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > ---
> > >  arch/arm/lib/armlinux.c | 20 ++++++++++++--------
> > >  1 file changed, 12 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> > > index 40a63ea..12fb06d 100644
> > > --- a/arch/arm/lib/armlinux.c
> > > +++ b/arch/arm/lib/armlinux.c
> > > @@ -261,16 +261,20 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
> > >  		unsigned long initrd_size, void *oftree)
> > >  {
> > >  	void (*kernel)(int zero, int arch, void *params) = adr;
> > > -	void *params = NULL;
> > >  	int architecture;
> > >  
> > >  	if (oftree) {
> > > -		printf("booting Linux kernel with devicetree\n");
> > 
> > This is a useful information that gets removed here. Could you keep it?
> 
> Yes, but I think this is duplicate previous message "using internal devicetree".

Not really a duplicate since the 'internal devicetree' message will only
come if we are using an internal devicetree (i.e. no devicetree
specified on the commandline).
We could move the message to common/bootm.c instead of removing it.

> 
> > > -		params = oftree;
> > > -	} else {
> > > +		if (armlinux_bootparams) {
> > > +			struct fdt_header *header = oftree;
> > > +
> > > +			printf("Relocate DTB to 0x%p\n", armlinux_bootparams);
> > 
> > This is more useful for verbose mode, but I think not for the normal
> > case.
> 
> This is note about address, since barebox reports us address of devicetree
> before and it different than armlinux_params. Remove anyway?

My idea was not to remove them but encapsulate it in bootm_verbose().
That's not so easy though since this code is called from non bootm code.

We could add an additional verbose argument to this function.

Often the boot code is critical. During normal boot you don't want to
see many messages because they add to the boot time, but when something
doesn't work one is happy about every line that comes out, so I think
it's worth it to pass a verbose parameter around.

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

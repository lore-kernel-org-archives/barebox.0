Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f353.mail.ru ([217.69.140.249])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwcDp-0006yZ-NX
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 18:01:07 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 09 Jul 2013 22:00:41 +0400
Message-ID: <1373392840.824667706@f353.mail.ru>
In-Reply-To: <20130709175433.GB516@pengutronix.de>
References: <1373374600-13856-1-git-send-email-shc_work@mail.ru>
 <20130709175433.GB516@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gQVJNOiBVc2UgYXJtbGludXhfYm9vdHBhcmFtcyBhZGRy?=
 =?UTF-8?B?ZXNzIGZvciBEVEI=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Tue, Jul 09, 2013 at 04:56:40PM +0400, Alexander Shiyan wrote:
> > In some cases, the address of the devicetree, which is obtained
> > dynamically, may be located in the kernel text area, which leads
> > to malfunction of the devicetree. The patch uses the address of
> > the devicetree, designed for the board, if it possible.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/lib/armlinux.c | 20 ++++++++++++--------
> >  1 file changed, 12 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> > index 40a63ea..12fb06d 100644
> > --- a/arch/arm/lib/armlinux.c
> > +++ b/arch/arm/lib/armlinux.c
> > @@ -261,16 +261,20 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
> >  		unsigned long initrd_size, void *oftree)
> >  {
> >  	void (*kernel)(int zero, int arch, void *params) = adr;
> > -	void *params = NULL;
> >  	int architecture;
> >  
> >  	if (oftree) {
> > -		printf("booting Linux kernel with devicetree\n");
> 
> This is a useful information that gets removed here. Could you keep it?

Yes, but I think this is duplicate previous message "using internal devicetree".

> > -		params = oftree;
> > -	} else {
> > +		if (armlinux_bootparams) {
> > +			struct fdt_header *header = oftree;
> > +
> > +			printf("Relocate DTB to 0x%p\n", armlinux_bootparams);
> 
> This is more useful for verbose mode, but I think not for the normal
> case.

This is note about address, since barebox reports us address of devicetree
before and it different than armlinux_params. Remove anyway?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

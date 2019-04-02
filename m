Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBOz7-00055K-Iy
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 19:22:15 +0000
Date: Tue, 2 Apr 2019 21:22:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402192209.GC5916@ravnborg.org>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-7-a.fatoum@pengutronix.de>
 <20190402174203.GC18142@ravnborg.org>
 <77a7828e-a35b-20e3-89fd-bd0a898db561@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77a7828e-a35b-20e3-89fd-bd0a898db561@pengutronix.de>
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
Subject: Re: [PATCH v3 06/15] ARM: at91: import lowlevel clock initialization
 from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

> >> @@ -1,4 +1,5 @@
> >>  obj-y += setup.o
> >> +pbl-y += at91_pmc_ll.o
> > 
> > Will this always make my pbl image larger or do we have some linker
> > magic that throws away the unused code?
> 
> My understanding is that barebox instructs GCC to place each out-of-line function
> into a separate section (with -ffunction-sections) and then the linker prunes all
> unreferenced sections. 
> 
> > If the pbl image become larger then we need to add this in a conditional manner
> > as we cannot allow this for all at91 variants.
> 
> I used to have conditional function definitions in a prior version (albeit
> for the SDRAM variants initialization routines) and Sascha commented that
> the #ifdefery can be removed as the linker takes care of it.
I should have known already that we used --function-sections as I worked
with this in the kernel in my former life.
Much better than ifdeffery all over the code or in Makefiles.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

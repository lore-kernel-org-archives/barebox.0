Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpCN7-0002R6-3h
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 07:00:01 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 19 Jun 2013 08:59:36 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338ED0163C71@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
 <20130618192504.GX32299@pengutronix.de>
In-Reply-To: <20130618192504.GX32299@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: Barebox fails to boot 1/40 boots...
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: dinsdag 18 juni 2013 21:25
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: Barebox fails to boot 1/40 boots...
> 
> On Tue, Jun 18, 2013 at 02:59:57PM +0200, Vanhauwaert Wouter wrote:
> > Hello all,
> >
> > I have this issue with our custom design (IMX53, NAND, DDR3)
> >
> > Everything goes well most of the time, but now and then  the system does not
> boot and halts during initialization...
> > To be more specific, the function on which the system blocks is
> > 'setup_c()' in arch/arm/cpu/start-pbl.c
> >
> > What can I do more to debug this? This function is completely in assembler...
> 
> What makes you sure barebox stops there? Do you have DEBUG_LL enabled or
> do you use a JTAG debugger?
> 

Because these are real on/off tests (with which I mean with a relais which switches on/off every 10 seconds or so, a cold restart) I did not have the ability to test it with a debugger.
What I did was changing the LDO voltage from 1.2V to 1.3V and measure this with a scoop. When I put the adjustment right before this setup_c(), it goes well all the time (even when the board is blocked), 
when I put it after this setup_c(), it doesn't  get through when the board is blocked. So my assumption is it blocks in this function.

> Does this happen in first stage boot only or also when you chainload barebox
> from an already running barebox?

This is in a first stage boot...

> 
> You could try calling imx53_init_lowlevel_early from
> barebox_arm_reset_vector(). This *could* make a difference.
> 
> Since you are using v2013.05-stable you should have the following patches, but
> maybe it's worth rechecking.
> 
> 76820df ARM: invalidate data caches during early init
> f9d7582 ARM v7: added v7_mmu_cache_invalidate()
> ee5f859 ARM v7: v7_mmu_cache_flush(): do not restore r0-r3 (minor
> optimization) eb7d85c arm: properly init alignment trap bit
> 7904d90 ARM v7: fix mmu-off operation
> 9af1150 ARM: fix the memset fix
> 

I'll check

Grtz,
Wouter


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

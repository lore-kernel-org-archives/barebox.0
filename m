Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn8xN-0004YM-JX
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 13:20:11 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Tue, 17 Jan 2012 13:20:03 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317FD25F@DBDE01.ent.ti.com>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
 <20120116115228.GR5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAD15@DBDE01.ent.ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAE23@DBDE01.ent.ti.com>
 <20120116154626.GS5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FB2B7@DBDE01.ent.ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FCED7@DBDE01.ent.ti.com>
 <20120117121246.GY5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FD026@DBDE01.ent.ti.com>
 <20120117131055.GA5446@pengutronix.de>
In-Reply-To: <20120117131055.GA5446@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH] omap3 towards thumb2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> Sent: Tuesday, January 17, 2012 6:41 PM
> To: Premi, Sanjeev
> Cc: barebox@lists.infradead.org
> Subject: Re: [PATCH] omap3 towards thumb2 support
> 
> On Tue, Jan 17, 2012 at 12:24:26PM +0000, Premi, Sanjeev wrote:
> > > -----Original Message-----
> > > From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> > > Sent: Tuesday, January 17, 2012 5:43 PM
> > > To: Premi, Sanjeev
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: [PATCH] omap3 towards thumb2 support
> > > 
> > > On Tue, Jan 17, 2012 at 11:14:31AM +0000, Premi, Sanjeev wrote:
> > 
> > [snip]
> > 
> > > > > 
> > > > > I attached my binary MLO file. Could you check if it 
> > > works for you? I
> > > > > just checked this binary and it comes up with:
> > > > > 
> > > > > [sp] I will try tomorrow morning.
> > > > 
> > > > Sascha,
> > > >   Your MLO boots fine. But I couldn't make repeat 
> success on either
> > > >   beagle or the omap3evem on my side.
> > > > 
> > > >   Each time there is an exception on entry of 
> setup_auxcr() on both
> > > >   boards. See attached image.
> > > > 
> > > >   I noticed that the size of the generated MLO for beagle 
> > > were different
> > > >   for us - 35224(yours) vs. 35572(mine).
> > > > 
> > > >   I am building with CodeSourcery 2011.03-41.
> > > 
> > > Ok, got it. Please replace the setup_auxcr patch with the 
> > > following one
> > > (I also updated the work/omap3 branch). The problem was 
> the missing
> > > ENDPROC(setup_auxcr) directive which tells the assembler that
> > > setup_auxcr is a function. With this the function is 
> correctly called
> > > with 'blx' instead of 'bl'. 'blx' is needed because setup_auxcr is
> > > compiled in arm mode instead of thumb2 mode. Somehow my toolchain
> > > got that right without ENDPROC but the codesourcery 
> toolchain didn't.
> > > With this patch the binary also works with the 
> codesourcery toolchain.
> > > 
> > 
> > I replaced the contents of auxcr.S and I am able to boot fine on the
> > OMAP3EVM.
> > 
> > BTW, I noticed that this file has no license header. Is this okay?
> 
> Added one. Can I have your tested-by?

Tested-by: Sanjeev Premi <premi@ti.com>

> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                  
>            |
> Industrial Linux Solutions                 | 
> http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: 
> +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   
> +49-5121-206917-5555 |
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

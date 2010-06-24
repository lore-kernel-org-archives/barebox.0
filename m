Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.aruba.it ([62.149.128.203] helo=smtpw2.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORlba-00008p-I8
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 12:32:31 +0000
Date: Thu, 24 Jun 2010 14:32:25 +0200
Message-Id: <L4IQU1$4731D5E42E435C795207D3BFB302BAD3@aruba.it>
MIME-Version: 1.0
From: "Luca Ceresoli" <list@lucaceresoli.net>
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
Subject: Re: Regression: not booting anymore on OMAP35xx
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Tue, Jun 22, 2010 at 04:04:52PM +0200, Luca Ceresoli wrote:
> > Sascha Hauer wrote:
> > > Hi Luca,
> > > 
> > > On Tue, Jun 22, 2010 at 02:26:11PM +0200, Luca Ceresoli wrote:
> > > > Hi,
> > > > 
> > > 
> > > Seems that I lost the call to arch_init_lowlevel. Does the following
> > > patch help?
> > 
> > I'm afraid it doesn't seem to.
> > It fails with the same symptoms.
> > 
> > Luca
> > 
> > > 
> > > 
> > > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > > index eea7dcf..91d2ccd 100644
> > > --- a/arch/arm/cpu/start.c
> > > +++ b/arch/arm/cpu/start.c
> > > @@ -50,6 +50,8 @@ void __naked __bare_init reset(void)
> > >  {
> > >  	uint32_t r;
> > >  
> > > +	arch_init_lowlevel();
> > > +
> 
> Ok, this has to be done *after* switching the cpu to SVC32 mode.
> 
> I tested this on my beagle board and now it works again. I pushed
> a patch to the master repository.

Sascha, thank you for the prompt response.
Unfortunately the new version works only partially with my Beagle
Board (rev. C4).

I tested commit:
 46976f7 OMAP: fix compilation

- Test 1: the board is always powered.
  Press RESET with the USER key pressed.
  10 tests, 10 passed.

- Test 2: the board is not powered.
  Turn turn it on with the USER key pressed.
  Turn turn it off again at the end of the test.
  10 tests, 5 passed, 5 failed.

During all of the 20 tests, barebox.bin was always the same.
I didn't recompile it.

OTOH the commit before the "reimplement in C" passes also test 2.

I hope this gives enough hints to solve the problem.

Luca



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

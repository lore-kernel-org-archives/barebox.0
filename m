Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1.ptmail.sapo.pt ([212.55.154.21] helo=sapo.pt)
 by merlin.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7UlE-0005ih-Ja
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 18:16:33 +0000
Received: from unknown (HELO probook.localnet)
 (as3038625@sapo.pt@[83.240.187.74])
 (envelope-sender <microcris@sapo.pt>)
 by mta14 (qmail-ptmail-1.0.0) with SMTP
 for <barebox@lists.infradead.org>; 8 Aug 2013 18:16:00 -0000
From: Cristiano Rodrigues <microcris@sapo.pt>
Date: Thu, 08 Aug 2013 18:15:59 +0100
Message-ID: <2077419.7Hi1KuMiAA@probook>
In-Reply-To: <8713898.T97Zsga2ps@probook>
References: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
 <1375980427.338104700@f146.i.mail.ru> <8713898.T97Zsga2ps@probook>
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
Subject: Re: Re: Re: barebox-2013.07/08.0 works from RAM but fails from NAND
 (Mini2440)
To: barebox@lists.infradead.org

Hi again :)

The problem is solved.

barebox 2013.08.0-00156-g72826e7-dirty -> boot from NAND without problem

On Thursday 08 August 2013 17:11:28 Cristiano Rodrigues wrote
> Thanks for trying to help :)
> 
> here it is the git bisect log:
> git bisect start
> # bad: [1f3ac50f527932b4409cf4b3cf84f4be02a65be5] ARM: bootm: Print Kernel
> commandline unconditionally
> git bisect bad 1f3ac50f527932b4409cf4b3cf84f4be02a65be5
> # good: [2aca947c785bfc46bb5bce75ed1f69c285ac3f36] Release v2013.05.1
> git bisect good 2aca947c785bfc46bb5bce75ed1f69c285ac3f36
> # good: [5fdb9c0829b12e042e8fa1131bf2eee180e2b11b] Release v2013.05.0
> git bisect good 5fdb9c0829b12e042e8fa1131bf2eee180e2b11b
> # bad: [5f56c3506007eea1a284cdc55f8b3e60de67f2cc] Merge branch 'for-next/of'
> git bisect bad 5f56c3506007eea1a284cdc55f8b3e60de67f2cc
> # bad: [cd07f67a300f7c938952c38d909a70d4bc45db57] arm: mvebu: remove useless
> lines in kwbimage.cfg for CuBox
> git bisect bad cd07f67a300f7c938952c38d909a70d4bc45db57
> # bad: [da1ada40d27c734ec51f1da924b2ecbbd28115c1] Merge branch
> 'for-next/omap' git bisect bad da1ada40d27c734ec51f1da924b2ecbbd28115c1
> # good: [3cdd18632e72cbb8b0402df3e4821dfd7d24643b] Merge branch 'for-
> next/memory-commands'
> git bisect good 3cdd18632e72cbb8b0402df3e4821dfd7d24643b
> # good: [c8af035b4176af0e8da2cdd2d10109b56e06444e] Merge branch 'for-
> next/misc'
> git bisect good c8af035b4176af0e8da2cdd2d10109b56e06444e
> # good: [32dc070fd499a8a0bc4bc434fe74319c7463a97a] pinctrl: move
> imx-iomux-v1 to drivers/pinctrl/
> git bisect good 32dc070fd499a8a0bc4bc434fe74319c7463a97a
> # good: [579b794b5d13e4a1ffa21d2426bfab7050eaba9d] Merge branch
> 'for-next/of' git bisect good 579b794b5d13e4a1ffa21d2426bfab7050eaba9d
> # good: [a6fda1886a40ecf89573ec53c3abae87fe59bba7] beaglebone: remove stray
> semicolon
> git bisect good a6fda1886a40ecf89573ec53c3abae87fe59bba7
> # good: [98839ca886a1e146091e06799cde6c9912f77863] m33xx-clock: configure
> PLLs based on oscillator frequency
> git bisect good 98839ca886a1e146091e06799cde6c9912f77863
> # good: [de5b9f71bf8d3afbe9503b98acef9a93f1e08881] m33xx-clock: remove
> unused code
> git bisect good de5b9f71bf8d3afbe9503b98acef9a93f1e08881
> # first bad commit: [da1ada40d27c734ec51f1da924b2ecbbd28115c1] Merge branch
> 'for-next/omap'
> 
> On Thursday 08 August 2013 20:47:07 you wrote:
> > > 64MB of SDRAM
> > 
> > No, seems it is other problem.
> > So, I cannot say more here. Just try to retry git bisect
> > with bad v2013.06.0 and good v2013.05.0 (yes 5.0, not 5.1).
> > So, as first do:
> > git bisect reset
> > then
> > git bisect start
> > git bisect good  v2013.05.0
> > git bisect bad v2013.06.0
> > and mark commits (in proper state) as in previous case.
> > 
> > > On Thursday 08 August 2013 20:36:23 you wrote:
> > > > > v2013.05.0 ->good
> > > > > v2013.05.1 ->good
> > > > > v2013.06.0 ->bad
> > > > 
> > > > Ok. I suspect one thing, but as first tell me size of SDRAM on your
> > > > borad.
> > > > 
> > > > > On Thursday 08 August 2013 20:31:45 you wrote:
> > > > > > > you are right. the patch is only for i.MX and is older than
> > > > > > > 2013.05
> > > > > > > 
> > > > > > > I'm checking again
> > > > > > > 
> > > > > > > On Thursday 08 August 2013 20:24:57 Alexander Shiyan wrote:
> > > > > > > > > On Thursday 08 August 2013 18:52:47 Alexander Shiyan wrote:
> > > > > > > > > > > 2013/8/8 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> > > > > > > > > > > > Dear list & developers,
> > > > > > > > > > > > 
> > > > > > > > > > > > My barebox works (I get barebox prompt and can boot
> > > > > > > > > > > > from
> > > > > > > > > > > > there)
> > > > > > > > > > > > when
> > > > > > > > > > > > loaded
> > > > > > > > > 
> > > > > > > > > Hi there :)
> > > > > > > > > 
> > > > > > > > > It is the first commit after the barebox version 2013.05.1
> > > > > > > > > that is
> > > > > > > > > breaking
> > > > > > > > > the mini2440 NAND boot.
> > > > > > > > > 
> > > > > > > > > cris@ProBook:~/mini2440/Boot/barebox_git$ git bisect bad
> > > > > > > > > 5f82a0cd0138ae5208cc8758c638ce6a928ed2e3 is the first bad
> > > > > > > > > commit
> > > > > > > > > commit 5f82a0cd0138ae5208cc8758c638ce6a928ed2e3
> > > > > > > > > Author: Alexander Shiyan <shc_work@mail.ru>
> > > > > > > > > Date:   Tue Apr 9 19:05:31 2013 +0400
> > > > > > > > > 
> > > > > > > > >     ARM: cpuimx51: Use custom padctrl for fec
> > > > > > > > >     
> > > > > > > > >     The fec padctrl is different from what we have in the
> > > > > > > > >     kernel
> > > > > > > > >     iomux
> > > > > > > > >     file. To be able to keep the iomux file in sync with the
> > > > > > > > >     kernel,
> > > > > > > > >     use
> > > > > > > > >     a custom padctrl for the cpuimx51 board.
> > > > > > > > >     
> > > > > > > > >     Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > > > > > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > > 
> > > > > > > > Seems something incorrect since patch is touched i.MX arch
> > > > > > > > only.
> > > > > > 
> > > > > > Which exact barebox version is known as good and bad?
> > > > > > Can you try all? (v2013.05.0, v2013.05.1,v2013.06.0 etc...)
> > 
> > ---
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

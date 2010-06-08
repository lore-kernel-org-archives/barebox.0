Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.aruba.it ([62.149.128.203] helo=smtpw2.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OLtsD-0007Ld-Gi
	for barebox@lists.infradead.org; Tue, 08 Jun 2010 08:09:27 +0000
Date: Tue,  8 Jun 2010 10:02:44 +0200
Message-Id: <L3OROK$8E14E73C17D97B7C877E590EED33976C@aruba.it>
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
Subject: Re: OMAP 3530 arch_shutdown "undefined instruction"
To: barebox@lists.infradead.org

Orjan Friberg wrote:> On 2010-05-27 11:31, Sascha Hauer wrote:
> > Seems this does not work on Cortex Processors. Can you try replacing
> > this with the following please:
> >
> > 	asm volatile (
> > 		"bl __mmu_cache_flush;"
> > 		"bl __mmu_cache_off;"
> > 		:
> > 		:
> > 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
> > 	);
> 
> Thanks, this seems to work fine (in the sense that I can load and run a 
> second stage bootloader; I haven't tried verifying what happens with the 
> I and D cache).

Works for me as well.
Is it going to be committed?

Thanks,
Luca



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

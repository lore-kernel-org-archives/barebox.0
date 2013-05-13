Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubvi0-00013V-G0
 for barebox@lists.infradead.org; Mon, 13 May 2013 16:34:44 +0000
Date: Mon, 13 May 2013 18:34:18 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130513183418.4f9ce9e2@skate>
In-Reply-To: <51911510.8050207@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de>
 <5190E56F.9080903@gmail.com> <20130513162313.4f5849a9@skate>
 <519110D0.5040801@gmail.com> <20130513182141.12af9b31@skate>
 <51911510.8050207@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sebastian Hesselbarth,

On Mon, 13 May 2013 18:30:08 +0200, Sebastian Hesselbarth wrote:

> > No, I did not test that, it was just a supposition from me that it
> > would work. I was under the impression that the SoC would load the
> > entire image in SRAM, and then go through the DATA commands and
> > apply them. But of course, if it does apply each and every DATA
> > command as soon as it receives them, then it cannot work, and
> > Barebox will have to do its remapping and give up the possibility
> > of being booted by itself.
> 
> Hmm, Dove spec says about BootROM Address Decoding:
> "BootROM firmware uses the default address map, and does not change it
> throughout the entire boot process."
> 
> And of course, if you change the address map early, BootROM will fail
> to access peripherals (SPI, I2C, NAND, ...).
> 
> Remap by kwbimage.cfg looks like a no-go.

Looks like, yes. Thanks for the testing and investigation!

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

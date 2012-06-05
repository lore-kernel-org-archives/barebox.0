Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbntu-0006c9-TW
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 07:10:00 +0000
Date: Tue, 5 Jun 2012 09:09:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120605070952.GM30400@pengutronix.de>
References: <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
 <20120530054738.GF30400@pengutronix.de>
 <CAONxwYNf7_+H1oC2AuL2A_edBXqqkdSjxt6eFwPvU4VS+UzU0g@mail.gmail.com>
 <20120531170631.GR30400@pengutronix.de>
 <CAONxwYNV1xzgZYFBqW44Zj=X0mqVmw1QrXODkHp3KiP7khRh2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYNV1xzgZYFBqW44Zj=X0mqVmw1QrXODkHp3KiP7khRh2w@mail.gmail.com>
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
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 01, 2012 at 12:25:04PM +0200, Roberto Nibali wrote:
> > I have included some more debugging and also workarounds for the mx25.
> > This
> > > is the current debug output, where it clearly indicates that for some
> > > reason the mx25 esdhc related registers never show a transfer complete
> > for
> > > a multiblock write:
> >
> > The kernel has this:
> >
> >  if (is_imx25_esdhc(imx_data) || is_imx35_esdhc(imx_data))
> >                /* Fix errata ENGcm07207 present on i.MX25 and i.MX35 */
> >                host->quirks |= SDHCI_QUIRK_NO_MULTIBLOCK
> >                        | SDHCI_QUIRK_BROKEN_ADMA;
> >
> 
> :) Yes, the kernel has lots of quirks for the mx25 based esdhc
> implementation, and I have stumbled across these lines a dozen times
> already over the past few weeks trying to figure out why SD write transfer
> is doooooog slow on my device. I have been sending a lot of in-depth
> analysis and traces, including timing charts showing completely impossible
> CMD timeouts, and no one seems to be able to figure out what causes this.
> Hardware failure is almost not possible, and that's why I focused on the
> Software part. Since the eSDHC stack in the kernel is composed of a lot of
> intermediary drivers down to block layer, I opted for the simplest possible
> test case where I didn't have to write an SD driver from scratch: barebox!
> 
> That's how we ended up here. I am well aware that for others this problem
> does not seem to exist, but I simply don't know where to look for anymore.
> With regard to ENGcm07207, IMHO the introduced quirk does not really fix
> this specific erratum. The problem description in the READ case is as
> follows:
> 
> "If a CMD12 command is sent during a WRITE MULTIPLE BLOCK transfer, the AHB
> bus keeps writing to the internal buffers. This is undesirable behavior.
> During this situation, the AHB bus does not stop until all the blocks are
> written to the internal buffer, and an AutoCMD12 command is sent.
> 
> A typical scenario is as follows: After Sending a non-ending block, the
> card replies with a CRC error. The software detects the CRC error and
> manually sends a CMD12 command to the card to stop the transmission.
> Internally, the AHB bus keeps writing to the internal buffer even though
> the software stopped the transfer."
> 
> So the solution is as follows:
> 
> To abort data transfers on the AHB, software can reset the eSDHC by writing
> 1 to SYSCTL[24] (RSTA).
> 
> I haven't tried this, but I can assure you that setting block count to 1
> does not resolve the issue at all, or the other way around: having multiple
> block write/read support for the i.MX25 does not seem to be the cause of
> any reproducible problem. So, unless someone proves me otherwise, I believe
> the kernel driver implementation is wrong. On top of that, there is
> erratum ENGcm01112 which then directly comes into action, something I also
> didn't see addressed in the kernel sources.

I don't know much about this topic. If you find something, please let us
know, also if you find something that helps the kernel.

> 
> I'll keep looking for other answers, however you might want to consider the
> minimally invasive WML changes I did in the patch sent before, which at the
> same time introduce a similar quirk "framework" to the esdhc driver in
> barebox like the kernel has.

Can you send this patch again? The thread has gotten quite long and I
can't find this anymore. Please start a new thread next time for
different topics.

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

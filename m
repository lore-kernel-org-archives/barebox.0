Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9C7C-0003hk-Sl
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 09:41:44 +0000
Message-ID: <1346838098.3625.10.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 05 Sep 2012 11:41:38 +0200
In-Reply-To: <50471A79.6070707@webware-experts.de>
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel> <50471A79.6070707@webware-experts.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: MLO doesn't work, rest is ok
To: Norbert Roos <nroos@webware-experts.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.09.2012, 11:25 +0200 schrieb Norbert Roos:
> On 09/05/2012 08:12 AM, Jan Weitzel wrote:
> 
> >> I just wanted to try the freshly generated MLO and barebox.bin on my
> >> Phytec PCM049 board (OMAP4 based). Copied both files to the FAT
> >> partition on the SD card.
> >>
> >> Unfortunately it doesn't boot, after trying to boot from SD card the ROM
> >> boot loader oviously skips to booting from UART.
> >
> > Hi,
> > which barebox version? Is the board with OMAP4460?
> 
> barebox is 2012.08.0, OMAP4430.

I just test it here it works. Did you use pcm049_xload_defconfig? SD
card layout ok? Special nand mounted? Maybe you ask at support@phytec.de
Jan

> bye
> Norbert
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

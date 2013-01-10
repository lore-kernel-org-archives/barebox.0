Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f45.google.com ([209.85.160.45])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtG7R-000340-VC
 for barebox@lists.infradead.org; Thu, 10 Jan 2013 11:16:22 +0000
Received: by mail-pb0-f45.google.com with SMTP id mc8so239773pbc.18
 for <barebox@lists.infradead.org>; Thu, 10 Jan 2013 03:16:20 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Thu, 10 Jan 2013 19:14:28 +0000
Message-ID: <2434156.f1v0Lr0KEV@yiqingliang-pc>
In-Reply-To: <201301101100.54062.jbe@pengutronix.de>
References: <1974332.EjF16fPj1U@yiqingliang-pc>
 <1982990.BKj08KPbd8@yiqingliang-pc> <201301101100.54062.jbe@pengutronix.de>
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
Subject: Re: about s3c2442
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thursday, January 10, 2013 11:00:53 AM Juergen Beisert wrote:
> Hi Yi,
> 
> Yi Qingliang wrote:
> > On Thursday, January 10, 2013 10:14:07 AM Juergen Beisert wrote:
> > > Yi Qingliang wrote:
> > > > On Thursday, January 10, 2013 09:36:36 AM Juergen Beisert wrote:
> > > > > Yi Qingliang wrote:
> > > > > > 	I'm using barebox (based on mini2440) on my s3c2442 board,
> > > > > > 
> > > > > > 1. flash barebox into nand: can't start normally, but can see
> > > > > > early
> > > > > > output on serial.
> > > > > > 2. load it in sdram: can start normally into shell, and then I use
> > > > > > it to boot kernel (also in sdram, also based on mini2440).
> > > > > > the kernel hang, no output.
> > > > > > 
> > > > > > after dig into it, I found something: add "mem=64M" into the
> > > > > > kernel
> > > > > > paramer, then the kernel can start.
> > > > > > 
> > > > > > BUT:
> > > > > > the barebox doesn't pass that paramert to kernel for mini2440,
> > > > > > why the mini2440 kernel can start normally?
> > > > > > 
> > > > > > how does the kernel on 2440 get the sdram size?
> > > > > 
> > > > > There is no autodetection possible. Take a look into
> > > > > the "arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S": This is
> > > > > the
> > 
> > I found it,
> > but:
> > md 0x48000028
> > 48000028: 000000b2 (represents is 128)
> > it looks like the lowlevel_init is not executed, what's the problem.
> 
> Is the symbol "CONFIG_MACH_DO_LOWLEVEL_INIT" enabled in your config?
enabled already, but when loaded in sdram, the barebox skipped the sdram init 
code. am i right?
> 
> Regards,
> Juergen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

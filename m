Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f45.google.com ([209.85.210.45])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TnjQE-0004jP-UB
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 05:20:55 +0000
Received: by mail-da0-f45.google.com with SMTP id w4so3688065dam.4
 for <barebox@lists.infradead.org>; Tue, 25 Dec 2012 21:20:53 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Wed, 26 Dec 2012 13:19:17 +0000
Message-ID: <2786267.Y4VEj3id9O@yiqingliang-pc>
In-Reply-To: <20121226045446.GB7402@sapphire.tkos.co.il>
References: <1821617.xX1s1XDOX9@yiqingliang-pc>
 <20121226045446.GB7402@sapphire.tkos.co.il>
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
Subject: Re: nand problem on mini2440
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org


On Wednesday, December 26, 2012 06:54:46 AM Baruch Siach wrote:
> Hi Yi,
> 
> On Wed, Dec 26, 2012 at 10:22:03AM +0000, Yi Qingliang wrote:
> > I'm using mini2440 and barebox.
> > 
> > I have flashed barebox using jtag, and can boot coreectly.
> > 
> > then enter barebox shell, use command
> > tftp zImage.bin /dev/nand0.kernel.bb
> > to flash kernel, but no success.
> > 
> > I can see the progress bar, and exit correctly.
> > but the flash still hold the old kernel, (use 'bootz /dev/nand0.kernel.bb'
> > can boot the kernel).
> > 
> > any idea? thanks!
> 
> Did you erase /dev/nand0.kernel.bb before writing zImage.bin into it?

Oh, my fault. OK now! thanks!

> baruch

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

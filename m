Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=sivan.tkos.co.il)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tnj12-0003ZI-I3
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 04:54:54 +0000
Date: Wed, 26 Dec 2012 06:54:46 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20121226045446.GB7402@sapphire.tkos.co.il>
References: <1821617.xX1s1XDOX9@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1821617.xX1s1XDOX9@yiqingliang-pc>
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
To: Yi Qingliang <niqingliang2003@gmail.com>
Cc: barebox@lists.infradead.org

Hi Yi,

On Wed, Dec 26, 2012 at 10:22:03AM +0000, Yi Qingliang wrote:
> I'm using mini2440 and barebox.
> 
> I have flashed barebox using jtag, and can boot coreectly.
> 
> then enter barebox shell, use command
> tftp zImage.bin /dev/nand0.kernel.bb
> to flash kernel, but no success.
> 
> I can see the progress bar, and exit correctly.
> but the flash still hold the old kernel, (use 'bootz /dev/nand0.kernel.bb' can 
> boot the kernel).
> 
> any idea? thanks!

Did you erase /dev/nand0.kernel.bb before writing zImage.bin into it?

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

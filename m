Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsAqE-0007jB-SY
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 09:17:04 +0000
Date: Wed, 23 Feb 2011 11:16:52 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110223091652.GA339@jasper.tkos.co.il>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00AF4@SRV-VS06.TELEVIC.COM>
	<20110223090310.GG7381@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110223090310.GG7381@pengutronix.de>
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
Subject: Re: booting kernel(s)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Vanalme Filip <F.Vanalme@TELEVIC.com>

Hi Sascha, Vanalme,

On Wed, Feb 23, 2011 at 10:03:10AM +0100, Sascha Hauer wrote:
> On Tue, Feb 22, 2011 at 02:15:46PM +0100, Vanalme Filip wrote:
> > I guess, when
> > the first bootm command fails (due to corrupt image), it will execute
> > the second one. If the first command is successful, the Linux kernel
> > takes over and the second command gets never executed. Am I right ?  I
> > think I can do the same thing in my Barebox's boot script, can I ? Or
> > are there other/better solutions to handle this ?
> 
> This fails when the first kernel has a valid checksum but fails to start
> maybe because of a corrupt rootfs. But there are currently no general
> solutions for this.

A partial solution is to use initramfs (see the kernel 
Documentation/filesystems/ramfs-rootfs-initramfs.txt). You can mount your 
rootfs from the /init script of the initramfs. Then, if mount fails because of 
a corrupt rootfs, you can mount your rescue rootfs instead, or just run 
whatever rescue application you want directly from initramfs.

Another partial solution is a to use a hardware watchdog, and a userspace 
watchdog ping process. Then, upon boot you may check whether this is a normal 
power-on reset or a watchdog reset, and load the appropriate kernel.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

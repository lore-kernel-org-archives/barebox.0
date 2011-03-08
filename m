Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail7.tpgi.com.au ([203.12.160.103])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwpap-0007JX-VC
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 05:36:25 +0000
Received: from dev1.localnet (220-244-174-13.static.tpgi.com.au
	[220.244.174.13]) (authenticated bits=0)
	by mail7.tpgi.com.au (envelope-from marc@cpdesign.com.au)
	(8.14.3/8.14.3) with ESMTP id p285aGTA027393
	for <barebox@lists.infradead.org>; Tue, 8 Mar 2011 16:36:18 +1100
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 8 Mar 2011 16:35:29 +1100
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
MIME-Version: 1.0
Message-Id: <201103081635.29082.marc@cpdesign.com.au>
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
Subject: Re: iMX35 3stack framebuffer problem
To: barebox@lists.infradead.org

On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
> Hi,
> 
> When using the iMX35 freescale 3stack we are having some issues with the FB
> driver. On device boot we enable the fb using "fb0.enable=1" and then try
> to boot the kernel from nand. The problem is that after the kernel is
> loaded to RAM and extracted the board hangs. If we do not init the fb0
> device but simply boot the kernel it works fine. Trying "fb0.enable=0"
> before booting also did not help.
> Did anyone encounter this issue yet or are we doing something wrong?

Are you using the freescale kernel? It doesn't handle loading the IPU driver 
if the IPU has been enabled previously.. (an IRQ fires before all the driver 
structures have been initialized and crashes)

Cheers,
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

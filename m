Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsBSr-0007xj-34
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 09:56:57 +0000
Received: by wwb29 with SMTP id 29so199641wwb.18
	for <barebox@lists.infradead.org>; Wed, 23 Feb 2011 01:56:55 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00AF4@SRV-VS06.TELEVIC.COM>
	<20110223090310.GG7381@pengutronix.de>
	<20110223091652.GA339@jasper.tkos.co.il>
Date: Wed, 23 Feb 2011 10:56:50 +0100
In-Reply-To: <20110223091652.GA339@jasper.tkos.co.il> (Baruch Siach's message
	of "Wed, 23 Feb 2011 11:16:52 +0200")
Message-ID: <87y657xee5.fsf@macbook.be.48ers.dk>
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
Subject: Re: booting kernel(s)
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Vanalme Filip <F.Vanalme@TELEVIC.com>

>>>>> "Baruch" == Baruch Siach <baruch@tkos.co.il> writes:

 Baruch> A partial solution is to use initramfs (see the kernel
 Baruch> Documentation/filesystems/ramfs-rootfs-initramfs.txt). You can
 Baruch> mount your rootfs from the /init script of the initramfs. Then,
 Baruch> if mount fails because of a corrupt rootfs, you can mount your
 Baruch> rescue rootfs instead, or just run whatever rescue application
 Baruch> you want directly from initramfs.

This only works if mount does a complete rootfs check, which isn't the
case. In the typical situation of a power loss in the middle of an
update, the superblock will normally be valid and you will only discover
the corruption when you start accessing files.

 Baruch> Another partial solution is a to use a hardware watchdog, and a
 Baruch> userspace watchdog ping process. Then, upon boot you may check
 Baruch> whether this is a normal power-on reset or a watchdog reset,
 Baruch> and load the appropriate kernel.

That's imho a better solution, and pretty simply to implement without
any adverse affects on the startup time, whereas the CRC checks do add
to the startup time.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

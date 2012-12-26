Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f42.google.com ([209.85.220.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tngfk-00076y-Od
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 02:24:45 +0000
Received: by mail-pa0-f42.google.com with SMTP id rl6so4681739pac.1
 for <barebox@lists.infradead.org>; Tue, 25 Dec 2012 18:24:41 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Wed, 26 Dec 2012 10:22:03 +0000
Message-ID: <1821617.xX1s1XDOX9@yiqingliang-pc>
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
Subject: nand problem on mini2440
To: barebox@lists.infradead.org

Hi, All!

I'm using mini2440 and barebox.

I have flashed barebox using jtag, and can boot coreectly.

then enter barebox shell, use command
tftp zImage.bin /dev/nand0.kernel.bb
to flash kernel, but no success.

I can see the progress bar, and exit correctly.
but the flash still hold the old kernel, (use 'bootz /dev/nand0.kernel.bb' can 
boot the kernel).

any idea? thanks!

Yi Qingliang
Nanjing Jilong


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

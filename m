Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f51.google.com ([209.85.160.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtCFv-0005Kf-NX
 for barebox@lists.infradead.org; Thu, 10 Jan 2013 07:08:52 +0000
Received: by mail-pb0-f51.google.com with SMTP id ro12so137609pbb.24
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2013 23:08:50 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Thu, 10 Jan 2013 15:07:04 +0000
Message-ID: <1974332.EjF16fPj1U@yiqingliang-pc>
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
Subject: about s3c2442
To: barebox <barebox@lists.infradead.org>

Hello,
	I'm using barebox (based on mini2440) on my s3c2442 board,
1. flash barebox into nand: can't start normally, but can see early output on 
serial.
2. load it in sdram: can start normally into shell, and then I use it to boot 
kernel (also in sdram, also based on mini2440).
the kernel hang, no output.

after dig into it, I found something: add "mem=64M" into the kernel paramer, 
then the kernel can start.

BUT:
the barebox doesn't pass that paramert to kernel for mini2440,
why the mini2440 kernel can start normally?

how does the kernel on 2440 get the sdram size?

THANKS!

Nanjing Jilong
Yi Qingliang

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OUWXK-0001cp-0T
	for barebox@lists.infradead.org; Fri, 02 Jul 2010 03:03:31 +0000
Received: by bwz20 with SMTP id 20so1547787bwz.36
	for <barebox@lists.infradead.org>; Thu, 01 Jul 2010 20:03:27 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Jul 2010 05:03:27 +0200
Message-ID: <AANLkTil-pLayTps_sfU1fURx3MrgFTvnaABgP5QSfn9h@mail.gmail.com>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
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
Subject: Novice questions
To: barebox@lists.infradead.org

Hello all

I'm trying write some code into barebox and  I have seen things that
caught my attention.

1.- Modules on barebox. lsmod, insmod commands, EXPORT_SYMBOL() macro.
What is the purpouse of these ? Modules have no means less memory
footprint ;-??
2.- usb command is on drivers/usb/usb.c file. What is the reason why
it is not on commands dir?
3.- What is the purpouse of usb command. Discover devices but after I
can't read because I have not drivers associates to them. Actually, is
there any way to read them?
4.- Does anyone use the usb for anything other than firmwarize the
device with DFU?

Thanks in avance

-- 
jlz.3008  a t  gmail.com
Linux Counter 172551

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

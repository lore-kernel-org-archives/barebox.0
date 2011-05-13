Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from dinosaur.yandex.ru ([77.88.34.8])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QKsSu-0002nZ-QP
	for barebox@lists.infradead.org; Fri, 13 May 2011 13:31:38 +0000
Received: from [87.250.249.239] (dhcp249-239.yandex.net [87.250.249.239])
	by dinosaur.yandex.ru (Postfix) with ESMTP id A06572E825
	for <barebox@lists.infradead.org>; Fri, 13 May 2011 17:31:32 +0400 (MSD)
Message-ID: <4DCD32B4.9090606@yandex-team.ru>
Date: Fri, 13 May 2011 19:31:32 +0600
From: Alexey Galakhov <agalakhov@yandex-team.ru>
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
Subject: loadb and loady do not work
To: barebox@lists.infradead.org

Hi,

I just switched from u-boot to barebox on a MINI2440 board and found
that I'm unable to use both loadb and loady. I used loady with u-boot
and it worked fine. Looks like barebox does not listen to the incoming data.

mini2440:/ loady -c
## Ready for binary (ymodem) download to 0x00000000 offset on image.bin
device at 115200 bps...
C
*** file: uImage
sb -vv uImage
Sending: uImage
Ymodem sectors/kbytes sent:   0/ 0kRetry 0: NAK on sector
Retry 0: NAK on sector
Retry 0: NAK on sector
Retry 0: NAK on sector
(etc up to timeout)

mini2440:/ loadb -c
## Ready for binary (kermit) download to 0x00000000 offset on image.bin
device at 115200 bps...

*** file: uImage
gkermit -iXvs uImage
G-Kermit CU-1.00, Columbia University, 1999-12-25
Escape back to your local Kermit and give a RECEIVE command.

KERMIT READY TO SEND...
-
*** exit status: 1

I tried to debug it by adding a simple echo test and I think I found the
problem. tstc() may return false even if there are bytes in input
buffer. Thus getc() may sleep even if the buffer is full!

--
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSXoW-0000y0-NU
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 18:42:25 +0000
Received: from beldin (unknown [IPv6:2a01:e35:2f37:a360:e088:9f04:3111:39ad])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 98CEB940156
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 19:42:19 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun, 28 Oct 2012 19:42:18 +0100
Message-ID: <87k3uawi9h.fsf@free.fr>
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
Subject: sandbox and tty input/output
To: barebox@lists.infradead.org

Hi all,

I wanted to test a bit my barebox over a serial line.
I compiled sandbox defconfig on my x86 laptop, and executed it in 2 manners :
 - "</dev/ttyUSB0 ./barebox >/dev/ttyUSB0"
 - ./barebox -I /dev/ttyUSB0 -O /dev/ttyUSB0

I connect on the other end of /dev/ttyUSB0 a serial port and try to type some
commands, or see the "barebox:" prompt : no luck.

The first command gives back nothing (I still have to check my serial line).
The second command does a "panic, out of memory".

Has anybody tried to use sandbox over a tty line and can he give me a recipee to
speed up my work ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

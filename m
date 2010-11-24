Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PLEcr-00057F-Hl
	for barebox@lists.infradead.org; Wed, 24 Nov 2010 12:39:06 +0000
Received: by qwc9 with SMTP id 9so812284qwc.36
	for <barebox@lists.infradead.org>; Wed, 24 Nov 2010 04:39:03 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 24 Nov 2010 13:39:03 +0100
Message-ID: <AANLkTi=JJf6HyktGrsS5gscd3Yf1wc2Ef2Bb8hbrmEqd@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: RFC: change map_base type
To: barebox@lists.infradead.org

Hi,

fist sparse patches was accepted but doesn't fix all problems.

There is still a lot of sparse problems which complain about incorrect type
in functions read(bwl)/writ(bwl). Over whole codebase to this
functions are passed
u_long or u_int types which is not correct.

e.g. in serial drivers is used for access to registers:
writeb(0x07, dev->map_base + UFCON);

In my opinion it make no sense to use:
writeb(0x07, IOMEM(dev->map_base + UFCON));

Instead change map_base type in include/driver.h to void __iomem *map_base
which should fix a lot sparse problems.
Then only board code when device is initialized use: .map_base =
IOMEM(0x00000...)

Make it sense or there is not necessary to touch it or other way?

Thanks for comments,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

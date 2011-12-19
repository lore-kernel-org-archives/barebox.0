Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rcd9t-00072Q-S4
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 13:21:38 +0000
Received: from beldin.local (unknown
 [IPv6:2a01:e35:2f37:a360:ea11:32ff:fe70:ee3e])
 by smtp1-g21.free.fr (Postfix) with ESMTP id D4F0B940364
 for <barebox@lists.infradead.org>; Mon, 19 Dec 2011 14:21:30 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 14:21:27 +0100
Message-ID: <87fwggelyg.fsf@free.fr>
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
Subject: barebox build error : WATCHDOG_RESET
To: barebox@lists.infradead.org

If think commit fc726402479efc486bbd3fb207e8d21ed0f4581c "remote unused watchdog
header" has left a remaining WATCHDOG_RESET in readline_simple.c ...

rj@beldin:~/mio_linux/barebox$ make
make[1]: `include/generated/mach-types.h' is up to date.
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  SYMLINK include/config.h -> arch/arm/boards/mioa701//config.h
  LD      barebox
lib/built-in.o: In function `readline':
uncompress.c:(.text.readline+0x4c): undefined reference to `WATCHDOG_RESET'

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

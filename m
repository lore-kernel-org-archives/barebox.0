Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR5eS-0004zW-SF
 for barebox@lists.infradead.org; Sun, 06 May 2012 17:53:45 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m31umynwu9.fsf@intrepid.localdomain>
 <20120506171638.GT4141@pengutronix.de>
Date: Sun, 06 May 2012 19:50:14 +0200
In-Reply-To: <20120506171638.GT4141@pengutronix.de> (Sascha Hauer's message of
 "Sun, 6 May 2012 19:16:38 +0200")
Message-ID: <m3bom1yzah.fsf@intrepid.localdomain>
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
Subject: Re: RFC: Force a 2s delay on startup to allow bypassing /dev/env0.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Being able to interrupt before environment processing is a good thing to
> have, the delay though is not acceptable because it would increase the
> boot time on some systems by 400%. It should work without the delay
> aswell.

Actually the delay is a bit problematic for me as well.
Unfortunately the boot code has to initialize the serial port, clearing
the incoming FIFO. This means I can't "queue" the ^C character, barebox
has to wait for it (maybe not for the whole 2 seconds).

Or am I mistaken?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

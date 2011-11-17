Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RR4QF-0000C9-R0
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 16:02:45 +0000
Date: Thu, 17 Nov 2011 17:02:22 +0100 (CET)
From: robert.jarzmik@free.fr
Message-ID: <18d7a66c-b6d8-4f44-b702-cc292da78f05@zimbra1-e1.priv.proxad.net>
In-Reply-To: <20111117154923.GJ27267@pengutronix.de>
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
Subject: Re: Envfs embedded in barebox.bin
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

----- Mail original -----
De: "Sascha Hauer" <s.hauer@pengutronix.de>
> My issue is that while I'm developping my board code, I have no feedback (because no console available).
So you are doing LED debugging? That's brave ;)

That's crazy. It is the method I used to bring this board into the linux kernel, and I still have my good morse over a LED code, with which I debugged early initcalls in the kernel. But that's very very tedious :)

> Most boards have this in the config:
> CONFIG_DEFAULT_ENVIRONMENT=y
> CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/guf-vincell/env"
> This means that the content of defaultenv/ and arch/arm/boards/guf-vincell/env
> is embedded into the binary (common/Makefile) and gets mounted during
> startup (common/startup.c line 113)

Ah, this is the wheel I was speaking of :)
I had missed the "CONFIG_DEFAULT_ENVIRONMENT_GENERIC" part, and I didn't see anything in the linker (as it actually is in a generated .h file ...).

Great, thanks for the info, I just recompiled, and a hexdump shows my environment within barbox.bin.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

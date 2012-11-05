Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVHxi-0000ds-CD
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 08:23:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87zk2xuuds.fsf@free.fr> <87vcdlurvc.fsf@free.fr>
 <20121104225614.GU1641@pengutronix.de>
Date: Mon, 05 Nov 2012 09:23:04 +0100
In-Reply-To: <20121104225614.GU1641@pengutronix.de> (Sascha Hauer's message of
 "Sun, 4 Nov 2012 23:56:14 +0100")
Message-ID: <87r4o8v4pj.fsf@free.fr>
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
Subject: Re: Ramfs and NULL pointer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Both look harmless, so I don't think that the culprit is ramfs itself.
Agreed. Looks rather like someone is filling up with 0 the structure.

> Sorry, no idea. The good news is that due to my compile tests all 544
> commits at least should compile ;)
>
> Do you have some specific command sequence to provoke this?
Well, yes : arch/arm/boards/mioa701/env/bin/init
It's in the boot sequence, before I have a chance of typing a command.

The only special point I see about the script is that for "mtd_env_override"
script, /dev/mtd0.barebox-env is ... full of zeroes.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

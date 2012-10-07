Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKoXi-0004lQ-CX
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:57:07 +0000
Date: Sun, 7 Oct 2012 14:57:01 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121007145701.75a20196.shc_work@mail.ru>
In-Reply-To: <20121007104550.GG1322@pengutronix.de>
References: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121005121204.GP1322@pengutronix.de>
 <20121007140337.b778f85b.shc_work@mail.ru>
 <20121007104550.GG1322@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, 7 Oct 2012 12:45:50 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

...
> And in the driver:
> 
> #define SYSCON		0x100
> 
> 	...
> 	writel(0xdeadbeef, base + SYSCON);
> 	...
You a right, but SYSCON is used not only for UARTs. This register also
used for setup timers, keypad, lcd, spi etc... Just look on bit definitions.
Same I can say about other resisters.
In this case we have some redundancy definitions. I will think about other way.

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

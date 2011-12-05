Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([2a01:e0c:1:1599::13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXXlX-0007Lo-AT
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 12:35:28 +0000
Date: Mon, 05 Dec 2011 13:35:18 +0100 (CET)
From: robert.jarzmik@free.fr
Message-ID: <f086abf0-3160-4970-afb9-2f0e6b84641c@zimbra1-e1.priv.proxad.net>
In-Reply-To: <20111205110232.GB27267@pengutronix.de>
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
Subject: Re: [PATCH V3 3/3] arm/mach-pxa: add mioa701 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

----- Mail original -----
De: "Sascha Hauer" <s.hauer@pengutronix.de>
> I thought the udc driver currently does not work with mmu enabled
because it does not have any dma operations.

Oh, it does work, with and without MMU, and is fully PIO based, no DMA or IRQ.
When I first wrote it for the linux kernel, it was already PIO based. I only
made a small port for barebox :)

The only thing which should be amended later is in the gadget layer, where g_serial.use_acm variable should be configurable by board code, but that's not related to any MMU issue.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

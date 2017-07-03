Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS44o-0005Gx-Ur
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 16:19:56 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id E27B820028
 for <barebox@lists.infradead.org>; Mon,  3 Jul 2017 18:19:23 +0200 (CEST)
Date: Mon, 3 Jul 2017 18:19:22 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170703161922.GA24614@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Observations with AT91SAM9263-EK
To: barebox@lists.infradead.org

Hi all.

I recently purchased an AT91SAM9263-EK from ebay and
have played around a little with barebox.
For now only some observations.

I had the impression that I could
drop AT91BootStrap when using barebox.

But I could not make it boot until I deployed 
at91bootstrap (named BOOT.BIN) on the SD-card.
And I named arch/arm/pbl/zbarebox.bin => u-boot.bin
on the SD-card.

I wanted to boot barebox - but nothing happened.
So I tried older versions af barebox:

v2017.06.0 => Boots OK (did not try to load a kernel)

v2017.07.0 => Boots but emits:
NULL pointer dereference at address 0x00000014
### Please RESET the board ###
(A bit more was written to the serial console)

master from git => Nothing written to the console at all

I will as time permits dig deeper into this.
Seems like we are facing two bugs:
One that causes the NULL pointer, and another that
prevents any output.

As barebox is quick to build and the bug is simple to spot
I will likely just try to bisect and see where I end up.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

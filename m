Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqD2N-0006a4-J9
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 05:08:24 +0000
Received: by mail-wm0-x243.google.com with SMTP id y144so10559508wmd.0
 for <barebox@lists.infradead.org>; Tue, 12 Apr 2016 22:08:02 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 12 Apr 2016 22:08:01 -0700
Message-ID: <CAKu_b=KWS1Jce4gW+eSNzHX4SceEDPFKOfM4pxyTxBy1ZD8g7w@mail.gmail.com>
From: Jason Cobham <cobham.jason@gmail.com>
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
Subject: imx53 memory detection
To: barebox@lists.infradead.org

Support for Barebox on the Digi connectcore imx53 board stopped
working recently. I believe the memory detection never worked properly
to begin with. I've re-factored lowlevel.c to match similar mx53
boards, however the ram size is always detected incorrectly. I have a
reliable way of detecting the board memory size in device_initcall.

I've tried adding mem_initcall/arm_add_mem_device() however mmu
support causes a panic when enabled. without mmu support enabled, the
board boots with the correct memory size however I get an error,
"Cannot request SDRAM region for stack".

I've tried to use the freescale loco/qsb as a template since the digi
board is similar, but I don't see where it's memory size is defined. I
assume it's automatically detected.

If my board can't be automatically detected, what's a typical way to
setup memory on this type of board?

Thanks,
Jason

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

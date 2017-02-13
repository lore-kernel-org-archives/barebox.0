Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cdIKZ-0003AR-OL
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 15:14:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 54DB7A00233
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2017 16:14:07 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Message-ID: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
Date: Mon, 13 Feb 2017 16:13:48 +0100
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox PBL question
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I would like to add SPL support for the RK3288 SoC to barebox. But I am
facing
a few problems.

The maximum size of the SPL image which the ROM code will read is 32KB.
I was thinking to use the PBL feature for the SPL part. But using the
the pbl code (with decompression) seems to be not a good idea, because
it's size
is already about 30K. I think this is an overhead.

But now I wonder how to generate two different images with a single build.
A SPL image, which should not exceed 32K and a barebox.

I have problems to fully understand the PBL mechanism.
Why are the builds always adding the barebox.bin images to the PBL part?

Here is an example, cat .zbarebox.cmd

ld -EL  -Map arch/arm/pbl/zbarebox.map --gc-sections -static -o
arch/arm/pbl/zbarebox -e pbl_start -T arch/arm/pbl/zbarebox.lds
--start-group  common/built-in-pbl.o [...]  arch/arm/pbl/piggy.shipped.o
--end-group

piggy.shipped.o is barebox.bin, which is added in piggy.shipped.S:

.incbin "arch/arm/pbl/piggy.shipped"

So my question is, how do I generate a seperate PBL image without the
piggy stuff?
My SPL code for RK3288 should just init the SDRAM an then jump back to
ROM code to load the barebox.

Regards,
Wadim

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

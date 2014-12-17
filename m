Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x232.google.com ([2607:f8b0:4001:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1KrW-0006Js-4T
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 20:06:23 +0000
Received: by mail-ig0-f178.google.com with SMTP id hl2so9608774igb.17
 for <barebox@lists.infradead.org>; Wed, 17 Dec 2014 12:05:58 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 17 Dec 2014 15:05:58 -0500
Message-ID: <CAO6XYUuZuSt7dNUq_EH_nc8_E9-o=fMu702sJSQcvBn4O83Fdg@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: imx6: Nand flash BB erase issue/question...
To: barebox@lists.infradead.org

I have run into an issue that I wonder if anyone else has seen.

We have our kernel stored in NAND flash and have it partition and have
the nand0.kernel and nand0.kernel.bb entries.

As I understand it, the nand0.kernel.bb entry is the correct one to
use for day to day operations as it handles bad blocks.

The issue comes when I try erasing the kernel prior to updating it on
a SOM with a known bad block inside the kernel area.

Doing an erase of nand0.kernel works fine and skips the bad block.

Doing an erase of nand0.kernel.bb however generates an error message:

nand: nand_erase_nand: attempt to erase a bad block at page
0x00000bc0

It then exits with an "erase: I/O error".

Specifically, it looks like an attempt to erase a .bb device calls
nand_erase_nand() (in nand_base.c) which then uses
nand_block_checkbad() to determine if the block is bad and then just
generates an error exit rather than attempting to skip the bad block.

To me, this seems wrong.

Shouldn't an attempt to erase a .bb NAND device actually HANDLE the
bad blocks by skipping them rather than simply erroring out?

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH4S4-0003eI-7K
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 10:07:17 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991063AbeJ2KHDprCKb (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Mon, 29 Oct 2018 11:07:03 +0100
Date: Mon, 29 Oct 2018 11:07:02 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181029100702.GA7947@lenoch>
References: <20181028211947.GA14788@lenoch>
 <20181028212213.GD14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028212213.GD14788@lenoch>
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
Subject: Re: [PATCH 03/16] mtd: nand: hide in-memory BBT implementation details
To: barebox@lists.infradead.org

On Sun, Oct 28, 2018 at 10:22:13PM +0100, Ladislav Michl wrote:
> Linux commit b32843b772db adapted for Barebox:

Hmm, there's something fishy with markgood functions (trying different board).
Debugging now...

>   nand_base.c shouldn't have to know the implementation details of
>   nand_bbt's in-memory BBT. Specifically, nand_base shouldn't perform the
>   bit masking and shifting to isolate a BBT entry.
> 
>   Instead, just move some of the BBT code into a new nand_markbad_bbt()
>   interface. This interface allows external users (i.e., nand_base) to
>   mark a single block as bad in the BBT. Then nand_bbt will take care of
>   modifying the in-memory BBT and updating the flash-based BBT (if
>   applicable).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gnudd.com ([77.43.112.34])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhltP-0000oI-2a
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 21:59:59 +0000
Date: Thu, 1 Oct 2015 23:59:36 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20151001215936.GA1121@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151001214801.GA731@mail.gnudd.com>
References: <20151001214801.GA731@mail.gnudd.com> 
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
Subject: Re: [PATCH] at91sam9x5: for ROM base address (bugfix for nand ECC)
To: barebox@lists.infradead.org
Cc: scaglia@amelchem.com, braghiroli@amelchem.com

> Subject: [PATCH] at91sam9x5: for ROM base address (bugfix for nand ECC)

Argh! After a lot of editing, the subject line is wrong.

   fix ROM base address (bugfix for nand ECC)

Anyways, let me add this detail.  The current code considers the
case where dev_request_mem_region() fails.

        host->pmecc_rom_base = dev_request_mem_region(dev, 3);
        if (!host->pmecc_rom_base) {
                   [...]

What it does in "[...]" is creating the tables with proper math..  I
tried to skip the request_mem_region() above and ECC works perfectly,
with the software-generated table.

So I wonder whether it makes sense to just remove the declaration of
the ROM are memory-region-3 for NAND, and just use the software-built
tables.

This wouldn't void the previous patch: the ROM address is wrong
as defined, for all CPU types that fall under "at91sam9x5" (I checked
the 5 data sheets: G15, G35, X25, G25, X35).

thanks
/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

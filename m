Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTpYp-00047K-QU
 for barebox@lists.infradead.org; Wed, 09 Oct 2013 08:56:04 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 9 Oct 2013 10:55:36 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F2D3CF50A@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ECF0A3DAA@SRV-VS06.TELEVIC.COM>
 <20130614070213.GA13398@x61s.8.8.8.8>
In-Reply-To: <20130614070213.GA13398@x61s.8.8.8.8>
Content-Language: en-US
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
Subject: RE: NAND + imx53, BBT/timings?
To: Alexander Aring <alex.aring@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Alexander Aring [mailto:alex.aring@gmail.com]
> Sent: vrijdag 14 juni 2013 9:02
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: NAND + imx53, BBT/timings?
> 
> Hi,
> 
> On Thu, Jun 13, 2013 at 09:09:11AM +0200, Vanhauwaert Wouter wrote:
> > Hi all,
> >
> > I'm working on a custom design which has an imx53 and a 1GB NAND flash
> (Samsung k9k8g08u0d) via an 8 bit bus.
> > So I added this imx_nand_platform_data structure with a .width=1, .hw_ecc=1
> and .flash_bbt=1.
> > The flash gets detected at startup (also loads the bootloader from it).
> >
> > nand: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V
> > 8-bit), page size 2048, OOB size:64 but then
> > nand: Bad block table not found for chip 0
> > nand: Bad block table not found for chip 0
> >
> > etc
> >
> > and when I do imx_nand_bbm, I get:
> > Bad eraseblock 0 at 0x00000000
> > Bad eraseblock 1 at 0x00020000
> > And for the rest UnCorrectable RS-ECC errors
> >
> > This is a barenew flash, so I suppose I should find a factory bad block table?
> No, this is a another bad block table. [1] You need to generate the bbt.
> Factories only marks block as bad(with an mark pattern).
> 
> > I'm using the barebox 2013.05.1 stable release from git
> >
> 
> You can "try" to generate a bbt when you generate a nand bad block aware
> device, nand command "nand -a", then run "nandtest -t -m /dev/nand#.bb" to fill
> this bbt with "current" badblocks.
> 
> I don't know if this generates a bbt for you. But give it a try, I think it should do :/
> 
> [1] http://www.linux-mtd.infradead.org/tech/mtdnand/x144.html

No, that did not what I expected

In the meantime, I merged with v2013.10 but still have these issues...

Imx_nand_bbm gives me:
UnCorrectable RS-ECC Error
UnCorrectable RS-ECC Error
UnCorrectable RS-ECC Error
UnCorrectable RS-ECC Error

And 
erase /dev/nand0 gives me:
erase: I/O error

What is happening? 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

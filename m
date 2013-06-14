Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UnNys-0007yK-7Q
 for barebox@lists.infradead.org; Fri, 14 Jun 2013 06:59:31 +0000
Received: by mail-wi0-f178.google.com with SMTP id k10so155185wiv.11
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2013 23:59:05 -0700 (PDT)
Date: Fri, 14 Jun 2013 09:02:15 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130614070213.GA13398@x61s.8.8.8.8>
References: <E78BBE677EB9144B8F0A0A29674CD5338ECF0A3DAA@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ECF0A3DAA@SRV-VS06.TELEVIC.COM>
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
Subject: Re: NAND + imx53, BBT/timings?
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On Thu, Jun 13, 2013 at 09:09:11AM +0200, Vanhauwaert Wouter wrote:
> Hi all,
> 
> I'm working on a custom design which has an imx53 and a 1GB NAND flash (Samsung k9k8g08u0d) via an 8 bit bus.
> So I added this imx_nand_platform_data structure with a .width=1, .hw_ecc=1 and .flash_bbt=1.
> The flash gets detected at startup (also loads the bootloader from it).
> 
> nand: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 8-bit), page size 2048, OOB size:64 
> but then
> nand: Bad block table not found for chip 0
> nand: Bad block table not found for chip 0
> 
> etc
> 
> and when I do imx_nand_bbm, I get:
> Bad eraseblock 0 at 0x00000000
> Bad eraseblock 1 at 0x00020000
> And for the rest UnCorrectable RS-ECC errors
> 
> This is a barenew flash, so I suppose I should find a factory bad block table?
No, this is a another bad block table. [1] You need to generate the bbt.
Factories only marks block as bad(with an mark pattern).

> I'm using the barebox 2013.05.1 stable release from git
> 

You can "try" to generate a bbt when you generate a nand bad block aware
device, nand command "nand -a", then run "nandtest -t -m /dev/nand#.bb" to fill
this bbt with "current" badblocks.

I don't know if this generates a bbt for you. But give it a try, I think
it should do :/

[1] http://www.linux-mtd.infradead.org/tech/mtdnand/x144.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

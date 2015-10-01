Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zhm9p-0005Td-Ht
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 22:16:58 +0000
Date: Fri, 2 Oct 2015 00:16:35 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20151001221635.GB10444@piout.net>
References: <20151001214801.GA731@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151001214801.GA731@mail.gnudd.com>
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
To: Alessandro Rubini <rubini@gnudd.com>
Cc: barebox@lists.infradead.org, Edoardo Scaglia <scaglia@amelchem.com>, Federico Braghiroli <braghiroli@amelchem.com>

On 01/10/2015 at 23:48:01 +0200, Alessandro Rubini wrote :
> From: Edoardo Scaglia <scaglia@amelchem.com>
> 
> The ROM base address in the 9x5 processors lives at 1M, not 4M,
> where SMD is, as defined later in the same file.
> 
> The ROM includes some tables that are used to build error-correction data
> for NAND memory.  By using the wrong address, we get wrong data and
> the result is undetected bit flips (data at 0x408000 is all zeroes).
> 
> Thus, even though our kernel was fixing bit errors in NAND, barebox
> was not fixing them. With UBI (our situation) we got I/O errors because
> the checksum verification for data nodes failed.
> 
> Using the proper address corrects the problem: barebox reports a
> "bitflip" message, consistent with the kernel message for the same
> file, and the files are properly loaded and booted.
> 
> Note: the kernel has the same wrong define, but then the magic number
> 0x00108000 as spelled in arch/arm/boot/dts/at91sam9x5.dtsi is used
> instead of the symbolic name.
> 
> Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
> Signed-off-by: Federico Braghiroli <braghiroli@amelchem.com>
> Signed-off-by: Alessndro Rubini <rubini@gnudd.com>
                     ^
Typo in your name here


-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

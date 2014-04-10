Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WY7uS-0002TP-Dk
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 05:52:26 +0000
Date: Thu, 10 Apr 2014 07:52:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140410055200.GJ27055@pengutronix.de>
References: <20140405230029.876959920a802447aeb9720f@gmail.com>
 <A5DB3EAC-DA3A-4BF2-8C21-7C57B5CF9AAE@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A5DB3EAC-DA3A-4BF2-8C21-7C57B5CF9AAE@reverze.net>
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
Subject: Re: RFC: barebox-x86 as a coreboot payload
To: Michel Stam <michel@reverze.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sun, Apr 06, 2014 at 04:32:19PM +0200, Michel Stam wrote:
> Hello Antony,
> 
> Interesting idea- I wonder if its difficult given that U-boot is
> already supported?
> 
> Personally I have no experience with coreboot, the systems I test on
> are industrial x86 SBCs with their own BIOS. I suppose it is oossible,
> maybe we can borrow code from u-boot.
> 
> Another thing along the sane lines that crossed my mind is EFI support
> for barebox, I wonder if theres interest in that?

I think there is interest in EFI support. It's a good thing to implement
a standard boot concept. It could be used on ARM aswell.
The really bad thing about EFI is that it requires runtime services to
access the EFI variables from the kernel. For this the kernel calls back
into bootloader code. This concept stinks. The kernel should access the
variables natively (With some data structure kernel and bootloader agree
about). I recently heard someone going into that direction, just can't
remember who it was.

> 
> Next on my list is keyboard/VGA, maybe VESA support if I have the
> time. I would like to see a console, possibly a framebuffer driver. No
> idea how difficult that will be.

I don't know either. Do you want to do framebuffer console support
aswell? That might be difficult.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

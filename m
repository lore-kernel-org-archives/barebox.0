Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4kcK-0000oA-9L
 for barebox@lists.infradead.org; Mon, 23 May 2016 07:49:36 +0000
Date: Mon, 23 May 2016 09:49:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160523074914.GO11148@pengutronix.de>
References: <1463785803.15779.60.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463785803.15779.60.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] socfpga: correct start vector when not using extra
 barebox header
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, May 20, 2016 at 11:09:59PM +0000, Trent Piepho wrote:
> The barebox ARM image has a 0x50 byte header that consists of:
> Bytes 0x00 - 0x0a:  Instruction(s) to jump to start of code
> Bytes 0x20 - 0x2f:  Signature and some other data
> The rest of header is basically padding.
> 
> On SocFPGA, the ROM bootloader expects the 2nd stage bootloader
> (barebox) to have a 0x40 byte header with the following fields:
> Bytes 0x40 - 0x4b:  Signature and some other data
> Bytes 0x4c - 0x4f:  Instruction to jump to start of code
> 
> These two headers are compatible, as everything defined in the SocFPGA
> header is at a location that is padding the barebox header.
> 
> socfpga_mkimage has two methods for creating a SocFPGA image.  One method
> prepends an extra 512 byte header to the barebox image, which contains the
> SoCFPGA header described above.  The start vector at 0x4c is hard coded to
> jump to offset 512, where the barebox header's start vector will be.
> 
> socfpga_mkimage can also not prepend this additional header and instead
> modify the barebox header to be SoCFPGA compatible.  But it only writes
> bytes 0x40-0x4b and not the start vector at 0x4c, leaving that word as
> padding.  And so this image will not boot when the ROM bootloader runs it.
> 
> This changes the SoCFPGA header creator to write a correct start vector for
> both methods.  It will create a branch instruction at 0x4c that jumps to the
> start of the barebox image, whether it be at offset 0 or offset 512 (or any
> other location).
> 
> This makes SoCFPGA images without the extra header bootable.
> ---
>  scripts/socfpga_mkimage.c | 29 +++++++++++++++++++++--------
>  1 file changed, 21 insertions(+), 8 deletions(-)

Applied both, thanks

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

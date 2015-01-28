Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOhz-0006A3-EY
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:14:48 +0000
Date: Wed, 28 Jan 2015 10:14:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150128091425.GF12209@pengutronix.de>
References: <1422364499-31437-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422364499-31437-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX6: Fix bad block marker in imx6-bbu-nand handler
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 27, 2015 at 02:14:59PM +0100, Stefan Christ wrote:
> The i.MX6 NAND update handler sets all bytes of OOB data to 0x00 in pages that
> contain the FCB structure currently.  So the first and second byte which is
> used as the manufacturers bad block marker is in the 'bad block' state. A scan
> for factory bad blocks will detect these blocks as bad while they are still ok.
> 
> The barebox issues a scan for factory bad blocks to rebuild the bad block table
> if the NAND is brand new or the last four blocks of flash are erased.
> 
> To fix this problem set the first two bytes of OOB data to 0xFF explicitly.
> 
> There is a potential chance that the bbu handler will mark a real bad block as
> factory good. That's not a problem for the ROM Loader, because the FCB is
> protected by a checksum and the hamming_13_8 encoding. Additionally the current
> implementation of the bbu handler does not check the bad block table or the
> factory bad block marker before writing the FCB at the first page of the first
> and second block.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/mach-imx/imx6-bbu-nand.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied, thanks

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

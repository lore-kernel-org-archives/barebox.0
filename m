Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexMO-0007NF-CA
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:28:42 +0000
Date: Wed, 11 Dec 2019 09:28:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211082838.get52xyp3h4h747a@pengutronix.de>
References: <20191210113833.9461-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210113833.9461-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH v2] firmware: zynqmp-fpga: drop example bin format header
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, thomas.haemmerle@wolfvision.net

On Tue, Dec 10, 2019 at 12:38:33PM +0100, Michael Tretter wrote:
> Avoid the example bitstream header to validate the bitstream that should
> be loaded into the FPGA. The header is mostly 0xFFFFFFFF with a few
> special values at a certain offsets and can be better described with the
> offsets and their magic values.
> 
> As a drive by, this fixes/removes a broken check in the header
> validation. The != operator has a higher precedence than ?: and this
> check should have had parenthesis around the ?: expression:
> 
> 	bin_header[i] != (byte_order == XILINX_BYTE_ORDER_BIT) ?
>               bin_format[i] : __swab32(bin_format[i])
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> Reviewed-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> ---
> Changes in v2:
>  - Fix subject zynmp-fpga -> zynqmp-fpga
> 
>  drivers/firmware/zynqmp-fpga.c | 121 +++++++++++++++++----------------
>  1 file changed, 62 insertions(+), 59 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJwlK-0004kq-Uw
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:31:04 +0000
Date: Tue, 6 Nov 2018 09:30:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106083050.eca7ckspfwjbxgab@pengutronix.de>
References: <20181102150424.24400-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181102150424.24400-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM: socfpga: add lowlevel header with common code
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 02, 2018 at 04:04:20PM +0100, Steffen Trumtrar wrote:
> Apart from the RAM size, all cyclone5-based Socfpga boards use the
> same lowlevel code. Instead of duplicating it for every board, move
> it to mach-socfpga and provide a macro to use it in the boardspecific
> code.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/include/mach/lowlevel.h | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 arch/arm/mach-socfpga/include/mach/lowlevel.h

Nice diffstat ;) Applied, thanks

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

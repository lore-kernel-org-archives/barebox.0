Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWwk-0003GF-FD
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:19:07 +0000
Date: Mon, 3 Feb 2020 09:19:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203081904.lbs2hvjvaosrmrvx@pengutronix.de>
References: <20200203065341.25249-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203065341.25249-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] RISC-V: unbreak built-in dtb
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2020 at 09:53:41AM +0300, Antony Pavlov wrote:
> The commit c5d38e92010174 ("lds: Add and use RO_DATA_SECTION macro")
> consolidates all RO sections link script declaration in the single
> RO_DATA_SECTION macro. So all all individual RO section declarations
> have to be removed from per-arch linker scripts.
> 
> Alas the BAREBOX_CLK_TABLE and the BAREBOX_DTB link script sections
> were not removed from RISC-V linker script making these sections
> declared twice. As a result incorrect __clk_of_table_start and
> __dtb_start addresses are passed to the barebox code therefore
> the RISC-V barebox is completely unusable.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/lib/barebox.lds.S | 4 ----
>  1 file changed, 4 deletions(-)

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

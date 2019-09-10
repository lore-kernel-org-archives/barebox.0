Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gnx-0005jj-9a
 for barebox@lists.infradead.org; Tue, 10 Sep 2019 14:07:38 +0000
References: <20190717170604.23732-1-a.fatoum@pengutronix.de>
 <20190717170604.23732-6-a.fatoum@pengutronix.de>
 <20190910131512.7u5vmtuvi2i4culs@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <48441ba7-3992-2d4c-be11-46bf4af4db97@pengutronix.de>
Date: Tue, 10 Sep 2019 16:07:34 +0200
MIME-Version: 1.0
In-Reply-To: <20190910131512.7u5vmtuvi2i4culs@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3 5/6] clk: imx6: Fix procedure to switch the parent of
 LDB_DI_CLK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On 9/10/19 3:15 PM, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Wed, Jul 17, 2019 at 07:06:03PM +0200, Ahmad Fatoum wrote:
>> From: Fabio Estevam <fabio.estevam@nxp.com>
>>
>> Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
>> tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
>> enter the ldb_di_ipu_div divider. If the divider gets locked up, no
>> ldb_di[x]_clk is generated, and the LVDS display will hang when the
>> ipu_di_clk is sourced from ldb_di_clk.
> 
> I haven't investigates any further, but this one breaks NAND support at
> least on my phyCORE i.MX6 board. With this patch applied we get:
> 
> MXS: Timeout resetting block via register 0x00112000
> mxs_nand 112000.gpmi-nand@112000.of: probe failed: Connection timed out
> 
> Does this patch disable any clocks necessary for NAND?

Running clk_dump on an i.MX6Q shows the gpmi clocks being sourced from
pll2_pfd2_396m. PFD outputs come out of reset ungated, but since this commit
disable_anatop_clocks() gates them.
Apparently, nothing in barebox ungates them again? The commit is a straight
port from the kernel, so I think there's some other upstream change that is
missing. Any idea?

Cheers
Ahmad
 

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

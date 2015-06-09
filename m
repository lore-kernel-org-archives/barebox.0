Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Gc0-00051z-Pj
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 10:18:30 +0000
Date: Tue, 9 Jun 2015 12:18:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150609101805.GO26575@pengutronix.de>
References: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
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
Subject: Re: Clocks on Barebox
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Jun 01, 2015 at 10:12:55AM +0200, andreas.willig@rafi.de wrote:
> Hi all
> i just updated from 2014 to latest Barebox and hit the following problem:
> of_clk_init from clk.c:451 does not find any entries. matches is set to __clk_of_table start where compatible=0 and data=0,

Do you mean the clk_of_table is empty? Could you post an excerpt from
you barebox.map file containing the __clk_of_table? Here it looks like:

                0x0000000000092178                __clk_of_table_start =
.
 *(.__clk_of_table_*)
 .__clk_of_table_fixed_clk
                0x0000000000092178        0x8 drivers/built-in.o
                0x0000000000092178
__clk_of_table_fixed_clk
 .__clk_of_table_fixed_factor_clk
                0x0000000000092180        0x8 drivers/built-in.o
                0x0000000000092180
__clk_of_table_fixed_factor_clk
 .__clk_of_table_end
                0x0000000000092188        0x8 drivers/built-in.o
                0x0000000000092188
__clk_of_table_sentinel
                0x0000000000092190                __clk_of_table_end = .

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

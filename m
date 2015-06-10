Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Y7T-0003LC-8C
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 05:00:07 +0000
Date: Wed, 10 Jun 2015 06:59:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150610045944.GU6325@pengutronix.de>
References: <20150609101805.GO26575@pengutronix.de>
 <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
 <OF03F48783.387A0F3D-ONC1257E5F.003F03B2-C1257E5F.003F03BA@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF03F48783.387A0F3D-ONC1257E5F.003F03B2-C1257E5F.003F03BA@o0802.rafi.inhouse>
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

On Tue, Jun 09, 2015 at 01:28:17PM +0200, andreas.willig@rafi.de wrote:
> Hi Sascha,
> 
> here my oftables section from barebox.map:
> 
> .oftables       0x278f7bc0       0x18
>                 0x278f7bc0                . = ALIGN (0x8)
>                 0x278f7bc0                __clk_of_table_start = .
>  *(.__clk_of_table_*)
>  .__clk_of_table_end
>                 0x278f7bc0        0x8 drivers/built-in.o
>                 0x278f7bc0                __clk_of_table_sentinel
>  .__clk_of_table_fixed_clk
>                 0x278f7bc8        0x8 drivers/built-in.o
>                 0x278f7bc8                __clk_of_table_fixed_clk
>  .__clk_of_table_fixed_factor_clk
>                 0x278f7bd0        0x8 drivers/built-in.o
>                 0x278f7bd0                __clk_of_table_fixed_factor_clk
>                 0x278f7bd8                __clk_of_table_end = .

And here's the problem. The sentinel entry containing only NULL marks
the end of the array. It should be the last entry, but here it's the
first entry which effectively makes the table empty. It turned out it
was pure luck that the sentinel entry ended up as last entry normally.

I've just sent out a patch fixing this, please test.

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

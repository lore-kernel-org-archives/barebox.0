Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTTFi-00076I-Hx
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:39:07 +0000
Date: Fri, 28 Mar 2014 10:38:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328093844.GF17250@pengutronix.de>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
 <20140328132811.ee85068f4bd2ee0f623c6be2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140328132811.ee85068f4bd2ee0f623c6be2@gmail.com>
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
Subject: Re: [PATCH 0/9] MIPS: add Atheros AR933x SoC & TP-LINK MR3020 board
 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 28, 2014 at 01:28:11PM +0400, Antony Pavlov wrote:
> On Fri, 28 Mar 2014 01:26:35 +0400
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Your latest clk-related changes break build of this patchseries.
> 
> I'll resend this series soon.

I can fold in a fixup into the merge commit which brings together my clk
changes and your mips tree for you, don't worry. I assume you want to have
the CLK_SET_RATE_PARENT flag passed into clk_fixed_factor, right?

I get this when compiling:

drivers/clk/clk-ar933x.c: In function 'ar933x_ref_clk_init':
drivers/clk/clk-ar933x.c:108: warning: unused variable 'err'
drivers/clk/clk-ar933x.c:107: warning: unused variable 'clk'

I have a fix for this locally now. I'll have a look over the patches.
Should they be fine there's nothing to do for you (except checking the
result when I merged it)

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

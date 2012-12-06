Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbkN-0000PG-71
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:44:15 +0000
Date: Thu, 6 Dec 2012 14:44:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121206134413.GX10369@pengutronix.de>
References: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 0/2] clk: pass the 'flags' parameter to clk_fixed()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Dec 06, 2012 at 12:25:34PM +0400, Antony Pavlov wrote:
> The 'flags' parameter make possible creation
> of a 'CLK_ALWAYS_ENABLED' clock without code overhead.
> 
> So it is possible to create clock this way
>  clk_fixed("main_clock", 24000000, 0);
> or that way
>  clk_fixed("main_clock", 24000000, CLK_ALWAYS_ENABLED);
> 
> I can't check my clk_fixed-related changes for ARM-based
> boards, so please consider, do we need CLK_ALWAYS_ENABLED
> in the patch '[RFC 2/2]' or we need '0'.

Nice move to be able to pass the flags to clk_fixed. For this special
clock and flag we won't need it though: The fixed clock by definition
always is enabled. We should rather set this flag unconditionally for
them.

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

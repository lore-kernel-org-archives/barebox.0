Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCPsW-0000Bx-EP
 for barebox@lists.infradead.org; Sun, 09 Feb 2014 08:36:42 +0000
Date: Sun, 9 Feb 2014 09:36:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140209083614.GA17250@pengutronix.de>
References: <1391866056-13133-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391866056-13133-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH RFC] ARM: dove: build multiple pbl images for DT based
 boards
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Sat, Feb 08, 2014 at 02:27:36PM +0100, Sebastian Hesselbarth wrote:
> As my limited Makefile skills are now exhausted, I decided to put this
> on list instead. Maybe somebody can give valuable hints on how to make
> this idea into a smooth, beautiful patch instead.
> 
> What I want to achieve is to have a common pbl entry function for all
> DT based boards of one SoC. For now, let's just talk about Marvell Dove
> here, but on the long run, I'd like to have it also for the other MVEBU
> SoCs. Right now, I guess, each SoC will still have its own "DT board"
> but it could also end up in one board for all MVEBU SoCs..
> 
> Anyway, first of all, I'd summarize status quo from my current
> understanding of how it all works.
> 
> For pbl images, barebox picks up all that is in $(pbl-y) and links it
> up to one .pbl binary. At that point, the entry function and all symbols
> (e.g. __dtb_vendor_board_start) have to be known. The entry function is
> derived from the .pbl filename, e.g. start_my_board.pbl. The dtb symbol
> is generated in dts make process from the dts base name, e.g.
> vendor-board.dts for the symbol above.
> 
> From the .pbl binary then a .pblb is objcopy'd that strips all unused
> symbols. The .bplb is compressed to .pblx and finally passed over to the
> SoC specific image generation, e.g. kwbimage.

All correct.

> 
> Now, for having one board file for a set of selectable dtbs, you would
> need a single entry function name and also a single symbol to access
> the linked dtb at runtime. In the example for Dove below, I have chosen
> start_dove_dt for the entry function and __linked_dtb_start for the
> required dtb.

It's not quite clear to me what you want to archieve or maybe better why
you want to archieve it. Right now there are board specific entry
functions, with 'board' meaning everything that you can't detect during
runtime. So if want to support multiple boards and can detect during
runtime on which one you are on then you can use a single entry
function, detect the board and pass the correct dtb to
barebox_arm_entry. If you can't detect the board then you need different
images, one per board. An image is defined by its entry function. Why do
you want to make the entry function common per SoC? I mean if there's
some SoC specific setup that every board of a SoC type needs, then you
can factor it out to a common function and call mvebu_setup_something()
in each entry function or make a mvebu_barebox_entry like we already
have.
I think the entry functions are short and easy enough to duplicate them
per board. Also it gives you the chance to do board specific quirks very
early without having to #ifdef common code.

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

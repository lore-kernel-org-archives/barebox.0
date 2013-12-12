Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VrCPA-0008Kj-Cq
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 19:58:42 +0000
Date: Thu, 12 Dec 2013 20:58:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212195806.GL24559@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 12, 2013 at 01:49:19PM -0500, Michael Burkey wrote:
> Sascha, thanks for the pointers(especially on the UART and debugging)
> -- I had included the code from your PFLA02 board file but hadn't
> enabled the extra debugging config options.
> 
> The good news is, based on your email, I think I have everything
> right. The bad news is, it still doesn't work! (initial board
> bring-ups are always just SO much fun - NOT) Everything links, no
> error messages or warnings, I get an img file out, etc -- just no luck
> in it actually doing anything. (PS...I am currently booting from SD
> Card but intend on having some things in GPMI NAND eventually)
> 
> Based on this and from Alex's suggestion, I am just going to include
> my actual modified source files in this email/post just in case anyone
> sees anything blindingly obvious.
> 
> Thanks again!
> Michael Burkey
> 

[...]

> 
> ENTRY_FUNCTION(start_variscite_custom)(void)
> {
> 	uint32_t fdt;
> 
> 	__barebox_arm_head();

Remove this. It's already included in the ENTRY_FUNCTION macro.

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

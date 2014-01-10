Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1X10-0002a3-M4
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 08:00:27 +0000
Date: Fri, 10 Jan 2014 09:00:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110080004.GS6750@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <CAJyuEefHk_D6U5Tkrf0CKVfRZ2VSxmfOE4TepG9G1yP9YvF24Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEefHk_D6U5Tkrf0CKVfRZ2VSxmfOE4TepG9G1yP9YvF24Q@mail.gmail.com>
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

On Thu, Jan 09, 2014 at 02:59:33PM -0500, Michael Burkey wrote:
> Sascha,
> 
> Since I am still having issues with the kernel booting -- and needed a
> bit of a break to clear my mind -- I decided to delve into the initial
> barebox bootup from NAND a bit more.
> 
> Correct me if I am wrong, but how I understand things right now...
> 
> The iMX6 requires a BCB header prior to the actual barebox partition
> (e.g. nand0.bootstream). This bootstream partition would contain the
> BCB data specific to the iMX6 (i.e. an FCB and at least a partial
> DBBT).

Yes, right.

> 
> It also looks like this functionality is already present in barebox
> for the MX23/28 series of parts (i.e. the "bcb" command).

Yes.

> 
> I also have the source for kobs-ng v1.3, which does properly generate
> the BCB for the MX6 series (and is what I am currently using to flash
> barebox into NAND).

Yes, kobs works for me aswell on i.MX6

> 
> So, basically, it sounds like what I need to do is migrate the bcb.c
> file from the arm/mach-mxs folder into the MX6 portion of the tree and
> then update it based on the datasheet and the "known good" parameters
> from kobs-ng v1.3 (which look fairly similar to the definitions you
> already have in place for the MX23/28 FCB).
> 
> Does this sound like a reasonable plan of action?

Indeed. I tried Doing that myself, but it didn't work, probably some
little piece was missing. I also started to port the original kobs code
to barebox, but was distracted. I can give you the code I have so far if
you like.

> 
> It really looks like life with the iMX6 would be much easier if I had
> a SPI-NOR on this SOM, instead of NAND only.

Yeah, indeed. I usually recommend our customers to not rely on NAND for
booting.

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

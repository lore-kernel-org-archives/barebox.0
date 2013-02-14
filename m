Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U64FH-0001MQ-FE
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 19:13:24 +0000
Date: Thu, 14 Feb 2013 20:13:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214191321.GY1906@pengutronix.de>
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360775819-5411-1-git-send-email-s.hauer@pengutronix.de>
 <511CB116.8050705@free-electrons.com>
 <20130214113503.GN1906@pengutronix.de>
 <511CEDD4.3020108@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511CEDD4.3020108@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add warning above get_ram_size
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2013 at 02:59:48PM +0100, Maxime Ripard wrote:
> Hi Sascha,
> =

> Le 14/02/2013 12:35, Sascha Hauer a =E9crit :
> > On Thu, Feb 14, 2013 at 10:40:38AM +0100, Maxime Ripard wrote:
> >> Hi Sascha,
> >>
> >> Le 13/02/2013 18:16, Sascha Hauer a =E9crit :
> >>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>> ---
> >>>  common/memsize.c |    3 +++
> >>>  1 file changed, 3 insertions(+)
> >>>
> >>> diff --git a/common/memsize.c b/common/memsize.c
> >>> index d149e41..ef6381b 100644
> >>> --- a/common/memsize.c
> >>> +++ b/common/memsize.c
> >>> @@ -33,6 +33,9 @@
> >>>   * Check memory range for valid RAM. A simple memory test determines
> >>>   * the actually available RAM size between addresses `base' and
> >>>   * `base + maxsize'.
> >>> + *
> >>> + * This function modifies the RAM. Do not use it if you're running f=
rom
> >>> + * the RAM you are going to detect!
> >>>   */
> >>
> >> Actually, I don't see how it modifies the RAM, at least permanently. T=
he
> >> values it erase are backed up, and there's no concurrency at barebox
> >> level, so we are sure that the value saved will still be the one that
> >> would need to be backed up at the end of the function, right?
> > =

> > Yes, it restores the values, but how do you make sure the function does
> > not modify the instructions you are currently executing? You need bad
> > luck to hit this, but sooner or later this will happen.
> =

> Ah, yes, this would be nasty indeed. Is there a way to know the end
> address of barebox into RAM ? or the address it has been loaded to and
> the size of its binary, so that we can just check the part that doesn't
> hold barebox?

See include/asm-generic/sections.h. You have to avoid modifying
everything between _text and __bss_stop. I haven't looked how exactly
get_dram_size works. Normally this function would have to test every
location at a power of 2, that would be:

1 2 4 ... 64MiB 128MiB

It seems you have to make sure that your binary does not cross a power
of 2 boundary, then you should be safe.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjPpJ-00040f-IT
 for barebox@lists.infradead.org; Fri, 14 Dec 2012 07:36:58 +0000
Date: Fri, 14 Dec 2012 08:36:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121214073653.GM10369@pengutronix.de>
References: <1355394405-18814-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355394405-18814-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCHv2 0/3] ARM: cfa10036: Load a different DTB depending on
 variants
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On Thu, Dec 13, 2012 at 11:26:42AM +0100, Maxime Ripard wrote:
> Hi,
> 
> The CFA-10036 is actually a module that can be plugged in an expansion board.
> 
> For now, there is only two of these expansion boards, the CFA-10037 and the
> CFA-10049, with different features, muxing and so on.
> 
> So, at boot time, the cfa-10036 has to be aware that it runs on an expansion
> board and if so, which expansion board it is currently plugged in, so that it
> can load the right device tree.
> 
> This is done thanks to an eeprom found at the same address on the same bus on
> the expansion boards, that holds the expansion board id, so we can know all of
> this.
> 
> This patchset does exactly that. It first adds support for the AT24, and then
> the needed bits to retrieve the board variants from the eeprom if any and load
> the right DTB.
> 
> Thanks,
> Maxime
> 
> Changes from v2:
>   - Changed the environment variable name and change it to a global variable
> 
> Maxime Ripard (3):
>   ARM: cfa10036: Add the AT24HC02 I2C EEPROM
>   ARM: cfa10036: Retrieve the board variant from the AT24
>   ARM: cfa10036: Use the board variant to load a different device tree

Applied, thanks

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

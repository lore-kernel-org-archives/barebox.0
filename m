Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eYrG0-00006F-3z
 for barebox@lists.infradead.org; Tue, 09 Jan 2018 10:35:50 +0000
Date: Tue, 9 Jan 2018 11:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180109103535.k33yvegv2w2t4sp5@pengutronix.de>
References: <20180106210450.GA21127@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180106210450.GA21127@ravnborg.org>
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
Subject: Re: [PATCH v5 0/22] at91: move reset vector to board code
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Jan 06, 2018 at 10:04:50PM +0100, Sam Ravnborg wrote:
> Hi all.
> 
> The following patchset moves the reset vector
> for at91 boards from mach-at91 to board code.
> This is similar to what other boards do and is done to
> prepare for multi-image and DT support.
> 
> The patchset includes removal of the mmccpu board.
> 
> The patchset convert all at91 boards and thus clean up
> the old code that resided in mach-at91/
> 
> The second patch have minimal impact, but prepares for a
> board-by-board conversion.
> All temporary CONFIG symbols are gone at the end of this series.
> 
> I kept Jean-Christophe PLAGNIOL-VILLARD and others
> copyright in all the created files and did not add
> copyright myself. The patchset does IMO not add any
> copyrightable material from my side as this is
> in reality just moving around code.
> 
> With this patchset applied we no longer have any
> places where we call board code from mach-at91/
> thus allowing us to introduce multi-images.
> And we are also on the right track to introduce
> DT support for additional AT91 based boards.
> 
> The patchset was successfully booted on a AT91SAM9263EK,
> and all defconfigs was built (expect the ones that failed
> to build before this patchset was applied).
> 
> I consider the patchset ready for barebox-next.

Applied, thanks.

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

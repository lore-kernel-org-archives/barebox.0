Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggtVN-0004Wb-U6
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 15:41:28 +0000
Date: Tue, 8 Jan 2019 16:41:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190108154123.qnc445qjcqgm43k5@pengutronix.de>
References: <20190106181808.8382-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190106181808.8382-1-sam@ravnborg.org>
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
Subject: Re: [PATCH 0/3] add at91 documentation
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jan 06, 2019 at 07:18:05PM +0100, Sam Ravnborg wrote:
> While working on at91sam9263-ek I started to take a few notes.
> And missing a place to put these notes I ended up adding
> files for the most relevant at91 based boards.
> Following the barebox principle I added one file per board,
> even though most files just list the defconfig file.
> 
> The idea is the it is now easier to add some documentation
> for an existing baord or a new board.
> I also added my ramling for at91sam9263 - so it is saved
> somewhere and maybe useful for someone else in the future.
> 
> Sphinx did not report any warnings - and it looked as expected.
> 
> 	Sam
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> 
> Sam Ravnborg (3):
>       doc: add at91 documentation
>       doc: add additional at91 boards
>       doc: at91sam9263-ek: add notes

Applied, thanks

Sascha

> 
>  Documentation/boards/at91.rst                      |  51 ++++++++
>  .../boards/at91/microchip-at91rm9200-ek.rst        |   8 ++
>  .../boards/at91/microchip-at91sam9260-ek.rst       |   8 ++
>  .../boards/at91/microchip-at91sam9261-ek.rst       |  18 +++
>  .../boards/at91/microchip-at91sam9263-ek.rst       | 132 +++++++++++++++++++++
>  .../boards/at91/microchip-at91sam9g10-ek.rst       |   8 ++
>  .../boards/at91/microchip-at91sam9g20-ek.rst       |   8 ++
>  .../boards/at91/microchip-at91sam9m10g45-ek.rst    |   8 ++
>  .../boards/at91/microchip-at91sam9n12-ek.rst       |   8 ++
>  .../boards/at91/microchip-at91sam9x5-ek.rst        |  10 ++
>  .../boards/at91/microchip-ksz9477-evb.rst          |  11 ++
>  .../boards/at91/microchip-sama5d3-xplained.rst     |   8 ++
>  .../boards/at91/microchip-sama5d3x-ek.rst          |   8 ++
>  .../boards/at91/microchip-sama5d4-xplained.rst     |   8 ++
>  Documentation/boards/at91/somfy-animeo-ip.rst      |   4 +
>  Documentation/boards/at91/telit-evk-pro3.rst       |   9 ++
>  16 files changed, 307 insertions(+)
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

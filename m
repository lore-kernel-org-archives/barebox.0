Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNY2F-0002AG-4i
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 08:00:01 +0000
Date: Thu, 24 Oct 2019 09:59:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191024075951.pibzvf62kswrsnvg@pengutronix.de>
References: <20191023165601.16441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023165601.16441-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/6] Documentation: efi: emphasize watchdog deactivation
 on ExitBootServices
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, Oct 23, 2019 at 06:55:56PM +0200, Ahmad Fatoum wrote:
> The UEFI specification paragraph quoted above notes:
> > The watchdog timer is only used during boot services. On successful
> > completion of ExitBootServices() the watchdog timer is disabled.
> 
> Thus disabling the watchdog is _the_ only proper behavior. Adjust the
> wording accordingly.
> 
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/efi.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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

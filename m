Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gBp-0004p8-5Z
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 08:12:38 +0000
Date: Mon, 2 Mar 2020 09:12:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200302081235.GE3335@pengutronix.de>
References: <20200225165731.12419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225165731.12419-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] USB: MUSB: PHY: scrap singleton am335x_get_usb_phy()
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 25, 2020 at 05:57:30PM +0100, Ahmad Fatoum wrote:
> am335x_get_usb_phy() retrieves the last probed USB phy. On the BeagleBone
> with both PHYs enabled, this means that dependent on probe order, both
> MUSB instances could end up with the same PHY.
> 
> Remove the global variable and have the MUSB driver parse the "phys"
> property instead.
> 
> The cleaner way to achieve this would be to migrate phy-am335x.c
> and phy-am335x-control.c to the generic phy framework and have MUSB use
> of_phy_get, alas, even Linux hasn't done this so far and we need
> a short patch for master anyway, thus just do it the easy way.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

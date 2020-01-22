Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuAz8-0007ID-Hd
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 08:03:36 +0000
Date: Wed, 22 Jan 2020 09:03:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200122080331.a5qmav2gx64x2ds6@pengutronix.de>
References: <20200121104527.14109-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121104527.14109-1-ceggers@arri.de>
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
Subject: Re: [PATCH] param: Make enum param_tristate always visible
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Tue, Jan 21, 2020 at 11:45:27AM +0100, Christian Eggers wrote:
> When disabling CONFIG_SHELL_HUSH, also CONFIG_PARAMETER may be disabled.
> In this case, the definition "enum param_tristate" is not reachable from
> watchdog.h.
> 
> I also considered moving almost everything in watchdog.h inside the
> CONFIG_WATCHDOG guard. But this doesn't work for me because
> drivers/watchdog/imxwd.c can also be built without CONFIG_WATCHDOG.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---

Applied, thanks.

>  @Sascha: I've asked my IT department to stop modifiying my patch
> emails. I hope the mails are ok now.

Yes, this works now, thanks ;)

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

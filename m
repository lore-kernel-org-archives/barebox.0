Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBIE-000695-Lq
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 08:23:19 +0000
Date: Wed, 22 Jan 2020 09:23:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200122082317.3yd6ozssi5szo74h@pengutronix.de>
References: <20200121110241.14724-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121110241.14724-1-ceggers@arri.de>
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
Subject: Re: [PATCH] watchdog: Fix error path
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Tue, Jan 21, 2020 at 12:02:41PM +0100, Christian Eggers wrote:
> In case of an error (e.g. dev_add_param_tristate_ro() returns -ENOSYS),
> device registration must be reverted.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/watchdog/wd_core.c | 30 +++++++++++++++++++++---------
>  1 file changed, 21 insertions(+), 9 deletions(-)

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itS3O-0003GA-5J
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 08:05:02 +0000
Date: Mon, 20 Jan 2020 09:04:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200120080455.dc6l3r2hhfc5w6ez@pengutronix.de>
References: <20200117121249.21227-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117121249.21227-1-ceggers@arri.de>
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
Subject: Re: [PATCH] nvmem: ocotp: Support for i.MX6ULL/ULZ
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

Hi Christian,

On Fri, Jan 17, 2020 at 01:12:49PM +0100, Christian Eggers wrote:
> i.MX6ULL and i.MX6ULZ have only half of the fuses as i.MX6UL
> 
> Linux commit: ffbc34bf0e ("nvmem: imx-ocotp: Implement i.MX6ULL/ULZ
> support")
> 
> Fixes: 1dc748b3b2 ("dts: update to v5.1-rc1")
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---

Your mailer replaces tabs with spaces and does a few other funny things.
I applied manually this time, but please see if you can improve this
next time. git-send-email normally does what you want.

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

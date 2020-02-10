Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14H0-0002Zq-Ml
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 08:18:32 +0000
Date: Mon, 10 Feb 2020 09:18:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200210081828.vyuqngqzfk72ongn@pengutronix.de>
References: <20200207111919.2153-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207111919.2153-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] fixup! imd: add support for checksum
 generation/verification
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 07, 2020 at 12:19:19PM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> CRC32 is now needed for imd, but was selected by accident. In situations
> where barebox is stripped down (e.g. socfpga-xload, where there is no
> environment, globalvars or command_support), barebox won't compile anymore.
> 
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

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

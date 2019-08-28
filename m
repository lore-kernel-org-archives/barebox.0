Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wGC-0006C9-Uf
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 11:37:10 +0000
Date: Wed, 28 Aug 2019 13:37:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828113707.xh6t33zl5nzsyzwe@pengutronix.de>
References: <20190826200207.1009-1-cory.tusar@zii.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826200207.1009-1-cory.tusar@zii.aero>
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
Subject: Re: [PATCH] ARM: zii-vf610-dev: Use CTRL-C as autoboot abort
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Mon, Aug 26, 2019 at 08:02:25PM +0000, Cory Tusar wrote:
> This brings the various VF610-based units in line with other ZII
> platforms.
> 
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  .../zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key

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

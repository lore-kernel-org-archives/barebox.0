Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdzzI-0001kT-70
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 10:05:24 +0000
Date: Wed, 6 Nov 2013 11:05:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131106100502.GM24559@pengutronix.de>
References: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH v3 0/5] GEIP DA923RC board support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 05, 2013 at 03:36:07PM +0000, Renaud Barbier wrote:
> This patch set addresses comments by using the GPIO API
> to set gpio out pins, using the I2C API where necessary
> but still allowing for early I2C access for future early
> configuration.
> 
> This patch set adds support to the GEIP DA923RC extending
> the CPU support to the MPC8544 and allowing the use of the
> DDR driver.
> 
> Renaud Barbier (5):
>   ppc: mpc85xx: mpc8544 support
>   ppc: mpc85xx: define Ethernet port count
>   ppc: mpc85xx: enable DDR driver
>   ppc: DA923RC: add board support
>   ppc: mpc85xx: build directives

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

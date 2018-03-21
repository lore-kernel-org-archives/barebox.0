Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyYjP-0000yV-Gu
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 08:04:25 +0000
Date: Wed, 21 Mar 2018 09:04:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180321080409.dfuhca4jkg6rlxfb@pengutronix.de>
References: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] Add support for kontron samx6i boards
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 19, 2018 at 10:21:18AM +0100, Michael Grzeschik wrote:
> These patches add support for the kontron samx6i smarc modules.
> The memory size gets selected by gpio setup in the lowlevel setup.
> For this we add some lowlevel gpio input functions.
> 
> Michael Grzeschik (2):
>   ARM: i.MX: Add lowlevel gpio input functions
>   boards: samx6: add initial support for kontron samx6i

Applied with your additional whitespace fixup.

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

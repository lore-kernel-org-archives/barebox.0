Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMY8N-0006Bl-0F
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 06:54:39 +0000
Date: Thu, 19 Sep 2013 08:54:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130919065417.GR30088@pengutronix.de>
References: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: Re: [PATCH 0/3] Enable devicetree for Ritmix RZX-50 board
To: Dmitry Smagin <dmitry.s.smagin@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 18, 2013 at 09:20:30AM +0400, Dmitry Smagin wrote:
>   This series of patches enables devicetree using for mips-based
> Ritmix RZX-50 board. Besides that it fixes missing dependency
> and linking error when enabling OF_BAREBOX_DRIVER which actually
> needs ENV_HANDLING to be activated.
> 
> [PATCH 1/3] Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER
> [PATCH 2/3] MIPS: rxz50: add initial devicetree support
> [PATCH 3/3] MIPS: rzx50_defconfig: enable devicetree

Applied with Antonys Ack.

Thanks
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

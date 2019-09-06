Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68Tg-0006D0-4h
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 07:16:17 +0000
Date: Fri, 6 Sep 2019 09:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190906071614.ypr2q2o34zvjfiy4@pengutronix.de>
References: <d41be90a-e2aa-04c8-2ee5-c0bebca1cbf9@pengutronix.de>
 <20190904112450.28168-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904112450.28168-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v4 1/2] elf: add 64 bits elf loading support
To: Clement Leger <cleger@kalray.eu>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Wed, Sep 04, 2019 at 01:24:49PM +0200, Clement Leger wrote:
> From: Clement Leger <clement.leger@kalray.eu>
> 
> This patch add elf64 loading support to the elf loader. Since
> elf32 and elf64 uses completely different types, to avoid copying all
> the code and simply replace elf32 with elf64, use a macro which will
> return the appropriate field for each type of header. This macro
> generates getter for elf structures according to the class of the loaded
> elf.
> All direct elf struct dereference are then replaced by call to generated
> functions. This allows to keep a common loader code even if types are
> different.
> 
> Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
> Changes in V4:
>  - Fix mips elf entry cast to pointer
>  - Add Tested-by Oleksij Rempel

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

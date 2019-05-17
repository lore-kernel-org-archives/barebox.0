Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRWGE-0006VT-IQ
 for barebox@lists.infradead.org; Fri, 17 May 2019 06:22:32 +0000
Date: Fri, 17 May 2019 08:22:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190517062225.yjpbk45uubm6ertp@pengutronix.de>
References: <20190513102805.4326-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513102805.4326-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: i.MX6: add support for Digi CCIMX6UL SBC Pro
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 13, 2019 at 12:28:05PM +0200, Rouven Czerwinski wrote:
> Add support for the Digi CCIMX6UL SBC Pro.
> It is based on the Digi CCIMX6UL SOM with 256MB RAM and 256MB NAND
> flash.
> 
> v2:
> - fix includes
> - rename folder to som
> - switch to compressed dtb
> - remove the unnecessary get_runtime_offset
> all from Ahmad Fatoum
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5olZ-0004vq-Vy
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:41:11 +0000
Date: Mon, 18 Mar 2019 10:41:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318094107.fky5eo2sjmseaszb@pengutronix.de>
References: <20190308105854.10089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190308105854.10089-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] MIPS: add relocation support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 08, 2019 at 11:58:50AM +0100, Oleksij Rempel wrote:
> with this patches, same main binary version of barebox xan be reused
> on different board with different RAM size.
> The barebox will find best possible location for it self depending
> on RAM size information provided by PBL.
> 
> changes v2:
> - don't remove no-pic flag to avoid confusion.
> - don't set ggdb flag for barebox tools.
> 
> Oleksij Rempel (4):
>   MIPS: relocation: pass ram size to pbl_main_entry
>   MIPS: relocation: add relocation support
>   MIPS: relocation: do not use configurable memory layout
>   MIPS: remove request_sdram_region "fdt"

Applied for now. Antony, if you have objections feel free to comment.

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

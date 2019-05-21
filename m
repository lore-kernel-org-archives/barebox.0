Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1MA-000489-NW
 for barebox@lists.infradead.org; Tue, 21 May 2019 09:46:52 +0000
Date: Tue, 21 May 2019 11:46:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190521094648.ueiswga2pdbas6pv@pengutronix.de>
References: <20190520201131.25491-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520201131.25491-1-user@vserver64>
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
Subject: Re: [PATCH] ARM: boards: kindle mx50: adapt MCI name to DTS
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@kbdbabel.org>

On Mon, May 20, 2019 at 08:11:31PM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@kbdbabel.org>
> 
> The MCI instances got aliases in the DTS from linux upstream which changed
> the eMMC devicename e.g. from disk0 to mmc2. Adapt to this.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  Documentation/boards/imx/amazon-kindle-4-5.rst                     | 4 ++--
>  arch/arm/boards/kindle-mx50/board.c                                | 2 +-
>  arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

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

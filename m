Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5o06-0002w5-84
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:52:08 +0000
Date: Mon, 18 Mar 2019 09:52:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318085203.br52emit5bstw5u6@pengutronix.de>
References: <20190317110017.23902-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190317110017.23902-1-user@vserver64>
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
Subject: Re: [PATCH] ARM: Makefile: restore kindle3 imxcfg-y setting
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 17, 2019 at 11:00:17AM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> Commit 45f38c1a846f ("ARM: Makefile: Drop unnecessary imxcfg-y settings")
> dropped the imximg generation for the kindle3. This device is not covered
> within multiimage support and can be configured with kindle3_defconfig.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/Makefile | 1 +
>  1 file changed, 1 insertion(+)

Applied to master, thanks

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

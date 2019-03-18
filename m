Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5nu6-0000x2-8w
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:46:03 +0000
Date: Mon, 18 Mar 2019 09:45:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318084552.soc3pjhpekgjm46p@pengutronix.de>
References: <1552658932-30110-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1552658932-30110-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] mci: imx-esdhc-pbl: initialize is_be
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 15, 2019 at 03:08:52PM +0100, Christian Hemp wrote:
> Initialize is_be, otherwise the value of is_be is undefined.
> So it is possible that the i.MX8 will not boot because the bigendian
> functions are used.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  drivers/mci/imx-esdhc-pbl.c | 2 ++
>  1 file changed, 2 insertions(+)

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVDdx-0005v6-Cu
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 07:00:09 +0000
Date: Fri, 28 Aug 2015 08:59:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150828065947.GB18700@pengutronix.de>
References: <1440665954-2994-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440665954-2994-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx53: vincell: guard board initcall
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 27, 2015 at 10:59:14AM +0200, Lucas Stach wrote:
> Make sure that the initcall only executes on the expected board.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> Sascha, please apply to master. This breaks other boards.

Did that.

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

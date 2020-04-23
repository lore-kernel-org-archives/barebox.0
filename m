Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVwd-0003ER-S1
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 07:06:49 +0000
Date: Thu, 23 Apr 2020 09:06:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200423070645.GY1694@pengutronix.de>
References: <20200422113952.9900-1-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422113952.9900-1-a.schwarzkopf@phytec.de>
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
Subject: Re: [PATCH] common: bootm: Enforce CONFIG_BOOTM_FORCE_SIGNED_IMAGES
 for TEE bins
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 22, 2020 at 01:39:52PM +0200, Albert Schwarzkopf wrote:
> Currently, unsigned TEE binaries can be booted. This patch ensures
> that CONFIG_BOOTM_FORCE_SIGNED_IMAGES is also enforced for TEE
> binaries.
> 
> Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> ---
>  common/bootm.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

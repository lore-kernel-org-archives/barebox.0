Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJCug-0005eN-5Q
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 09:42:43 +0000
Date: Fri, 18 Sep 2020 11:42:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200918094240.GS4498@pengutronix.de>
References: <20200915133630.32511-1-a.schwarzkopf@phytec.de>
 <20200915133630.32511-2-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915133630.32511-2-a.schwarzkopf@phytec.de>
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
Subject: Re: [PATCH 1/1] bootm: Allow loading OP-TEE from FIT image
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 15, 2020 at 03:36:30PM +0200, Albert Schwarzkopf wrote:
> Currently, TEE binaries can only be loaded if CONFIG_BOOTM_FORCE_SIGNED_IMAGES
> is not set. No signature check is being performed on them.
> 
> Allow loading OP-TEE from FIT images. Therefore, now it's possible
> to ensure that only trusted OP-TEE binaries will be loaded by using
> signed FIT images.
> 
> Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> ---
>  arch/arm/lib32/bootm.c | 44 +++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 39 insertions(+), 5 deletions(-)

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

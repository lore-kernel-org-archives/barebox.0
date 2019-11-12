Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUmr-0001xq-Qn
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 11:56:47 +0000
Date: Tue, 12 Nov 2019 12:56:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191112115643.rhqhl5rdgouut5x3@pengutronix.de>
References: <20191107201256.35249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107201256.35249-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: start: check for machine type last
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 07, 2019 at 09:12:56PM +0100, Lucas Stach wrote:
> A valid DTB may reside low in the Barebox binary address map. If this
> binary is started at a very low address, we might mistake the pointer
> for a machine type. Make sure to check for all other possibilities first
> before interpreting the boarddata as a raw machine type.
> 
> Fixes: 19c24e2f0121 (ARM: start: Allow to pass machine type as boarddata)
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/cpu/start.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)

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

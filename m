Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXMgD-0000fU-12
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 04:31:05 +0000
Date: Mon, 16 Mar 2015 05:30:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150316043043.GB24798@pengutronix.de>
References: <1426278224-9538-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426278224-9538-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] net: mvneta: convert to streaming DMA ops
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 13, 2015 at 09:23:44PM +0100, Lucas Stach wrote:
> Move to the common streaming DMA ops in order to get rid of
> the direct usage of the ARM MMU functions for the cache
> maintenance.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> I don't know why I missed this one driver in the big conversion
> series, but the randconfig builder just came around and reminded
> to get my act together.
> 
> Please apply to master.

Did that, thanks

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

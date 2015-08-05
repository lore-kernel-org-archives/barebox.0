Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMtVc-0007HH-Ap
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 07:53:08 +0000
Date: Wed, 5 Aug 2015 09:52:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150805075246.GD18700@pengutronix.de>
References: <1438605671-46880-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1438605671-46880-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v4] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 03, 2015 at 02:41:11PM +0200, Daniel Schultz wrote:
> This tool will help to measure the system performance.
> 
> Some SoCs haven't the possibility to route their clocks to the output pins.
> So you can use dhrystone to get a feedback about the clock speed.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

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

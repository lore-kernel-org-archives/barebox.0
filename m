Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveew-0000s8-RY
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:52:20 +0000
Date: Mon, 18 Feb 2019 09:52:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218085217.ebept7wmi2vmqf77@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
 <20190115103423.5233-3-rhi@pengutronix.de>
 <20190214135157.sy2l2x6re3xspohu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190214135157.sy2l2x6re3xspohu@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] amba: pl011: make locally used functions static
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2019 at 02:51:57PM +0100, Roland Hieber wrote:
> Hi Sascha,
> 
> the other two patches in this series are on master now, but this one
> seems to have fallen through the cracks.

Not really. Your patch indeed isn't applied, but we got the same from
Sam: 864fb024cf ("serial: amba-pl011: fix "no previous prototype for
'pl011_init_port'" warning")

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

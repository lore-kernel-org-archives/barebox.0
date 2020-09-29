Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9OO-0006qW-G3
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 06:45:41 +0000
Date: Tue, 29 Sep 2020 08:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929064538.GO11648@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/7] driver: introduce less error-prone dev_get_drvdata
 alternative
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 05:42:41PM +0200, Ahmad Fatoum wrote:
> We use dev_get_drvdata to get the driver match data associated with a
> device. This has two shortcomings:
> 
>  - Linux has dev_get_drvdata too, which returns a private pointer for
>    driver specific info to associate with a device. We use dev->priv
>    (or more often container_of) for that in barebox instead
> 
>  - It nearly always involves a cast to a double pointer, which is
>    error-prone as size and alignment match need to be ensured
>    on the programmer's part and can easily be gotten wrong:
> 	enum dev_type type
> 	dev_get_drvdata(dev, (const void **)&type);
> 
> Add a new function that instead of using a double pointer argument,
> returns the pointer directly:
> 
>  - For normal pointer driver data, no cast is necessary
>  - For integer driver data casted to a pointer for storage,
>    the cast is still necessary, but

but what?

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

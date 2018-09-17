Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1oJL-0008RR-3Q
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 07:51:12 +0000
Date: Mon, 17 Sep 2018 09:50:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180917075056.GD4097@pengutronix.de>
References: <20180912134550.3970-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180912134550.3970-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH v2 0/7] RATP i2c and GPIO support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: andrew.smirnov@gmail.com, barebox@lists.infradead.org

On Wed, Sep 12, 2018 at 03:45:43PM +0200, Aleksander Morgado wrote:
> This series of patches implements support for i2c and GPIO operations via RATP. 
> 
> It addresses most of the comments from the first series review, except for Sascha's suggestion to implement name resolving for the i2c buses and Andrey's suggestion to prepare a new helper method to initialize the i2c_client structure. I already have a patch for the latter, but will send it for review once these have been accepted and merged, as it's really a bit orthogonal to the whole RATP logic.
> 
> Another different w.r.t. v1 apart from addressing the comments is the review is that I made the RATP i2c support depend on CONFIG_I2C and the RATP GPIO support on CONFIG_GENERIC_GPIO. That was missing, and was breaking build if RATP was selected but no i2c or GPIO support was included in the build.
> 
> Comments welcome!
> 
> Aleksander Morgado (7):
>   ratp: implement i2c read/write support
>   bbremote: implement i2c read/write support
>   ratp: implement support for GPIO commands
>   bbremote: implement support for GPIO operations
>   ratp: use __packed instead of the full form
>   ratp: use pr_ macros to print messages
>   ratp: fix incorrect whitespaces in method calls

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

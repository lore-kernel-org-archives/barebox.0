Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWVd-0003Av-Od
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:51:07 +0000
Date: Mon, 3 Feb 2020 08:51:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203075102.352hymvnxcoiupfn@pengutronix.de>
References: <20200127133043.8012-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127133043.8012-1-ceggers@arri.de>
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
Subject: Re: [PATCH] images: Use separate LDFLAGS for PBL
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Mon, Jan 27, 2020 at 02:30:43PM +0100, Christian Eggers wrote:
> When setting CONFIG_PBL_RELOCATABLE=y (selected by PBL_MULTI_IMAGES) and
> CONFIG_RELOCATABLE=n (trying to reduce image size), the PBL is also
> linked with "-static" instead of "-pie". The result is a non-working
> PBL.
> 
> As a side effect, also get rid of erroneous "-Map barebox.map" when
> linking the PBL.
> 
> Only changed for ARM, are any other platforms affected?

Yes, mips. FIxed up and applied, thanks

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

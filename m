Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJ85-0007K0-0q
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 13:31:16 +0000
Date: Mon, 9 Dec 2019 14:31:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209133110.y53btjurhhxyylpd@pengutronix.de>
References: <20191204160200.4920-1-a.fatoum@pengutronix.de>
 <20191204160200.4920-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204160200.4920-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: introduce imx_image_rule variable for
 code deduplication
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 04, 2019 at 05:01:59PM +0100, Ahmad Fatoum wrote:
> The next patch will add the .imxcfg file as a rule prerequisite, so the
> target is rebuilt if it changes. Instead of duplicating it in all rules,
> factor out the common parts into a imx_image_rule variable.
> 
> No functional change.

Famous last words...

This breaks imx_v8_defconfig build with:

  IMX-IMG images/start_nxp_imx8mq_evk.pblb.pimximg
  image name not given

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

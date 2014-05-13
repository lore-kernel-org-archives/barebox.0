Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk8VH-0004o2-GP
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:56:05 +0000
Date: Tue, 13 May 2014 10:38:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513083838.GM5858@pengutronix.de>
References: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
 <1399897462-21433-3-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399897462-21433-3-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 3/4] ARM: omap: barebox update nand xloadslots handler
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi Wadim,

On Mon, May 12, 2014 at 02:24:21PM +0200, Wadim Egorov wrote:
> +/*
> + * Register an am33xx xload slots update handler
> + */
> +int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
> +						char *devicefile)

You should use char **devicefile, int num_devicefiles to pass the files.
This makes your code simpler and more obvious.

> +{
> +	struct bbu_handler *handler;

You'll need a struct nand_bbu_handler in which you embed struct
bbu_handler to make that work.

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

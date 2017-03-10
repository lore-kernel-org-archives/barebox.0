Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmFIv-00028g-Aj
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 07:49:39 +0000
Date: Fri, 10 Mar 2017 08:49:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170310074915.3ag3qta6gdzzvobn@pengutronix.de>
References: <20170309175832.20213-2-o.rempel@pengutronix.de>
 <20170310060523.25810-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170310060523.25810-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v3 0/3] upstream console_countdown related work
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 10, 2017 at 07:05:20AM +0100, Oleksij Rempel wrote:
> changes v3:
>  - make console_countdown_timeout_abort static bool
> 
> changes v2:
>  - add my Signed-of-by
> 
> Marc Kleine-Budde (3):
>   console_countdown: width to of countdown to 4 digits
>   console_countdown: add possibility to abort countdown by external
>     commands
>   fastboot: abort autoboot timeout when fastboot gadget is activated

Applied, thanks

We might add a patch which adds the -e option to the environment.

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

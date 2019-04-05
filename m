Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hCOFr-0001WU-4x
 for barebox@lists.infradead.org; Fri, 05 Apr 2019 12:47:51 +0000
Date: Fri, 5 Apr 2019 14:47:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190405124732.o7xffzyecfjlbx2v@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
 <20190404145320.11465-2-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190404145320.11465-2-m.tretter@pengutronix.de>
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
Subject: Re: [RFC PATCH 1/7] commands: unify newlines for options
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 04, 2019 at 04:53:14PM +0200, Michael Tretter wrote:
> The BAREBOX_CMD_HELP_OPT macro adds a newline to the string, but users
> of the macro inconsistently add another newline resulting in empty
> newlines for some commands, but not for others. Remove any newline in
> the description and rely on BAREBOX_CMD_HELP_OPT for the formatting.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---

This one is easy. Applied, no need to resend when you have to update
this series.

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

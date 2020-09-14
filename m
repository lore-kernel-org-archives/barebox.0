Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHjui-0003tm-LS
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 08:32:41 +0000
Date: Mon, 14 Sep 2020 10:32:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914083239.GL4498@pengutronix.de>
References: <20200909105446.22379-1-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200909105446.22379-1-a.schwarzkopf@phytec.de>
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
Subject: Re: [PATCH] common: bootm: Add missing check of fit_open_image()
 return code
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 09, 2020 at 12:54:46PM +0200, Albert Schwarzkopf wrote:
> Check the return code of fit_open_image() inside bootm_load_initrd(). 
> Without this check, the code works with undefined values of 
> "initrd_size" and "initrd" should fit_open_image() fail.
> 
> Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> ---
>  common/bootm.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

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

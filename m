Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqq0S-0000L4-06
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:31:24 +0000
Date: Sun, 23 Jun 2013 21:30:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130623193057.GP32299@pengutronix.de>
References: <1371822462-30513-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371822462-30513-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] OMAP4: fix omap4_bootsource regression
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org, vicencb@gmail.com

On Fri, Jun 21, 2013 at 03:47:42PM +0200, Jan Weitzel wrote:
> commit d7a913469c34553e96c887f8a9934bacd794e81c breaks boot source detection
> for pcm049. The tracing vectors shows all tested boot sources, so order is
> important. By not returning but overwriting src we effectively reversed the
> order if more than one flag is set.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied to master and stable/v2013.06

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

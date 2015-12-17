Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9VEa-0006OW-Eo
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 09:52:30 +0000
Date: Thu, 17 Dec 2015 10:52:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151217095204.GB11966@pengutronix.de>
References: <cover.1450267988.git.zahari.doychev@linux.com>
 <046392bf3e5eae8f1de0f482a23ed1691fb0d549.1450267988.git.zahari.doychev@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <046392bf3e5eae8f1de0f482a23ed1691fb0d549.1450267988.git.zahari.doychev@linux.com>
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
Subject: Re: [PATCH] environment: allow saving of symbolic link changes
To: Zahari Doychev <zahari.doychev@linux.com>
Cc: barebox@lists.infradead.org

Hi Zahari,

On Wed, Dec 16, 2015 at 01:24:43PM +0100, Zahari Doychev wrote:
> Currently it is not possible to change symbolic links in the default
> environment. For example if the default environment contains the
> link "current_boot -> mmc" then the following does not work:
> 
> $ rm current_boot
> $ ln net current_boot
> $ saveenv
> 
> After reset the link is still pointing to "mmc" and this error appears:
> 
> "symlink: /env/boot/current_boot -> net : error -17"
> 
> The patch fixes the above problem and moves the "ENV_FLAG_NO_OVERWRITE"
> to enable handling of symbolic links in this case too.
> 
> Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>

Applied, thanks.

BTW for this particular case I would rather recommend using nv
variables, i.e. nv boot.default=net or nv boot.default=mmc; saveenv.

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

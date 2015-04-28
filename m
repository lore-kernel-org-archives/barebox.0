Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YmzQx-0000Rr-Mf
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 06:55:56 +0000
Date: Tue, 28 Apr 2015 08:55:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150428065533.GG6325@pengutronix.de>
References: <1430197974-1394-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430197974-1394-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] linux/amba/bus.h: drop unusable amba_{g,s}et_drvdata
 macros
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 28, 2015 at 08:12:54AM +0300, Antony Pavlov wrote:
> amba_{g,s}et_drvdata macros from linux kernel use
> dev_{g,s}et_drvdata functions.
> 
> But in linux dev_get_drvdata() takes only one argument
> while in barebox dev_get_drvdata() takes two arguments.
> There is no dev_set_drvdata() in barebox at all.
> 
> So amba_{g,s}et_drvdata macros from linux are
> unusable for barebox.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/amba/bus.h | 3 ---
>  1 file changed, 3 deletions(-)

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

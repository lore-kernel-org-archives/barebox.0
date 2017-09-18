Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtqKl-0000WC-OP
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 07:19:13 +0000
Date: Mon, 18 Sep 2017 09:18:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170918071849.dh7wllzdjbp7ffc6@pengutronix.de>
References: <20170915023353.GA6298@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170915023353.GA6298@ubuntu>
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
Subject: Re: Load environment variables earlier
To: zjh <jianhuizhao.329@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 15, 2017 at 10:33:53AM +0800, zjh wrote:
>  think the environment variables should be loaded before the device is registered,
>  so when the device is registered, it can be initialized according to the environment variable.

When devices are influenced by environment variables they must be
prepared that these variables are changed *after* registration. Note
that environment variables are loaded from storage media that are
devices themselves, so that's a catch 22.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0keO-0002zD-M9
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:07:46 +0000
Date: Wed, 19 Apr 2017 10:07:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419080723.cq3cs7djdshvvlgg@pengutronix.de>
References: <20170414101051.GB16849@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170414101051.GB16849@berta>
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
Subject: Re: cp: incorrect behaviour when copying recursively
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Fri, Apr 14, 2017 at 01:10:51PM +0300, Peter Mamonov wrote:
> Hi,
> 
> The "cp -r <src> <dst>" command omits top directory, when the trailing "/" is 
> present in the <src> string. Here is the test case:

I can confirm that. It turned out this is because we used GNU basename
in barebox, but we should use POSIX basename. Please check the series
I just sent out.

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

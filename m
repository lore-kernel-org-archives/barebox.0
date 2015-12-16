Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a99Z0-0002aX-02
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 10:44:06 +0000
Date: Wed, 16 Dec 2015 11:43:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151216104340.GC14356@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
 <1449787121.26955.89.camel@rtred1test09.kymeta.local>
 <1449792460.26955.91.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449792460.26955.91.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] of_path: Fix bug with partitions, simply code
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Dec 11, 2015 at 12:07:34AM +0000, Trent Piepho wrote:
> In commit f72b64815619b41e026dd3eb9d53bf9855f84628 using a path that
> has a partition description broke.

Strange, I don't have this commit. Where is it, could you add the
Subject to this commit?

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

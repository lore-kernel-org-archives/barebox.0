Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU5TC-0007NU-Gx
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 07:50:16 +0000
Date: Tue, 4 Dec 2018 08:49:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181204074958.x6bntw4czthc75ye@pengutronix.de>
References: <20181129134208.5893-1-r.hieber@pengutronix.de>
 <20181203105226.tk633gpq3w2hsdbl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181203105226.tk633gpq3w2hsdbl@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] drivers: caam: add RNG software self-test
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 03, 2018 at 11:52:26AM +0100, Roland Hieber wrote:
> Hi Sascha,
> 
> > +	pr_notice("RNG software self-test passed\n");
> 
> I noticed that you downgraded this to a pr_info() when applying the
> patch, is there a reason?  pr_warn()s have the "WARNING:" prefix,
> pr_notice()s have a "NOTICE:" prefix, but pr_info()s don't have any
> prefix. I think this one should be a pr_notice because it overrides the
> pr_warn("RNG self-test failure detected...") from HAB and tells the user
> that this warning is no longer relevant. With pr_info(), I think it will
> get lost between all the other infos.

I can follow this argumentation, but then I argue we should lower the
priority of the failure detected message to to pr_info or even pr_debug,
because the failure is pretty much expected, it is correctly being
worked around and there's nothing we can do about the failure.

People tend to bother about warnings and ask questions what is wrong.
When everything you can do is to tell that everything is fine then probably
the warning shouldn't be there in the first place.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMazC-0008FZ-EK
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 12:38:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <str@pengutronix.de>) id 1aMayq-0005dp-Jl
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 13:38:20 +0100
Received: from str by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <str@pengutronix.de>) id 1aMayq-0008G9-CJ
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 13:38:20 +0100
Date: Fri, 22 Jan 2016 13:38:20 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20160122123820.GC17901@pengutronix.de>
References: <1453388151-8424-1-git-send-email-s.trumtrar@pengutronix.de>
 <1453388151-8424-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453388151-8424-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] crypto: add i.MX6 CAAM support
To: barebox@lists.infradead.org

Hi!

As I just noticed, the ctrl.c has a bug in one of the timeout loops.
Seems like I will have to send a v3.

Regards,

Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

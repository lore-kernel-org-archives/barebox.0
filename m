Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7d8z-0005lA-FL
 for barebox@lists.infradead.org; Tue, 31 May 2016 06:27:14 +0000
Date: Tue, 31 May 2016 08:26:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160531062649.GA31666@pengutronix.de>
References: <1464598872.269538356@f430.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464598872.269538356@f430.i.mail.ru>
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
Subject: Re: MCI print revision
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Trent Piepho <tpiepho@kymetacorp.com>

+Cc Trent

On Mon, May 30, 2016 at 12:01:12PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Commit dbd7190295298acfb4996ec1aba5165a7be28fdc (mci: Print versions with micro levels correctly)
> seems to be incorrect.
> 
> barebox@Informer:/ mmc0.probe=1
> mmc0: detected SD card version 1.a
> mmc0: registered mmc0

So what's the expected printout and was it correct without this patch?

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

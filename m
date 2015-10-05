Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zj0Zl-0001yc-LK
 for barebox@lists.infradead.org; Mon, 05 Oct 2015 07:52:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Zj0ZP-00046O-VF
 for barebox@lists.infradead.org; Mon, 05 Oct 2015 09:52:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Zj0ZP-0001Y7-0W
 for barebox@lists.infradead.org; Mon, 05 Oct 2015 09:52:27 +0200
Date: Mon, 5 Oct 2015 09:52:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151005075226.GB7825@pengutronix.de>
References: <1441033966-14045-1-git-send-email-s.hauer@pengutronix.de>
 <1441033966-14045-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441033966-14045-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/3] spi: i.MX: optimize transfers for ECSPI v2.3
To: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 31, 2015 at 05:12:46PM +0200, Sascha Hauer wrote:
> Instead of writing one word to the txfifo and then wait until
> one is received in the rxfifo we can write until the txfifos
> are not full and read as long the rxfifos contain data. This
> makes transfers for the m25p80 driver around 7 times faster
> here.

I had to revert this one for now as it doesn't work on the Efika MX
Smartbook on which the MC13892 is connected via SPI. I'll rework this
once I'm back from ELCE.

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

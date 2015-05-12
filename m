Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ys3aq-0002Dv-Dr
 for barebox@lists.infradead.org; Tue, 12 May 2015 06:23:05 +0000
Date: Tue, 12 May 2015 08:22:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150512062239.GO6325@pengutronix.de>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/5] dm9k fixups; img-ci20: enable dm9000 ethernet
 controller
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 12, 2015 at 12:00:48AM +0300, Antony Pavlov wrote:
> Changes since v1 (http://lists.infradead.org/pipermail/barebox/2014-September):
> 
>   * rework 'net: dm9k: add device tree support' completely;
>   * add additional comments to 'net: dm9k: show only one phy on miibus';
>   * add img-ci20-related patches.
> 
> 
> Antony Pavlov (5):
>   net: dm9k: show only one phy on miibus
>   net: dm9k: add device tree support
>   net: dm9k: fix reset routine
>   MIPS: img-ci20: enable dm9000 ethernet controller
>   MIPS: img-ci20_defconfig: enable network stuff

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

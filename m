Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uuzs8-0000Lh-5Z
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 06:52:00 +0000
Date: Fri, 5 Jul 2013 08:51:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130705065137.GH516@pengutronix.de>
References: <1372936808-728-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372937615-3017-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372937615-3017-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v4] spi: add Marvell MVEBU SoC SPI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Thu, Jul 04, 2013 at 01:33:35PM +0200, Sebastian Hesselbarth wrote:
> This adds support for the SPI controller found on Marvell MVEBU SoCs
> (Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
> is DT only. Compatible strings are provided for Orion (common denominator),
> Armada 370/XP and Dove SoCs.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

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

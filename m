Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZbX2-0004Ny-2G
 for barebox@lists.infradead.org; Tue, 07 May 2013 06:37:48 +0000
Date: Tue, 7 May 2013 08:37:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130507063726.GP32299@pengutronix.de>
References: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
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
Subject: Re: [PATCH 0/2] ARM i.MX31: define fix, IOMUX GPR setup fix for pcm037
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 11:21:26PM +0200, Andreas Pretzsch wrote:
> Patches against tag v2013.05.0.
> Functionality tested on customer-specific pcm037 variant with 2013.03.0.
> Compile-tested against pcm037_defconfig with 2013.05.0.
> Relevant code base is unchanged between versions, no issues expected.
> 
> Andreas Pretzsch (2):
>   ARM i.MX31: cleanup MX31_ prefix: fix leftover IOMUXC_BASE defines
>   ARM i.MX31 pcm037: fix erroneous IOMUX GPR setup in pcm037_usb_init()

Applied both.

Thanks
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

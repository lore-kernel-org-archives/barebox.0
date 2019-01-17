Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk3JR-0001gm-1p
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 08:46:11 +0000
Date: Thu, 17 Jan 2019 09:46:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117084606.sd2pd237766e5lie@pengutronix.de>
References: <20190117021700.4443-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117021700.4443-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v4 00/17] PCIe support for i.MX7
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2019 at 06:16:43PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This seires is a build-up on previously submitted PCI sync set [1] and
> contains the patches I created while working on adding support for
> PCIe on i.MX7. The series consists of following:
> 
>  - Patches adding necessary regulator pluming to support porint ANATOP
>    driver
> 
>  - ANATOP driver port
> 
>  - Port of basic power domain infrastructure from Linux kernel needed
>    for controlling GPCv2 (useful for both i.MX7 and, especially, for
>    i.MX8MQ)
> 
>  - Port of GPCv2 driver from Linux as well as of some bug fixes for it
> 
>  - Port of i.MX7 reset controller driver
> 
>  - Patches adding support for i.MX7 to existing i.MX6 PCIe host
>    controller driver
> 
>  - Misc fixes
> 
> This series has been tested on i.MX7D SabreSD board against Toshiba
> NVMe device.
> 
> Feedback is welcome!

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

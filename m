Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL5J-0003Ng-2A
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:07:02 +0000
Date: Thu, 13 Dec 2018 08:06:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181213070648.p6m62ag54y6r43p7@pengutronix.de>
References: <20181212120103.25861-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181212120103.25861-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] globalvar: fix crash if CONFIG_NVVAR is not set
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 12, 2018 at 03:01:03PM +0300, Antony Pavlov wrote:
> At the moment globalvar code tries to use nv_device
> even if nv_device is not registered.
> 
> How to reproduce the problem:
> 
>     barebox$ make sandbox_defconfig
>     ...
>     barebox$ sed -i "s/\(CONFIG_NVVAR\)=y/# \1 is not set/" .config
>     barebox$ sed -i "s/\(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW\)=y/# \1 is not set\n# CONFIG_DEFAULT_ENVIRONMENT_GENERIC is not set/" .config
>     barebox$ make oldconfig
>     ...
>     barebox$ make
>     ...
>     barebox$ ./barebox
>     Segmentation fault
> 
> This patch blocks nv_device use if CONFIG_NVVAR is not set.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

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

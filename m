Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveiw-0003Ng-Sb
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:56:28 +0000
Date: Mon, 18 Feb 2019 09:56:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218085624.3jsiai2ooc5touil@pengutronix.de>
References: <20190213010907.20429-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190213010907.20429-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] ARM: i.MX8MQ: Add code to report HDMI/eDP firmware
 version
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2019 at 05:09:07PM -0800, Andrey Smirnov wrote:
> Port code found in cdn_dp_load_firmware() in Linux kernel to check if
> HDMI firmware is running and, if so, report its version.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Changes since [v1]:
> 
>     - Added CPU type check to prevent execution on non-i.MX8MQ SoCs.
> 
>     - Changes messages to say "HDP" instead of "HDMI", to clarify that
>       the check covers both HDMI _and_ eDP firmware.
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2019-February/037059.html
> 
>  arch/arm/mach-imx/imx8mq.c | 40 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)

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

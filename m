Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH2JU-0004Xo-IJ
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 07:50:18 +0000
Date: Mon, 29 Oct 2018 08:50:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029075004.rhz3atumjc4n5wxq@pengutronix.de>
References: <20181027013127.22163-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013127.22163-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] Switch EEPROM aliases to ZII boards
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 06:31:20PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> With Marvell driver patches in 'next' a number of ZII boards now
> expose a switch EEPROM device in devfs. By default those NVMEM devices
> are given rather unwieldy long names, so this series introduces
> appropriate aliases to shorten those to either "switch-eeprom" or
> "switchN-eeprom" for cases of just one or multiple EEPROMs
> correspondingly.
> 
> Feedback is wellcome!
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> Andrey Smirnov (6):
>   ARM: rdu2: Add switch EEPROM alias
>   ARM: rdu1: Add switch EEPROM alias
>   ARM: vf610-zii-dev-rev-c: Add switch EEPROM alias
>   ARM: vf610-zii-cfu1: Add switch EEPROM alias
>   ARM: vf610-zii-ssmb-spu3: Add switch EEPROM alias
>   ARM: imx7d-zii-rpu2: Add switch EEPROM alias
> 
>  arch/arm/dts/imx51-zii-rdu1.dts      | 13 +++++++++++++
>  arch/arm/dts/imx6qdl-zii-rdu2.dtsi   |  6 ++++++
>  arch/arm/dts/imx7d-zii-rpu2.dts      |  9 +++++++++
>  arch/arm/dts/vf610-zii-cfu1.dts      | 11 +++++++++++
>  arch/arm/dts/vf610-zii-dev-rev-c.dts | 12 ++++++++++++
>  arch/arm/dts/vf610-zii-ssmb-spu3.dts | 11 +++++++++++
>  6 files changed, 62 insertions(+)
> 
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bXB8n-00056z-3N
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 17:48:38 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 9 Aug 2016 17:48:13 +0000
Message-ID: <1470764894.30803.196.camel@rtred1test09.kymeta.local>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
 <1470746252-3146-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-2-git-send-email-s.trumtrar@pengutronix.de>
Content-Language: en-US
Content-ID: <594B913FED934A489690B6658E1EE0E3@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/7] ARM: socfpga: defconfig: add bootstrap_devfs
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-08-09 at 14:37 +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/configs/socfpga-xload_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
> index 521f3f1c1f43..e7b84dacaeaa 100644
> --- a/arch/arm/configs/socfpga-xload_defconfig
> +++ b/arch/arm/configs/socfpga-xload_defconfig
> @@ -25,4 +25,5 @@ CONFIG_EEPROM_AT25=y
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
>  CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DEVFS=y
>  CONFIG_BOOTSTRAP_DISK=y

What's this used for?  I'm not using devfs in my socfpga based device's
xload config.  Does the xload still fit in 64kB with these extra
features?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

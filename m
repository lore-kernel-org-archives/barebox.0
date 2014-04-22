Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcPKI-0003fg-SE
 for barebox@lists.infradead.org; Tue, 22 Apr 2014 01:16:48 +0000
Message-ID: <5355C283.4040402@atmel.com>
Date: Tue, 22 Apr 2014 09:14:43 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
 <1398111326-21783-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398111326-21783-2-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] ARM: at91: add missing break
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas Stach,

On 04/22/2014 04:15 AM, Lucas Stach wrote:
> Otherwise SAM A5d35 would be detected as A5d36.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Acked-by: Bo Shen <voice.shen@atmel.com>

> ---
>   arch/arm/mach-at91/setup.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
> index 7a7de9804556..076d0812b356 100644
> --- a/arch/arm/mach-at91/setup.c
> +++ b/arch/arm/mach-at91/setup.c
> @@ -162,6 +162,7 @@ static void __init soc_detect(u32 dbgu_base)
>   			break;
>   		case ARCH_EXID_SAMA5D35:
>   			at91_soc_initdata.subtype = AT91_SOC_SAMA5D35;
> +			break;
>   		case ARCH_EXID_SAMA5D36:
>   			at91_soc_initdata.subtype = AT91_SOC_SAMA5D36;
>   			break;
>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

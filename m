Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLRtU-0005Gf-Oq
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 07:39:33 +0000
Date: Wed, 11 Feb 2015 08:39:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150211073910.GF12209@pengutronix.de>
References: <1423577638-27907-1-git-send-email-w.egorov@phytec.de>
 <1423577638-27907-2-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423577638-27907-2-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v3: For next 2/2] ARM: am33xx: Add support for reset
 reason detection
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 10, 2015 at 03:13:58PM +0100, Wadim Egorov wrote:
> Also activate in defconfig.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> +		break;
> +	case (1 << 1):
> +		reset_source_set(RESET_RST);
> +		break;
> +	case (1 << 0):
> +		reset_source_set(RESET_POR);
> +		break;
> +	default:
> +		reset_source_set(RESET_UKWN);
> +		break;
> +	}
> +
> +	return 0;
> +}
> +device_initcall(am33xx_detect_reset_reason);

No SoC specific initcall without testing if you're running on the
correct SoC please. Better call it from am33xx_init() which is only
executed on am33xx.

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

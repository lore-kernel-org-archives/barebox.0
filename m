Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhbdQ-0000Lw-I4
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 10:30:34 +0000
Date: Mon, 13 Apr 2015 12:30:10 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20150413103010.GQ9742@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
 <1427904855-32548-11-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427904855-32548-11-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 10/10] habv4: add High Assurance Boot v4
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 01, 2015 at 06:14:15PM +0200, Marc Kleine-Budde wrote:
> +
> +static inline const struct habv4_rvt *habv4_get_rvt(void)
> +{
> +	if (__rvt)
> +		return __rvt;
> +
> +	if (IS_ENABLED(CONFIG_ARCH_IMX28))
> +		__rvt = (void *)HABV4_RVT_IMX28;
> +	else if (IS_ENABLED(CONFIG_ARCH_IMX6))
> +		__rvt = (void *)HABV4_RVT_IMX6;

Better use cpu_is_mx28 and cpu_is_mx6 here.

You should probably provide a static inline wrapper for
habv4_get_status().

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

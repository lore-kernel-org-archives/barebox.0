Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSg2a-0000PD-TB
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 11:33:30 +0000
Date: Thu, 7 Nov 2019 12:33:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191107113325.skdhvwn6u2jja7u5@pengutronix.de>
References: <20191106102149.6858-1-a.fatoum@pengutronix.de>
 <20191106102149.6858-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106102149.6858-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 4/6] ARM: psci: implement PSCI client driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 06, 2019 at 11:21:47AM +0100, Ahmad Fatoum wrote:
>  
> +#ifdef CONFIG_ARM_PSCI_CLIENT
> +int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
> +		ulong *result);
> +
> +int psci_get_version(void);
> +#else
> +int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
> +		ulong *result)
> +{
> +	return -ENOSYS;
> +}

Added missing "static inline" here

> +
> +int psci_get_version(void)
> +{
> +	return -ENOSYS;
> +}

and here.

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

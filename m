Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjl2U-000824-2u
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 07:20:30 +0000
Date: Fri, 22 Nov 2013 08:20:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131122072008.GI24559@pengutronix.de>
References: <1385064684-28363-1-git-send-email-antonynpavlov@gmail.com>
 <1385064684-28363-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385064684-28363-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] gpiolib: import gpio_request_array() from linux 3.7
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Nov 22, 2013 at 12:11:24AM +0400, Antony Pavlov wrote:
> Also import related functions gpio_request_one() and
> gpio_free_array().
> 
> This commit imports code from linux 3.7 as
> the more recent linux kernel versions use gpiolib descriptors,
> see this commit for details:
> 
>   commit 372e722ea4dd4ca11c3d04845e11cbc15f32144c
>   Author: Alexandre Courbot <acourbot@nvidia.com>
>   Date:   Sun Feb 3 01:29:29 2013 +0900
> 
>       gpiolib: use descriptors internally
> 
>       Make sure gpiolib works internally with descriptors and (chip, offset)
>       pairs instead of using the global integer namespace. This prepares the
>       ground for the removal of the global gpio_desc[] array and the
>       introduction of the descriptor-based GPIO API.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

What a pitty, we duplicated some work. I created exactly the same patch
recently but haven't posted it yet, shame on me.

> +static inline int gpio_request_one(unsigned gpio,
> +					unsigned long flags, const char *label)
> +{
> +	return 0;
> +}
> +
> +static inline int gpio_request_array(const struct gpio *array, size_t num)
> +{
> +	return 0;
> +}
> +

That's the only place our patches differ. In my version I return -ENOSYS
since gpio_request_one() and gpio_request_array() not only request gpios
but also configure them. We can't return success without configuring the
gpios. I applied your version but with -ENOSYS here.

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

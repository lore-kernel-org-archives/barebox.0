Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14FC-00027g-J0
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 08:16:41 +0000
Date: Mon, 10 Feb 2020 09:16:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200210081637.vr2glwurecfnf7jc@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/8] PWM: misc fixes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 06, 2020 at 12:23:26PM +0100, Ahmad Fatoum wrote:
> Some stuff I ran into while refactoring barebox PWM to be more
> welcoming for porting kernel drivers using the kernel atomic
> PWM API. Driver will follow soon.
> 
> Cheers,
> Ahmad Fatoum (8):
>   PWM: pxa: remove unused struct members
>   PWM: pxa: make MMIO writes always little endian
>   regmap: forward declare structs used in header
>   video: backlight-pwm: remove duplicate assignment to object
>   led: pwm: don't test if pointer is smaller than zero
>   led: pwm: fail if required max-brightness option is missing
>   led: pwm: support active-low property
>   PWM: core: constify chip->ops pointer
> 
>  drivers/led/led-pwm.c         | 10 ++++++++--
>  drivers/pwm/pxa_pwm.c         | 11 +++--------
>  drivers/video/backlight-pwm.c |  2 --
>  include/pwm.h                 |  2 +-
>  include/regmap.h              |  3 +++
>  5 files changed, 15 insertions(+), 13 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

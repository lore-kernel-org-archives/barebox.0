Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBem-0005T1-1v
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 07:49:57 +0000
Date: Tue, 31 Mar 2020 09:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200331074954.GK27288@pengutronix.de>
References: <20200330145717.667403-1-ahmad@a3f.at>
 <20200330145717.667403-9-ahmad@a3f.at>
 <20200331061006.GG27288@pengutronix.de>
 <4c804252-b126-8555-dc8d-820b5a182b46@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c804252-b126-8555-dc8d-820b5a182b46@pengutronix.de>
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
Subject: Re: [PATCH 08/12] video: backlight-pwm: use new pwm_apply_state API
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>

On Tue, Mar 31, 2020 at 08:54:00AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 3/31/20 8:10 AM, Sascha Hauer wrote:
> > On Mon, Mar 30, 2020 at 04:57:13PM +0200, Ahmad Fatoum wrote:
> >> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>
> >> Use pwm_apply_state we can avoid having to store PWM state in the
> >> instance structure and in future we have an easy way to support new
> >> parameters like inverted duty cycle.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/video/backlight-pwm.c | 13 ++++++++-----
> >>  1 file changed, 8 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> >> index 9111a42d7544..8b6494dac929 100644
> >> --- a/drivers/video/backlight-pwm.c
> >> +++ b/drivers/video/backlight-pwm.c
> >> @@ -33,7 +33,6 @@ struct pwm_backlight {
> >>  	struct backlight_device backlight;
> >>  	struct pwm_device *pwm;
> >>  	struct regulator *power;
> >> -	uint32_t period;
> >>  	unsigned int *levels;
> >>  	int enable_gpio;
> >>  	int enable_active_high;
> >> @@ -91,13 +90,16 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
> >>  static int compute_duty_cycle(struct pwm_backlight *pwm_backlight, int brightness)
> >>  {
> >>  	int duty_cycle;
> >> +	struct pwm_state state;
> >> +
> >> +	pwm_get_state(pwm_backlight->pwm, &state);
> >>  
> >>  	if (pwm_backlight->levels)
> >>  		duty_cycle = pwm_backlight->levels[brightness];
> >>  	else
> >>  		duty_cycle = brightness;
> >>  
> >> -	return duty_cycle * pwm_backlight->period / pwm_backlight->scale;
> >> +	return duty_cycle * state.period_ns / pwm_backlight->scale;
> >>  }
> >>  
> >>  static int backlight_pwm_set(struct backlight_device *backlight,
> >> @@ -105,9 +107,11 @@ static int backlight_pwm_set(struct backlight_device *backlight,
> >>  {
> >>  	struct pwm_backlight *pwm_backlight = container_of(backlight,
> >>  			struct pwm_backlight, backlight);
> >> +	struct pwm_state state;
> >>  
> >> -	pwm_config(pwm_backlight->pwm, compute_duty_cycle(pwm_backlight, brightness),
> >> -		   pwm_backlight->period);
> >> +	pwm_get_state(pwm_backlight->pwm, &state);
> > 
> > You read the current pwm state here...
> > 
> >> +	state.duty_ns = compute_duty_cycle(pwm_backlight, brightness);
> > 
> > and once again in compute_duty_cycle(). I think it would be nicer to
> > reorganize this a bit, maybe pass the state to compute_duty_cycle.
> > 
> >> +	pwm_apply_state(pwm_backlight->pwm, &state);
> >>  
> >>  	if (brightness)
> >>  		return backlight_pwm_enable(pwm_backlight);
> > 
> > I would assume that if you switch to the pwm_apply_state API then you do
> > it entirely. backlight_pwm_enable() still uses the old API to enable the
> > PWM.
> 
> Ineed. Rest of patches should apply and build cleanly without this and the last one.
> If they're ok, can you apply them and I respin only those two?

Just did that.

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

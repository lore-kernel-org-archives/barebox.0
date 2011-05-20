Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.26.mail-out.ovh.net ([46.105.40.147] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QNPYa-00076d-HL
	for barebox@lists.infradead.org; Fri, 20 May 2011 13:15:57 +0000
Message-ID: <4DD66946.4050906@eukrea.com>
Date: Fri, 20 May 2011 15:14:46 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <201105201407.08429.tim.sander@hbm.com>
In-Reply-To: <201105201407.08429.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: GPIO Support on pcm043
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

Hi Tim,

On 20/05/2011 14:07, Tim Sander wrote:
> I just tried (for i in `seq 0 96`)
> gpio_set_direction $i 1
> and
> gpio_set_direction $i 0
>
> on a barebox for pcm043 with gpio support compiled in.
> But no LED was lighting up.
>
> Is there some obvious error on my side or is there no gpio
> support for pcm043? At least there seems to be support for
> the gpio ports on imx?
>
> Any hints?

you first need to configure the mux of the pins to GPIO mode, then you can use 
them as gpio.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

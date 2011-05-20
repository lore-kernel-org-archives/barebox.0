Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.26.mail-out.ovh.net ([46.105.56.220] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QNPtp-0007RE-Ho
	for barebox@lists.infradead.org; Fri, 20 May 2011 13:37:54 +0000
Message-ID: <4DD66DC9.1090304@eukrea.com>
Date: Fri, 20 May 2011 15:34:01 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <201105201407.08429.tim.sander@hbm.com>
	<4DD66946.4050906@eukrea.com>
	<201105201530.20237.tim.sander@hbm.com>
In-Reply-To: <201105201530.20237.tim.sander@hbm.com>
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

On 20/05/2011 15:30, Tim Sander wrote:
> Hi Eric
>
> Thanks for your answer
>>> Is there some obvious error on my side or is there no gpio
>>> support for pcm043? At least there seems to be support for
>>> the gpio ports on imx?
>>> Any hints?
>>
>> you first need to configure the mux of the pins to GPIO mode, then you can
>> use them as gpio.
> After tripping into that trap multiple times, i've already checked that, but
> forgot to mention it:
> static struct pad_desc pcm043_pads[] = {
> 	...
>          MX35_PAD_D3_CLS__GPIO1_4,
>          MX35_PAD_D3_SPL__GPIO1_5,
> 	...
>
> These should be the gpio nrs 4 and 5 which means that
> gpio_set_direction 4 1
> or
> gpio_set_direction 4 0
> should light up the led.
>
if the led is wired on gpio1_5 it should.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

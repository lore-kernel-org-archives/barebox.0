Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l93zm-0000GP-G0
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 10:42:19 +0000
Date: Mon, 8 Feb 2021 11:42:16 +0100
Message-ID: <20210208104216.GH19583@pengutronix.de>
References: <20210131201846.3440477-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131201846.3440477-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 0/7] Add sound and GRUB beep tune support
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Sun, Jan 31, 2021 at 09:18:39PM +0100, Ahmad Fatoum wrote:
> I've been meaning to upstream pwm-beeper support for a piezobuzzer,
> but it would be a real shame if the obnoxious buzzing would delay the
> boot. So let me present asynchronous beeping support for barebox.
> 
> If you don't have the suitable hardware lying around you can synth
> your own tunes on the barebox sandbox shell as well.
> 
> The Imperial March:
>   beep 480 440 4 440 4 440 4 349 3 523 1 440 4 349 3 523 1 440 8 659 4 659 4 659 4 698 3 523 1 415 4 349 3 523 1 440 8
> 
> Rebel's sabotage:
>   beep -c
> 
> Cheers,
> Ahmad Fatoum (7):
>   sandbox: migrate to SDL 2.0
>   drivers: add sound card driver support
>   sound: add basic synthesizers for PCM beeper use
>   sound: add SDL 2.0 sound driver
>   commands: add beep command
>   sound: add PWM beeper support
>   sound: add gpio-beeper support

Finally! I've been waiting for that for so long ;)

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

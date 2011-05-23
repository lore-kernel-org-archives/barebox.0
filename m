Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QOPDu-0001Rs-9L
	for barebox@lists.infradead.org; Mon, 23 May 2011 07:06:43 +0000
Date: Mon, 23 May 2011 09:06:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110523070639.GB20715@pengutronix.de>
References: <201105201407.08429.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201105201407.08429.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: GPIO Support on pcm043
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

Hi Tim,

On Fri, May 20, 2011 at 02:07:08PM +0200, Tim Sander wrote:
> Hi
> 
> I just tried (for i in `seq 0 96`)
> gpio_set_direction $i 1
> and 
> gpio_set_direction $i 0

I suppose the actual command you used is gpio_direction_output, right?
there is no gpio_set_direction command.

I just checked that as of latest master the LED on the baseboard
connected to gpio2_6 works with:

gpio_direction_output 38 0
gpio_direction_output 38 1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkuxZ-0006yJ-Gr
 for barebox@lists.infradead.org; Thu, 15 May 2014 12:40:30 +0000
Date: Thu, 15 May 2014 14:40:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515124006.GJ5858@pengutronix.de>
References: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
 <537486DB.9010302@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <537486DB.9010302@gmail.com>
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
Subject: Re: [PATCH] commands: rename "gpiolib" -> "gpioinfo"
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 15, 2014 at 11:20:27AM +0200, Sebastian Hesselbarth wrote:
> On 05/15/2014 11:08 AM, Holger Schurig wrote:
> >Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> 
> Subject: rename "gpiolib" -> "gpioinfo"
> 
> How about joining the gpio related commands to "gpio"
> and use e.g. -l for list?

Which commands do you mean? gpio_direction_output / gpio_set_value
and friends? I wouldn't change these as we would end up with four
single letter options (for direction_output, set_value, direction_input,
get_value) which are hard to memorize.

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

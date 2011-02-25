Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PszG0-0005Dj-3G
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 15:07:00 +0000
Date: Fri, 25 Feb 2011 16:06:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110225150657.GC29521@pengutronix.de>
References: <4D665867.4010404@telemotive.de>
	<20110224160440.GQ7381@pengutronix.de>
	<4D677315.5090600@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D677315.5090600@telemotive.de>
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
Subject: Re: Install barebox on target
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 25, 2011 at 10:15:01AM +0100, Thomas Mayer wrote:
> Hi Sascha,
> 
> That's not quite correct. When you use the debug + personality board you
> can boot directly from a mmc-card which contains bootloader, kernel and
> rootfs without modifications. Only if you use the single personality
> board, you have to modify die board a little bit.

Ah, ok. I didn't know that.

> Thanks for your short introduction. I tried to run the barebox image
> with u-boot and it seems to work. But after I get the following output
> barebox stops and do nothing.

That's a bug in the support for multiple network devices. Please pull
the -next branch again, then it should work.

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

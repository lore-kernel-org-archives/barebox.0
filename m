Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeLaM-0003CL-8d
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 08:04:35 +0000
Date: Fri, 30 Nov 2012 09:04:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121130080430.GS10369@pengutronix.de>
References: <CAAfyv341yF=MSJg+CWpJSRy1deOsaz3DHH1=WKo8VLeyYKUWjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv341yF=MSJg+CWpJSRy1deOsaz3DHH1=WKo8VLeyYKUWjQ@mail.gmail.com>
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
Subject: Re: loading uImage from FAT partition
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 29, 2012 at 11:49:56PM +0100, Belisko Marek wrote:
> Hi,
> 
> I'm trying to use barebox on pandaboard and change default env config to boot
> from SD card (as this is mostly what user want).
> 
> I'm curious how to add boot support from SD card properly.
> I'm using currently command: bootm /boot/uImage in
> boot script. Is this approach correct or is there some simple way how
> to make it?

As of current master with the panda board switched to the new
environment this would be:

boot mmc

You can adjust /env/boot/mmc to your needs beforehand.

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

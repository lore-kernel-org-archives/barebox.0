Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVdUr-00073H-5N
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 08:27:25 +0000
Date: Mon, 14 Oct 2013 10:27:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131014082701.GX30088@pengutronix.de>
References: <1381390941.11504.41.camel@coredoba.hi.pengutronix.de>
 <CE7BF428.8D50%ivor@veriline.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CE7BF428.8D50%ivor@veriline.co.za>
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
Subject: Re: Writing to I2C device during Barebox boot
To: Ivor Kruger <ivor@veriline.co.za>
Cc: barebox@lists.infradead.org

Hi Ivor,

On Thu, Oct 10, 2013 at 06:10:42AM -0700, Ivor Kruger wrote:
> Jan, thanks for the reply, I will look into using git-send-email a bit
> later since I am going to travel this morning fro a few hours.
> 
> My question was however a little bit more generic. Take for example the
> PCM049 board.c file. One of the I2C components it loads is the TWL6030. If
> I wish to write to a register on this device, how would I go about it.

When the driver is probed you should see a /dev/twl6030. You can read
the registers doing:

md -s /dev/twl6030

And you can write registers like this:

mw -d /dev/twl6030 <offset> <value>

If you wish to read/write registers from code grep the code for
twl6030_get.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5sxZ-000207-KV
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 10:23:58 +0000
Date: Mon, 7 Dec 2015 11:23:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151207102335.GG11966@pengutronix.de>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/7] imx: ocotp: Add code to initialize 'cdev->device_node'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

I had to port the LM75 driver to barebox just a few days ago and so came
up with exactly the same patch 2/7 and 3/7. I applied 1-3 right away.

In my case I not only have a LM75 but also a PT100 connected to a
Microchip MCP3421 which in Linux is abstracted as a IIO device. IIO has
the advantage that it's more formalized and has it's own device tree
binding that allows to connect sensor devices with their consumers. I
picked some of the pieces from IIO and created something I called
iodevice. I'll post it in the next few days. One thing I am missing in
your approach is the readout of values as device parameters so that the
values can be evaluated in scripts. On the other hand you have a command
that allows to show the values of all sensors which I currently don't
have. Maybe we can distil the best of both approaches.

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

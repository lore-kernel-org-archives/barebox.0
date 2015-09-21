Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZduRb-0008QV-KW
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 06:19:20 +0000
Date: Mon, 21 Sep 2015 08:18:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150921061856.GC7858@pengutronix.de>
References: <1442488714-10508-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442488714-10508-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC v4 0/2] WIP: add usb keyboard driver
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Thu, Sep 17, 2015 at 02:18:32PM +0300, Peter Mamonov wrote:
> Changes since v3:
> 	- issue Set_Idle(duration=0) usb request if polling via control EP
> 
> Peter Mamonov (2):
> 	usb: ehci-hcd: port periodic transactions implementation
> 	input: port usb keyboard driver from the u-boot
> 

The code looks ok now. I tested the first version with interrupt
transfer support and this one didn't work for me, maybe because of
missing cache flushes or similar. I want to give it a test and if
necessary make it work on ARM if necessary before applying, but haven't
found the time to do so yet. Consider them applied, but I'll need a few
more days to test them.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcXEt-0007tV-2b
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 12:25:03 +0000
Date: Wed, 24 Aug 2016 14:24:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160824122441.GH20657@pengutronix.de>
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
 <20160818073831.GL20657@pengutronix.de>
 <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
 <8b40b96f-0414-4566-1215-e1d6bb7abab1@gmail.com>
 <20160822061049.GC20657@pengutronix.de>
 <63af30cc-9fd5-3283-a9f2-9e98e507d581@gmail.com>
 <cacf597f-e684-44e0-84c5-9366481dbed2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cacf597f-e684-44e0-84c5-9366481dbed2@gmail.com>
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
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Peter Kardos <kardos.peter.sk@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Aug 22, 2016 at 10:39:24PM +0200, Peter Kardos wrote:
> Hi Sascha,
> 
> I've tested your workaround and it seems to work; the board starts and
> attempts
> to boot.

I just sent a proper solution for that problem, you're on Cc. I'm
confident that this solves your problem. Could you give this a test
please?

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoyA-0000id-G0
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:40:42 +0000
Date: Mon, 30 Apr 2012 13:40:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120430114039.GF4141@pengutronix.de>
References: <03d601cd23cb$5c7076e0$155164a0$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03d601cd23cb$5c7076e0$155164a0$@com>
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
Subject: Re: initramfs
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

Hi George,

On Thu, Apr 26, 2012 at 09:40:59AM -0700, George Pontis wrote:
> Is it possible to get barebox to load an initramfs image ?

Please check if the patch I just posted to the list helps you:

[PATCH] bootm: fix initrd handling

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDsoc-0000s7-TE
 for barebox@lists.infradead.org; Wed, 02 May 2018 14:33:13 +0000
Message-ID: <1525271572.17782.13.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 02 May 2018 16:32:52 +0200
In-Reply-To: <20180429160125.3193-1-mail@schmidt-andreas.de>
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
To: Andreas Schmidt <mail@schmidt-andreas.de>, barebox@lists.infradead.org

On Sun, 2018-04-29 at 18:01 +0200, Andreas Schmidt wrote:
> I guess, for such an use case Bootloader Spec specify "machine-id"
> key. This patch implement the support for machine-id key.

The way I read https://www.freedesktop.org/wiki/Specifications/BootLoad
erSpec/ is that the "machine-id" field should contain the ID from
/etc/machine-id, which is basically a UUID:
"machine-id shall contain the machine ID of the OS /etc/machine-id.
This is useful for boot loaders and applications to filter out boot
entries, for example to show only a single newest kernel per OS, or to
group items by OS, or to maybe filter out the currently booted OS in
UIs that want to show only other installed operating systems."

Your use-case sound like you'd need a way to add a more specific DT
board compatible at runtime. Then the existing selection logic would
handle your case as well.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

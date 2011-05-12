Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QKP07-0007gF-LT
	for barebox@lists.infradead.org; Thu, 12 May 2011 06:03:56 +0000
Date: Thu, 12 May 2011 08:03:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110512060349.GO30963@pengutronix.de>
References: <BANLkTimK4n3A4HN9yLWrmgXcwhFgJrCCbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTimK4n3A4HN9yLWrmgXcwhFgJrCCbw@mail.gmail.com>
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
Subject: Re: AM3517EVM port
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Yegor,

On Thu, May 12, 2011 at 12:06:15AM +0200, Yegor Yefremov wrote:
> Hello,
> 
> has anyone ported AM3517EVM board or other omap3517 based board to
> barebox? I couldn't find any patches.

No, I am not aware of any patches for this. How different is the
omap3517 from the one on the beagle board?

> 
> The second question is about OMAP boot procedure. Can I just rename
> barebox to u-boot.bin and let it be loaded by x-loader?

More specifically barebox.bin to u-boot.bin, yes. This at least works on
the beagle and panda boards. barebox can also act as an x-loader aswell
(in which case it loads barebox.bin as second stage). See the *xload*
defconfigs.

Regards
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

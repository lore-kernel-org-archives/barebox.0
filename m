Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYsaa-0003le-PJ
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 09:52:05 +0000
Date: Thu, 25 Feb 2016 10:51:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160225095142.GF3939@pengutronix.de>
References: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
 <20160225085615.GD3939@pengutronix.de>
 <CABQt-Unp1Kacvc5jwUcwstatUtm6VQ0ROr2CHcQVtL85YizkmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-Unp1Kacvc5jwUcwstatUtm6VQ0ROr2CHcQVtL85YizkmA@mail.gmail.com>
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
Subject: Re: mount fat regression
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 25, 2016 at 10:37:35AM +0100, Philippe Leduc wrote:
> Hi,
> 
> This was working before :) (at least with barebox version 2015.10).
> Honestly , this may be a misconfiguration on our part (and the fact
> that it worked doesn't mean that it was a normal behavior).
> 
> Here is the output:
> filetype  /dev/mmc2.netcom
> /dev/mmc2.netcom: MBR sector (mbr)

That's your problem. With /dev/mmc2.netcom detected as MBR barebox won't
automatically try to mount a FAT filesystem.
What is /dev/mmc2.netcom anyway? I assume it's a GPT partition, right?

Can you mount the same device with the -tfat option to mount?

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

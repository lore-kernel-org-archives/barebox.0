Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYdyL-0000Rg-PQ
 for barebox@lists.infradead.Org; Wed, 24 Feb 2016 18:15:38 +0000
Date: Wed, 24 Feb 2016 19:15:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160224181515.GS3939@pengutronix.de>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
 <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
 <20160224111516.GM3939@pengutronix.de>
 <CABQt-UnC4FvOPwkHJ8UtefBDLkc65nTr7hVSJ6vPgBYASWAS5w@mail.gmail.com>
 <20160224124343.GO3939@pengutronix.de>
 <CABQt-Ukb1thMQYOwCmuNmfdYTni6JeT9wKxtMH45Tfvv0mLB9w@mail.gmail.com>
 <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
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
Subject: Re: Help configuring i.MX6 IPUv3 with a parrallel display
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 24, 2016 at 02:46:08PM +0100, Philippe Leduc wrote:
> Victory!
> 
> I checked the timings with an oscilloscope by using Linux and
> everything except one pin is identical: LCD_ENABLE ^^ ' . It is a GPIO
> that let the display in sleep mode to limit consumption.
> 
> Note that splash utility continue to freeze the board.

No backtrace? Is it a BMP or a PNG that you are trying to show?

> 
> About the 'driver' that parse the dt to expose the timings, I'll clean
> up and let you review it (this time I'll use git to send you the patch
> :) )

Looking forward to it. I think it we had the issue with the missing
parallel display support before.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00wz-0000Ye-5r
 for barebox@lists.infradead.org; Fri, 07 Feb 2020 10:33:31 +0000
References: <BL0PR01MB52513F7AE42E4E6ED527380A8F1C0@BL0PR01MB5251.prod.exchangelabs.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <566f7758-587f-e833-cee7-ee8e7133e3ac@pengutronix.de>
Date: Fri, 7 Feb 2020 11:33:23 +0100
MIME-Version: 1.0
In-Reply-To: <BL0PR01MB52513F7AE42E4E6ED527380A8F1C0@BL0PR01MB5251.prod.exchangelabs.com>
Content-Language: en-US
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
Subject: Re: imx27 phycard update problems from barebox 2019.01.0 to 2020.01.0
To: "Koelle, Holger" <Holger.Koelle@allegion.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On 2/7/20 11:17 AM, Koelle, Holger wrote:
> Hey there,
> 
> this week i updated some imx27 based phycard from Barebox 2019.01 to 2020.01. After the update at Boot nothing happens.. no output on serial.
> Devicetree and Configuration (barebox.config in ptxdist) looks fine...got anyone suggestions for me?

Try finding the offending commit with git-bisect:

git bisect good v2019.01.0
git bisect bad v2020.01.0
# build, flash, run barebox
git bisect good # if it works
git bisect bad # if it doesn't work

There have been 1004 revisions between the two tags, which means, a binary
search will find the offending commit in 10 iterations.

When you've found the commit and need to take a more thorough look (printf-debugging),
you can add low level UART debug support to your board.

Keep us updated!

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

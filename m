Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk4Cp-0006LI-DY
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 09:43:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gk4Cn-0000bp-SY
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 10:43:21 +0100
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
 <20190116184702.GC27364@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4cf87a23-d891-5dd2-5dc4-9a3e917bf3a8@pengutronix.de>
Date: Thu, 17 Jan 2019 10:43:21 +0100
MIME-Version: 1.0
In-Reply-To: <20190116184702.GC27364@ravnborg.org>
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
Subject: Re: [PATCH 00/11] ARM: at91: microchip-kz9477-evb: support first
 stage boot
To: barebox@lists.infradead.org

Hello Sam,

On 16/1/19 19:47, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Wed, Jan 16, 2019 at 06:45:48PM +0100, Ahmad Fatoum wrote:
>> This patch series imports the necessary infrastructure out of the
>> at91bootstrap project to support first stage usage on the SAMA5.
> 
> Very nice, especillay as I have a shiny new SAMA5D4 Xplained Ultra
> on my disk waiting to be toyed with.

:-)

> 
> I will take a closer look in a few days, but most looked good
> at first look.

Ok, I'll wait till then with the v2.

> 
> Could I ask you to update the very simple .rst file included
> just a few days ago in Documentation/ so we get a better
> board description and have the new defconfig also documented.

Will do.

> 
> 	Sam
> 

Cheers
Ahmad

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

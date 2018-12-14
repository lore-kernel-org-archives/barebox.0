Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXpRa-0002fV-DE
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 15:32:05 +0000
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
 <20181207063433.7623-4-a.fatoum@pengutronix.de>
 <20181207074302.babciy2rcwjvh2iq@pengutronix.de>
 <e57bbb6a-9055-2986-8045-223b1ed84f5e@pengutronix.de>
 <20181210083937.7edjbvfih57shwrz@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f4e71979-864a-f090-9080-24939d859385@pengutronix.de>
Date: Fri, 14 Dec 2018 16:31:50 +0100
MIME-Version: 1.0
In-Reply-To: <20181210083937.7edjbvfih57shwrz@pengutronix.de>
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
Subject: Re: [PATCH 4/4] of: partition: add no-fixup device tree property
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 10/12/18 09:39, Sascha Hauer wrote:
> 
> Still why do we need a device tree property when all we have to do is to
> not call of_partitions_register_fixup() for the boot partitions?

I figured current users might want to keep the current behavior, but ok,
I will send another patch that skips fixup for the eMMC boot partitions.

You can still merge the first two patches in this patchset however, they
are applicable regardless.


Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

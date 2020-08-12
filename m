Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5qUj-0000RL-C9
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 13:08:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
 <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
Message-ID: <c3c908c3-1fad-c493-2c75-71a57860abe1@pengutronix.de>
Date: Wed, 12 Aug 2020 15:08:38 +0200
MIME-Version: 1.0
In-Reply-To: <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
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
Subject: Re: [PATCH fixup v1] of: base: register DT root as device
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: has@pengutronix.de


On 8/12/20 2:40 PM, Ahmad Fatoum wrote:
> I'll test your patch layer anyway and report back if it fixes the issue I observed.
> (Looks like it should though).

Ye, it works, but I'd prefer it be done differently.

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

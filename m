Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOe93-0000Rf-2r
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:15:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1jOe8y-0007ws-HU
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 11:15:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
 <20200413075204.17544-2-a.fatoum@pengutronix.de>
Message-ID: <40e68fe0-52eb-49d5-e373-e0e16445e19b@pengutronix.de>
Date: Wed, 15 Apr 2020 11:15:40 +0200
MIME-Version: 1.0
In-Reply-To: <20200413075204.17544-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 01/21] mfd: syscon: enable specified clocks on
 syscon_base_lookup_by_phandle
To: barebox@lists.infradead.org

Hello Sascha,

On 4/13/20 9:51 AM, Ahmad Fatoum wrote:
> Since commit b36b7b72 ("mfd: syscon: clock peripheral if specified in
> device tree"), we now clock syscons during access if the device tree nodes
> indicate a clocks property. We haven't been doing this for
> syscon_base_lookup_by_phandle though, because we did this as part of the
> regmap access functions.

I've sent a v2 of only this patch here. Please consider taking the other one
and applying the rest of the series on top.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBcsA-0004fI-HT
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 10:12:00 +0000
Date: Wed, 3 Apr 2019 12:11:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190403101156.adugyhyrtvvmseji@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401093106.4595-7-a.fatoum@pengutronix.de>
 <20190403071800.dczv5jnlqbg5qodz@pengutronix.de>
 <4d3b99c8-ff37-6c3c-19fe-a57aee1a968e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d3b99c8-ff37-6c3c-19fe-a57aee1a968e@pengutronix.de>
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
Subject: Re: [PATCH v2 06/10] ARM: at91: remove at91sam9g45_get_ddram_size
 helper
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Wed, Apr 03, 2019 at 11:56:28AM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 3/4/19 09:18, Sascha Hauer wrote:
> > Indeed you can remove the #ifdefs, but wouldn't it look nicer just to
> 
> I assume you mean adding a base address parameter, but have the helper
> sets the second argument? Ye, I can do that.

No, I mean remove the ifdefs and only that.

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

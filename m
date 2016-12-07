Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEjAi-00036T-Gw
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:50:38 +0000
Date: Wed, 7 Dec 2016 21:50:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207205014.anqp5nvpodcx344g@pengutronix.de>
References: <201611291202.23646.jbe@pengutronix.de>
 <201611291504.41899.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201611291504.41899.jbe@pengutronix.de>
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
Subject: Re: UBIFS trouble
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 29, 2016 at 03:04:41PM +0100, Juergen Borleis wrote:
> FYI: soft links are broken since 2016.05.0.

Most likely this goes down to:

a63059d ubifs: update implementation from u-boot v2016.03

U-Boot resolves links in each filesystem implementation whereas barebox
handles links natively. Have a look at a63059d, identify the link
resolving code and revert this to the previously working barebox code.

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

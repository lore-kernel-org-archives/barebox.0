Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQAta-00076q-8S
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 09:35:42 +0000
Date: Mon, 1 Feb 2016 10:35:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160201093519.GP13058@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 8/8] miitool: Add code to register a PHY
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Sun, Jan 31, 2016 at 07:10:13PM -0800, Andrey Smirnov wrote:
> This commit changes the behaviour of the 'miitool'. Now in order to show
> PHY's link information 'miitool' should be invoked as such:
> 
> miitool -s [PHY]
> 
> Also, implment code to allow to register a dummy PHY device in order to
> be able to perform raw MDIO bus access.

These are not necessarily dummy phy devices, in fact if they were you
wouldn't be interested in them ;)

Do we need a way to register an individual phy? Wouldn't it be enough to
add a -f(orce) option to register all phys on all busses even if there's
nothing detected on them?

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

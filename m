Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzE17-0004Zn-Lp
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 01:28:06 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 19 Nov 2015 01:26:47 +0000
Message-ID: <1447896407.4553.181.camel@rtred1test09.kymeta.local>
References: <1447028327-20277-1-git-send-email-andrew.smirnov@gmail.com>
 <20151109062001.GO8526@pengutronix.de>
In-Reply-To: <20151109062001.GO8526@pengutronix.de>
Content-Language: en-US
Content-ID: <5F81B560D58F9843803B23BE19449045@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2] i2c: Add support for DesignWare controllers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2015-11-09 at 07:20 +0100, Sascha Hauer wrote:
> On Sun, Nov 08, 2015 at 04:18:46PM -0800, Andrey Smirnov wrote:
> > Add a driver for DesignWare I2C controller IP block found on several
> > SoCs including Altera SoC products
> > 
> > Tested using Terrasic SoCKit board and GPIO expander board with I2C
> > EEPROM on it
> > 
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

> > +	uint32_t ic_con, ic_comp_type_value;
> > +
> > +	pdata = pdev->platform_data;
> > +
> > +	dw = xzalloc(sizeof(*dw), GFP_KERNEL);
> > +

Doesn't compile, xzalloc() has one argument, no page flags.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

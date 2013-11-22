Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f131.i.mail.ru ([94.100.178.192])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjn8E-00023m-Mk
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 09:34:35 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 22 Nov 2013 13:34:11 +0400
Message-ID: <1385112851.747276864@f131.i.mail.ru>
In-Reply-To: <20131122070907.GH24559@pengutronix.de>
References: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
 <1384982546-9111-3-git-send-email-lisovy@gmail.com>
 <20131122070907.GH24559@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAyLzNdIEFSTTogaS5teDUzOiBQYXJzZSBSZXNldCBHUElP?=
 =?UTF-8?B?IHBpbiBpbiBGRUMgZHJpdmVyIGZyb20gRGV2aWNldHJlZQ==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?B?Um9zdGlzbGF2IExpc292eQ==?= <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

> On Wed, Nov 20, 2013 at 10:22:25PM +0100, Rostislav Lisovy wrote:
> > Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> > 
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
...
> > +	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
> > +	if (!gpio_is_valid(phy_reset)) {
> > +		dev_info(dev, "'phy-reset' gpio is not valid\n");
> 
> Applied this series, but dropped this message. The problem with these
> kind of messages is that now nearly all i.MX users start seeing it and
> wonder if this is something they have to care about.

"phy-reset-duration" property should be handled together with "phy-reset-gpios"-property.
Additionally, the reset level is hardcoded to "0", but should be taken from
2nd cell GPIO DT definition.
I am not sure about 2nd issue, but the first can be implemented very easy.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

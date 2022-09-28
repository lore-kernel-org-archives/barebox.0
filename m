Delivery-date: Wed, 28 Sep 2022 16:38:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odYCK-00HPsO-QO
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 16:38:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odYCJ-0005sk-Cl
	for lore@pengutronix.de; Wed, 28 Sep 2022 16:38:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XLPDViLItyP9jV+enfLbf+FGlRY8Gj7r61EKrsmc/k4=; b=u/zsm365G8/PDPH/oOcRizlDuf
	7eFi3QBx802iwZslATPFCZpbvXJZJib4IjADs74qilf1Wxl5DY1E3ZlRBXwf+sorQ9pRcO1jtL/J1
	evgI16/4f8Q7icdjma/cUC4dSHcgYeDteUbijzIFO9iv7rn1f1oBo3Kz+sv3aI7dvXImSm70q40oe
	C4rKQOehaJtSSp0KrjEn0KAZW5kAh9DZWM+xT8ocODa5TMmkq1ED7d+pDSaI5SEkoqr7bz0C+WDm4
	Xj9XSYS6oliJb8aIaFsWfwq1FiGCUUHXr6FvhabYoZPexUBCjtCnxxRfTQIq/Lcd02nng2Ogp0tht
	yeseuqKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYAv-00GhZx-2w; Wed, 28 Sep 2022 14:36:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYAr-00GhYj-0p
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 14:36:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odYAp-0005io-GG; Wed, 28 Sep 2022 16:36:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odYAp-0004xW-7i; Wed, 28 Sep 2022 16:36:31 +0200
Date: Wed, 28 Sep 2022 16:36:31 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220928143631.GX986@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
 <20220905103546.1476277-5-a.fatoum@pengutronix.de>
 <lyv8p7wrfp.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lyv8p7wrfp.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_073633_110950_87E3CA6E 
X-CRM114-Status: GOOD (  25.06  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] commands: gpio: add -d argument to set/get commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Enrico,

On Wed, Sep 28, 2022 at 03:37:30PM +0200, Enrico Scholz wrote:
> Ahmad Fatoum <a.fatoum@pengutronix.de> writes:
> 
> > For debugging, it can be useful to reference GPIOs relative to a
> > controller, e.g.:
> >
> >   gpio_direction_output -d gpio4 20 1
> >
> > -	if (argc < count)
> > +	if (optind < count)
> >  		return COMMAND_ERROR_USAGE;
> 
> This change seems to make '-d ...' mandatory.  E.g.
> 
> | :/ gpio_get_value 65
> | 
> | gpio_get_value - return value of a GPIO pin
> | 
> | Usage: gpio_get_value [-d CONTROLLER] GPIO
> 

Thanks for reporting. Here is a fix for that

Sascha

-----------------------------8<---------------------------

>From 7c797eb87385522ce1ec1ba44315ba386d82978d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Sep 2022 16:33:21 +0200
Subject: [PATCH] gpio: Fix gpio commands called without -d option

04443dc5fc breaks the calculation of arguments needed which effectively
makes the -d option mandatory. Fix this.

Fixes: 04443dc5fc ("commands: gpio: add -d argument to set/get commands")
Reported-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index d04fd65bc8..5e5eb20583 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -11,7 +11,7 @@ static int get_gpio_and_value(int argc, char *argv[],
 {
 	struct gpio_chip *chip = NULL;
 	struct device_d *dev;
-	int count = 2;
+	int count = 1;
 	int ret = 0;
 	int opt;
 
@@ -34,7 +34,7 @@ static int get_gpio_and_value(int argc, char *argv[],
 	if (value)
 		count++;
 
-	if (optind < count)
+	if (argc < optind + count)
 		return COMMAND_ERROR_USAGE;
 
 	*gpio = gpio_find_by_name(argv[optind]);
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 28 Sep 2022 16:26:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odY18-00HPRe-GC
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 16:26:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odY16-0008Ng-UD
	for lore@pengutronix.de; Wed, 28 Sep 2022 16:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/PV3ctUyXANK4yY2Rz5I1vEspKeX//QHGo7pttOgL6o=; b=bxBC8Dz7YIjbhB8TdDonvXaCkM
	rjUv30EUCoOBZRjC9CEkGWDsVbXhGGUp8ieGkjSKb91g7M9vjpf83FY4k2Qmd9Y/Oxpbu1PcSdnbv
	V77+q8qbHr3yzc2wQzWbV2FThjD1bitLkhAjnlIfhtGuJizmUIxdtGMKyDrFB5To9JJrBTorYsES/
	RgIS2DwJWWCVD61vkjgzx1eOyBBD4TGQQXzazLiT21gMWsdGaC7JzTnuA6YUGxi7tjM/I05mPaxPM
	gElQlQ6NJZ6/Nk8Q6jE9RFOr8BVqPrkGV2NfD5gNwA9/P0ZjNifA0X+FrIbPjbutIZO7ahLFVeUWu
	SM+HJaqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXzV-00GfaX-8G; Wed, 28 Sep 2022 14:24:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXzP-00GfYE-1e
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 14:24:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odXzK-0007vZ-9M; Wed, 28 Sep 2022 16:24:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odXzK-0004U1-1U; Wed, 28 Sep 2022 16:24:38 +0200
Date: Wed, 28 Sep 2022 16:24:38 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220928142438.GW986@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
 <20220905103546.1476277-6-a.fatoum@pengutronix.de>
 <lyzgejws49.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lyzgejws49.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_072443_111867_49FE1B00 
X-CRM114-Status: GOOD (  23.68  )
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
Subject: Re: [PATCH 5/5] gpiolib: gpioinfo: add optional CONTROLLER command
 line argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 28, 2022 at 03:22:46PM +0200, Enrico Scholz wrote:
> Ahmad Fatoum <a.fatoum@pengutronix.de> writes:
> 
> >  static int do_gpiolib(int argc, char *argv[])
> >  {
> > +	if (argc == 1) {
> > +		dev = find_device(argv[1]);
> 
> 'gpioinfo' without arguments will crash because this calls
> 'find_device(NULL)'
> 
> | :/ gpioinfo 
> | BUG: failure at lib/string.c:226/strcmp()!
> | BUG!

I fixed it with the obvious change

Sascha

----------------------------8<--------------------------

>From 252c76cdf8c9d516589d72ac228ac0d19fcb2021 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Sep 2022 16:20:48 +0200
Subject: [PATCH] gpiolib: Fix gpioinfo without args

Since a30ae2921a the gpioinfo command crashes when called without
arguments. Fix it by using argv[1] when it actually exists, not when
it doesn't exist.

Fixes: a30ae2921a ("gpiolib: gpioinfo: add optional CONTROLLER command line argument")
Reported-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 7f20709035..2503262d65 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -681,7 +681,7 @@ static int do_gpiolib(int argc, char *argv[])
 	if (argc > 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (argc == 1) {
+	if (argc > 1) {
 		struct device_d *dev;
 
 		dev = find_device(argv[1]);
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



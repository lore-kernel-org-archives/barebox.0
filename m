Delivery-date: Mon, 14 Apr 2025 13:01:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HYk-000bwi-2Z
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:01:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HYk-0006Hy-55
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:01:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=noBMRJxXRg9GZgaILrOBhED7gRQZAHpqGgIfhwdCWHA=; b=QkXHQJ6UjTDBVhtIyXIMi0eaht
	qi62wME1us+Qixs0th44FJmmQFTD+QbW9w/jFOV/GXEzT3wPqq46J210/ILDMWAuRtdNq2tYaazEP
	jd3zVzSnJjFzqJNGIEalldPhhEJOJXuBXWe1G3S4SwQaCGaDbrX6fGd78SWiXv5BDLGWKoD5vqsar
	+BRpfVx5bUq1P0sGITChzWlNxs0W6MQdB2L+RUdDS2E/A40mp5UR0owYL4+/xYjmnaY5UI+84ZrRx
	+lQjdwYaeRHeldjAkFd1duTMPHJhAjDkcAXM2n8OowD2MhXzNy0AE28HAUT75WCkoxibDj2yWOqEw
	runuSDEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HYM-00000001dj9-2tIN;
	Mon, 14 Apr 2025 11:00:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HEb-00000001aE8-3qBL
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:40:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HEa-0007HK-Dl; Mon, 14 Apr 2025 12:40:12 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HEa-000EeH-0l;
	Mon, 14 Apr 2025 12:40:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HEa-000GAu-0S;
	Mon, 14 Apr 2025 12:40:12 +0200
Date: Mon, 14 Apr 2025 12:40:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zmDIRhJoafG3zB@pengutronix.de>
References: <20250414062303.2721390-1-a.fatoum@pengutronix.de>
 <Z_zQZY-ioQUWlIt2@pengutronix.de>
 <45c42b7a-6b52-4862-a204-595092b39f50@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45c42b7a-6b52-4862-a204-595092b39f50@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_034013_962283_2788A4ED 
X-CRM114-Status: GOOD (  26.56  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: have dev_platform_ioremap_resource return error
 pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 12:10:54PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 4/14/25 11:07, Sascha Hauer wrote:
> > On Mon, Apr 14, 2025 at 08:23:03AM +0200, Ahmad Fatoum wrote:
> >> From: Ahmad Fatoum <a.fatoum@barebox.org>
> >>
> >> devm_request_mem_region doesn't return NULL on error on Linux and thus
> >> it should neither in barebox. Fix this.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/base/driver.c  | 2 ++
> >>  include/linux/device.h | 2 +-
> >>  2 files changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> >> index edba037fa2dd..4e361a96c9ee 100644
> >> --- a/drivers/base/driver.c
> >> +++ b/drivers/base/driver.c
> >> @@ -587,6 +587,8 @@ void __iomem *dev_request_mem_region(struct device *dev, int num)
> >>  	struct resource *res;
> >>  
> >>  	res = dev_request_mem_resource(dev, num);
> >> +	if (!IS_ERR(res) && WARN_ON(IS_ERR_VALUE(res->start)))
> >> +		return IOMEM_ERR_PTR(res->start);
> > 
> > Which code can set res->start to an error value?
> 
> It can end up being an error value, because there is actual a MMIO
> region at a high address. In that case, I'd rather we return an
> error, so dev_request_mem_resource would need to be used instead.

Ok, so you don't expect code to intentionally set the resource start to
an error value, but instead the resource start actually is in a range
that is interpreted as an error value (i.e. >= 0x100000000 - MAX_ERRNO
aka the last page in the 32bit address space).

Can we add a comment here to clarify this?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



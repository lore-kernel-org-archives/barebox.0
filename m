Delivery-date: Mon, 11 May 2026 14:59:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQEE-000YgB-2M
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:59:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQED-0002RA-OR
	for lore@pengutronix.de; Mon, 11 May 2026 14:59:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dEeFxjIim1b2L4DprPbFRiwEmxMyAwEKL8zF5ZVF7vQ=; b=Ir4VxM8LKV8m08kzyIprXj6lWc
	g94/AOtLgtfmCwNrFf+d+qaTc9FUgQExh99UmtVd72c3f2X0OtmNMXuNY2U3+8TKPm99cjdgaMGSD
	BjiWI5KIugN0I1LXKdU6zXxZRn5X7WtLtPTZ/6LsvP/hVJiAViLB3O9Ry/o1LsX+4DQIrwqUejGVy
	8Pxy9jIbT57+whZ/15Wbnf7t1We2FCLG0Jqi3Te3B/OHGyi2cFiQJmBPSSk/A3YTeov2awM1JY0sN
	UPZz3wmZg2IYCOQtU2JfV3R+LwXDGjvBzh3v90cE2X1q3ELlx/iR375KC2k6GlFOp/yielo+1VLPQ
	z4MBVy9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQDD-0000000DePi-1mCk;
	Mon, 11 May 2026 12:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQD9-0000000DeOs-2FYs
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:58:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wMQD7-0002CY-UI; Mon, 11 May 2026 14:58:13 +0200
Message-ID: <1797e006-f137-46ae-b083-cadc41e8d73c@pengutronix.de>
Date: Mon, 11 May 2026 14:58:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <aeI471ZfStpltaM6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aeI471ZfStpltaM6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_055816_149384_904E2C61 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: v2026.04.y Long Term Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 4/17/26 3:43 PM, Sascha Hauer wrote:
> Hi All,
> 
> We have a release for April, v2026.04.0.

This version is now included in openembedded's Wrynose branch and thus
slated for inclusion in the next Yocto LTS release.

Like we already test ran with Whinlatter and barebox v2025.09.y, we also
intend to support v2024.06.y for a longer period than the usual one
month between releases.

Our current plan is to support this release for at least a year by
backporting relevant fixes that make it into the regular releases in the
meantime.

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




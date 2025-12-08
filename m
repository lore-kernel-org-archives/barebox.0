Delivery-date: Mon, 08 Dec 2025 08:47:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVyA-0098us-1w
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 08:47:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVyA-0003pd-2S
	for lore@pengutronix.de; Mon, 08 Dec 2025 08:47:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xC7l0wRFkMhvURn0O+D+DOknv4T8cpbINbJBAad+Rcg=; b=Oco1kuDStSdPQYNPh6IkqaNGq2
	ehX7nvyD/k//82YOZAEQaPAPTkT5AH8wDE9zUgbR8W42SUsO3CJbsZqBoaIfywbHQVK2VhT4fxheC
	K1lE04PlT4wIzdx3rgD94ZRtOYbIEmiYO3du82h5ux/5CpMZxji5VGTf+HCuuLbXuP/9F6wbaieZs
	pYasfC5b1AOmjSOj8jTGInmF4mA+IbgtRuDEpQuQUSYM3WoE8SjgtkPNbj9N+M7n3xjo4o8JfHsyW
	+U9I23n/HwrILx7dwWQgoyXx7nAfZxT70rMq1mwRcs8G5CTkpe5S4/8Q110lfrPFv8eKCVtIIhYIS
	q5fZvANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVxk-0000000CmhZ-3tmW;
	Mon, 08 Dec 2025 07:47:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVxi-0000000Cmh8-2DMS
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 07:47:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVxh-0003je-4G; Mon, 08 Dec 2025 08:47:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVxg-004Ze8-33;
	Mon, 08 Dec 2025 08:47:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVxg-00000001Jjm-3j0x;
	Mon, 08 Dec 2025 08:47:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20251114050034.186683-1-chalianis1@gmail.com>
References: <20251114050034.186683-1-chalianis1@gmail.com>
Message-Id: <176518003288.314115.1506520662752164825.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 08:47:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_234714_572985_038EA128 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: derive root prefix from blspec config path
 instead of mountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Nov 2025 00:00:34 -0500, chalianis1@gmail.com wrote:
> Add get_prefix_path() to compute the filesystem prefix of a BLSpec
> entry by locating the deepest /loader/entries/ component in the
> configuration path. This ensures correct rootpath extraction for
> nested loader directories, mixed path layouts, duplicate segments,
> and paths without valid loader entries. If no prefix is found,
> fall back to get_mounted_path().
> 
> [...]

Applied, thanks!

[1/1] blspec: derive root prefix from blspec config path instead of mountpoint
      https://git.pengutronix.de/cgit/barebox/commit/?id=7234dd9aecce (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




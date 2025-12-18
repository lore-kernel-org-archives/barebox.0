Delivery-date: Thu, 18 Dec 2025 09:41:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Zo-00ClZU-0D
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:41:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Zn-0005Gm-Gu
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:41:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5ucpMbF5s98CBcMUUfaGig/JKf+6FXv8LammVdxvsQ=; b=esQFMteubUzw20iKUBsjq2d678
	cWtN8+GcnJzZ16/trF87AvBUPDbBGiAkIs4gH+CZi6ITMCTNmCcsMA3UsZlW1ze+PYNWgUCDqHyJG
	BkOuzoE1TvQ3O+66TT7QP8xNYp7bZJoRIYtMRnPVjSJ5wcYTIfgWMCRyPeGldpdQ3s12BnKybBiBK
	6U5GJk5sVoAYaNNRhXOhsTzuQSwUY5VKFqrjqPXdTWG4K2NdCh/VosfFIbzE0otc7TndvFdjIvf50
	bhJokwcjrcnnq/EA+gc14to5EgzjRTlVmJYCS5SpkwYQXBpbCRkjkE5C8zlhFAUyNSnf7AyDDSz/u
	eDLXvUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9ZL-000000084o0-134S;
	Thu, 18 Dec 2025 08:41:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9ZE-000000084me-3rCJ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:41:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9ZD-0005CM-9N; Thu, 18 Dec 2025 09:40:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9ZD-006FSh-0K;
	Thu, 18 Dec 2025 09:40:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9ZD-00000008P47-0BmA;
	Thu, 18 Dec 2025 09:40:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251217145156.1581678-1-s.hauer@pengutronix.de>
References: <20251217145156.1581678-1-s.hauer@pengutronix.de>
Message-Id: <176604725904.2002824.8140213724729966043.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 09:40:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_004100_967893_6F4B1E74 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] of: replace of_alias_get_highest_id() with
 of_alias_get_free_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Dec 2025 15:51:53 +0100, Sascha Hauer wrote:
> of_alias_get_highest_id() returns the highest alias id used for a stem.
> This return value is not what the callers actually need. They need the
> first free ID instead. Replace of_alias_get_highest_id() with
> of_alias_get_free_id() which returns that value. This variant doesn't
> need to handle the special case when no alias for a stem is found
> in the device tree. In this case of_alias_get_highest_id() returned a
> negative error code which must be handled. The new function is more
> handy for the callers, it just returns 0 which can be used as a free
> id.
> 
> [...]

Applied, thanks!

[1/3] of: replace of_alias_get_highest_id() with of_alias_get_free_id()
      https://git.pengutronix.de/cgit/barebox/commit/?id=68d350dbc4ed (link may not be stable)
[2/3] i2c: implement i2c_unregister_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=aec4d2374992 (link may not be stable)
[3/3] eeprom: at24: unregister devices in error path
      https://git.pengutronix.de/cgit/barebox/commit/?id=ebd2558bf99b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




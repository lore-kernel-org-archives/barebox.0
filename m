Delivery-date: Wed, 03 Sep 2025 08:20:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqw-007Y5c-0t
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:20:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqv-0007Zc-2t
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:20:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UaX1SEWrWnDCaAVkPmNRjfXG+yydgd623aNjuHMPtRs=; b=BCY9JsqKn5kWE+uh4nL/RUuozP
	5u+OSUCwdZOv3qRJL/GZZryoQl5ImJplYf/oH/PqSZ/TLGOh/FT1WXY+BX5xo+4MYocH7z7ebrqwK
	84/iKQYTAzjs83y86nuSnzAF0iYg/Bv5w5JFi02Ot0bYZZ4Lamts1tVpTfT6ljFSnU5dNu/jTANV5
	zQpUwmI7ELPI5Kkfa9hqFXo4yF0MOO8HoIWRyCZChM4ogV8R4WKi1SR3fZ+nZjXSYUrg+nMXeglZs
	DNbcVg0I/yoDc8LLHHcXuyYdrM3X2BVCz9iLz0TR7E7v9ef93E0TAm/vOTZH31Ac9QWV3+i4rEBQz
	lUN3UwbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgqT-00000004Z3e-1AWG;
	Wed, 03 Sep 2025 06:19:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utglv-00000004WkO-1Lif
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:15:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglu-0006MN-3M; Wed, 03 Sep 2025 08:15:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglt-003VxV-2y;
	Wed, 03 Sep 2025 08:15:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglt-00000009kbr-3crU;
	Wed, 03 Sep 2025 08:15:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250901115054.2514841-1-a.fatoum@pengutronix.de>
References: <20250901115054.2514841-1-a.fatoum@pengutronix.de>
Message-Id: <175688010585.2324059.7778453659121905314.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:15:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231507_365982_8502BB1A 
X-CRM114-Status: UNSURE (   8.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] vsprintf: drop printf hexstr fuzzer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 13:50:53 +0200, Ahmad Fatoum wrote:
> This fuzzer was an early proof of concept as can be seen by the
> useless initialized variable and its name is misleading:
> It only tests the hexstr feature.
> 
> Unlike other tests, it also spams stdout. Let's just drop it for now and
> perhaps bring it back in future in a more complete form.
> 
> [...]

Applied, thanks!

[1/1] vsprintf: drop printf hexstr fuzzer
      https://git.pengutronix.de/cgit/barebox/commit/?id=21f789a18b61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




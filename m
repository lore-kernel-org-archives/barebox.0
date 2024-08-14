Delivery-date: Wed, 14 Aug 2024 10:53:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9lB-009Trw-1A
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 10:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9lA-0004GM-Ox
	for lore@pengutronix.de; Wed, 14 Aug 2024 10:53:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fUQpvih5bao8oK/pREqA1CdhzSOaR+5v3g8awVbls1c=; b=WtaUje+Tw+tqsX+ykqVONBlpjV
	dWoTocwzXZICbb4pLKLfSeDwJDTS9rz7Puvp33W6m+YUJ1HxDAQPXwMlmhXtLs3TIB81d1dpXDLV0
	EEkIcAC1i0zSksjEYyKoO87q4U4wkzpbuGRCk6iq0QcV0pTw1+jV8yKfMcyI4O1nFpWDRLwAa2S9H
	HodK6+rXNn4Dv0blUqe+pWIP4vrT8kpMAejsF71XLd7tKy4WrXbGqD19MqsBeUJ1wzFjvFuanBrI0
	uRg7CStG9w12g8YC0WWxXCqa0K/ncRPAuNOo/ZAJKdy+PO0dJpCmdzde2BQva4yOT1ccUTvHopaT3
	cYaB2HjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9kg-00000006HRw-3M9t;
	Wed, 14 Aug 2024 08:53:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9kd-00000006HRX-3hrl
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:53:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9kc-0004C7-C4; Wed, 14 Aug 2024 10:53:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9kb-000Jyo-VQ; Wed, 14 Aug 2024 10:53:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9kb-005QEm-2x;
	Wed, 14 Aug 2024 10:53:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809141959.313914-1-a.fatoum@pengutronix.de>
References: <20240809141959.313914-1-a.fatoum@pengutronix.de>
Message-Id: <172362558191.1292477.4999119873328319220.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 10:53:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_015303_954500_E307C06D 
X-CRM114-Status: UNSURE (   8.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] fastboot: print all variables only on getvar:all
 and not its prefixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Aug 2024 16:19:57 +0200, Ahmad Fatoum wrote:
> strcmp_l1 compares up to the length of the first arguments, i.e. it does
> a prefix check. For this, the prefix, which is usually a string literal,
> needs to be the first argument.
> 
> The check for getvar:all doesn't follow this with the result that all of
> 
>   fastboot getvar 'all'
>   fastboot getvar 'al'
>   fastboot getvar 'a'
>   fastboot getvar ''
> 
> [...]

Applied, thanks!

[1/3] fastboot: print all variables only on getvar:all and not its prefixes
      https://git.pengutronix.de/cgit/barebox/commit/?id=aff71a944811 (link may not be stable)
[2/3] fastboot: retire strcmp_l1 in favor of str_has_prefix
      https://git.pengutronix.de/cgit/barebox/commit/?id=bec2074b771d (link may not be stable)
[3/3] fastboot: avoid console_countdown_abort for getvar request
      https://git.pengutronix.de/cgit/barebox/commit/?id=23f330f1c8f3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




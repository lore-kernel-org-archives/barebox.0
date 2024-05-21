Delivery-date: Tue, 21 May 2024 12:52:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N6u-00C82a-23
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:52:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N6u-0006ZX-2o
	for lore@pengutronix.de; Tue, 21 May 2024 12:52:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfIUTMi7Lr/xC7/RaiVEFDcVaaV3rHbbcuW8xzNVPIk=; b=NdTIVxFYY9fxqyA0ry4luiRkNc
	tnsr+Eaw9QBZ10tGb354bEgUgu+LNarm35iyn0YHSNRd6nzJuh4bVrra9Bp7/J7vDLdoIDhwSE2m9
	eCPdbLdr16n5ScebIJCXdolcCFw6Y4JHIdSyP9OCL9Vz7+gtzaKLQFNTygqgFeO9w/zdEh6KCfz9X
	utf43vVi+0WLLheDd4Pkbt8JwUjBCdiQdmgUaZA2ggCvC7SseN7BxwVcgVcJNiRjSb/0JVjNYSXTk
	5DxQitjkI92Aij4MVvyL+StJXsRYgF1+dXJxszQFGbvjMbwQqR5VQ+tx86/kgFN3/yo3yFyrbdBC8
	0JnyjHAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N6X-0000000HBEG-1AjV;
	Tue, 21 May 2024 10:52:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N6U-0000000HBDl-2n6D
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:52:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6S-0006Qr-QQ; Tue, 21 May 2024 12:52:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6S-002NUd-Ai; Tue, 21 May 2024 12:52:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6S-008KUR-0s;
	Tue, 21 May 2024 12:52:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517062214.3301954-1-a.fatoum@pengutronix.de>
References: <20240517062214.3301954-1-a.fatoum@pengutronix.de>
Message-Id: <171628874026.1985338.12487973384556350231.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 12:52:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_035222_812378_5A951B99 
X-CRM114-Status: UNSURE (   7.38  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: layerscape: fix layerscape multiarch build
 with DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:22:14 +0200, Ahmad Fatoum wrote:
> Layerscape was added recently into the CONFIG_ARCH_MULTIARCH (really
> multiplatform), but the required changes to DBEUG_LL was omitted, which
> breaks DEBUG_LL use for other platforms that aren't layerscape.
> 
> Fix this, so DEBUG_LL may be used for either layerscape or other enabled
> platforms.
> 
> [...]

Applied, thanks!

[1/1] ARM: layerscape: fix layerscape multiarch build with DEBUG_LL
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8fa6c2afcb1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




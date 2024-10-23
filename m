Delivery-date: Wed, 23 Oct 2024 14:46:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3akm-007skl-2i
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 14:46:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3akm-0000rm-9H
	for lore@pengutronix.de; Wed, 23 Oct 2024 14:46:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X4gR5nLcDPh9aAdf1RfOECAvllTvekXk2uxjHfsIygg=; b=0OpFDgCdhJph0bz3Sw2Xe4pg28
	wMQcp8bH2vm0txtM04/6bLuZFZKZGBUcEX/jXFERinBYZGOnjxD5MRqSosrX0E5VG23yWy3EL1hb2
	VASVXvZv/6wCdyv3F9AGt3yukWZBTlXJHXfE+FyAZ+Cg/3p+xRBVy9U1wkbwrVABba3+RtyCQ0lfS
	DSvS35vZk8JKcTTaX12tmhMCGMWeNSWgQdvezT/cyJTFzNnYXiKLBZMSBA9BiwIe6J9ZXhU2UhzyB
	qHTeYBPBV2FVkwPBaGlY2d3iZhsvEzqNBTiAhstQM7+RGuIVCBqIf0mGjlmoDJC7xq7Pve5vJV5jd
	wWdmSzxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3akG-0000000ENCE-3LDv;
	Wed, 23 Oct 2024 12:45:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3akE-0000000ENBI-1naF
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 12:45:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akD-0000jN-9T; Wed, 23 Oct 2024 14:45:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akC-0002I4-3A;
	Wed, 23 Oct 2024 14:45:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akC-00GIIM-30;
	Wed, 23 Oct 2024 14:45:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Julian Vetter <jvetter@kalrayinc.com>
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20241023085432.1593840-1-jvetter@kalrayinc.com>
References: <20241023085432.1593840-1-jvetter@kalrayinc.com>
Message-Id: <172968754492.3883549.17547408594798949940.b4-ty@pengutronix.de>
Date: Wed, 23 Oct 2024 14:45:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_054546_515778_6D0808DA 
X-CRM114-Status: UNSURE (   6.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kvx: Split sfr definition for kv3-1 and kv3-2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 23 Oct 2024 10:54:31 +0200, Julian Vetter wrote:
> On kv3-2 some SFR numbers have changed, were added and/or indexes within
> certain SFRs have changed. So, split the file in two, one for kv3-1 and
> one for kv3-2.
> 
> 

Applied, thanks!

[1/2] kvx: Split sfr definition for kv3-1 and kv3-2
      https://git.pengutronix.de/cgit/barebox/commit/?id=977c2c0f1dc8 (link may not be stable)
[2/2] kvx: Request additional owner bit-fields on CV2
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4912a43991a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




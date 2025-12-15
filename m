Delivery-date: Mon, 15 Dec 2025 08:23:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2vr-00BeuP-1c
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:23:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2vq-0001lN-5w
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:23:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FvexwbPJMuDRHZJ34eHQF2jL30m+Iwpae1pd/nkt7HM=; b=MvJCNCrLWd4iB7epcL+6uqM1vw
	pQPJnmSeErkh6CSWKDk+hnGMWhgA3LwfIoELAligDLeMkaoFtE3tK29r6quzTMO+UOwnW70XB1mje
	enaP/pUDljIWRvdJDzBwOj35lUmjinT9UJfP9ynRITFhLiwvki+n6P+9nv+azfTx19neLnsflWWRI
	2TEA3zrBRp9H+IW26h9Dx+TEOSRhSL8W+yetL8PP3fU6JDzQK+uF/fdJvjJBTOG9oVFmLSg9NHJDE
	w+DV6jBeBTCx5SsKUeVcm56fDi4FCY2c5f76rtfcMv5ygSzTk72B8aSihIGlV84hxxZJWhzQj+i+N
	Ly87iPgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2vM-00000003C8e-1Ome;
	Mon, 15 Dec 2025 07:23:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2vI-00000003C7t-3nne
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:23:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vH-0001fi-B5; Mon, 15 Dec 2025 08:23:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vH-005k2i-0U;
	Mon, 15 Dec 2025 08:23:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2vH-000000011A6-0PGT;
	Mon, 15 Dec 2025 08:23:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211171706.2369329-1-a.fatoum@pengutronix.de>
References: <20251211171706.2369329-1-a.fatoum@pengutronix.de>
Message-Id: <176578339109.242787.15072570892235607878.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:23:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_232313_085790_82A47832 
X-CRM114-Status: UNSURE (   8.60  )
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
Subject: Re: [PATCH master] param: make setting a parameter to the same
 string value a no-op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 18:17:05 +0100, Ahmad Fatoum wrote:
> setenv("global.bootm.root_param", getenv("global.bootm.root_param"))
> triggers a use-after-free, because the value is free'd before being
> duplicated and allocated again.
> 
> Let's just early exit in this case as there's nothing further to do.
> 
> This was noticed by KASAN when bootm_data_restore_defaults restored
> global.bootm.root_param.
> 
> [...]

Applied, thanks!

[1/1] param: make setting a parameter to the same string value a no-op
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8cfce813f2f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




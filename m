Delivery-date: Fri, 20 Mar 2026 07:35:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TSO-002vym-1H
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:35:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TSN-0001e6-Os
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:35:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tIeeoFjcVUV0CaUJeShxyCKjdewQV/kIorsIYjS0Lh4=; b=ctv+kxKgXNvyh3PqCezItm8YeC
	b7je9mNPB8NNArO4rebtKRkVTLdUrS5GVz/Y9rVd/Vw6Jf2xj2lqbBAos0oN5gGKG1iGBjOwp87vi
	SCulhckCts4DSK2RkIE1fkbgDo/7rnYSzkinJ1B3idWtKZ1AVX0kxjb/n1UHnqdyY2AEDxn/Uast1
	gh/niU5+OLXwo9As8UqKo79Sz2aYUT/o3DR88I2Uq+UG8ShDvJZtA3h3c6uwdn8iPrMnDA2MgCJjm
	eVpOCT7rtqvXo9bscNYG8sh9LMolju0dRD0j8Ww6Wfo7GIs7oDL4fchVcBmZJX9fXRh2nq1hDjwrY
	LLlNJ9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TS0-0000000CBF1-41GZ;
	Fri, 20 Mar 2026 06:35:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TRy-0000000CBEY-2IIT
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:35:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRx-0001Y3-1X; Fri, 20 Mar 2026 07:35:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRw-001CPk-2m;
	Fri, 20 Mar 2026 07:35:12 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRw-00000001OzH-3OnY;
	Fri, 20 Mar 2026 07:35:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260319070304.1965024-1-s.hauer@pengutronix.de>
References: <20260319070304.1965024-1-s.hauer@pengutronix.de>
Message-Id: <177398851280.333973.563579094737525648.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 07:35:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_233514_591240_AC0A2626 
X-CRM114-Status: UNSURE (   7.24  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Mar 2026 08:03:03 +0100, Sascha Hauer wrote:
> We do not implement OPTEE_RPC_CMD_RPMB_* which are needed for the new
> in-kernel RPMB handling which we don't implement. For now we emulate a
> tee-supplicant for RPMB handling, so there's no need to warn about these
> not being implemented.
> 
> 

Applied, thanks!

[1/2] optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d38c4eb8b6e (link may not be stable)
[2/2] optee: skip registration of already known TEE bus devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f3d9ddb1892 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




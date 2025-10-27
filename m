Delivery-date: Mon, 27 Oct 2025 11:13:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKE5-00CIqX-30
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:13:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKE5-0002W8-D0
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:13:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KNbGEX4ocIYC9eYYs3OWFU1+yvKpNDRZuDt8a43x4Ek=; b=fhGraQHdPdZoiS6cmYGXi6QYbk
	TsvqyJ2wXmhfRTTMdfniTbvr1Zc/jGvnSiFADIiQsPA86e2MpP4kyX859aX89xIvfqXQfUgv+jflt
	oK7cdEK/aQieY71u2McMtlCaetjNuL51CNtLDsIMIVlZcMMw9sXVaa3pCWSBylOX3vPp9uTRht5BH
	SwTLDGkZWLRvWkagxqZAWbLu9BZ1LV79tguWJ29IrOgNFEcS5JlxWJSW/J62MPVp2t1rA6/eaYlCu
	FSnoM7U209ZsAtgGjryCVrUpAzZS0aFDAhXJXC9Ja0Txu0wp1fdLA+kDk2etljfI0zyjREAeUTceY
	X+H0TF2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKDR-0000000DdDW-262N;
	Mon, 27 Oct 2025 10:12:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKDP-0000000DdCS-2UGk
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:12:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKDM-0002Q6-G7; Mon, 27 Oct 2025 11:12:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKDM-005ggU-0z;
	Mon, 27 Oct 2025 11:12:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKDM-000000012g0-2scS;
	Mon, 27 Oct 2025 11:12:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251023154202.1877854-1-a.fatoum@pengutronix.de>
References: <20251023154202.1877854-1-a.fatoum@pengutronix.de>
Message-Id: <176155995623.248581.1621113216788260725.b4-ty@pengutronix.de>
Date: Mon, 27 Oct 2025 11:12:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_031239_654440_63E13923 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] security: policy: remove duplicate
 SECURITY_POLICY_PATH symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Oct 2025 17:41:59 +0200, Ahmad Fatoum wrote:
> Likely a side effect of rebasing, the symbol SECURITY_POLICY_PATH was
> introduced twice:
> 
> - First in commit b720fb9a905d ("Add security policy support")
> - Then again in commit 79cd2e4fe633
>   ("security: policy: support externally provided configs")
> 
> [...]

Applied, thanks!

[1/1] security: policy: remove duplicate SECURITY_POLICY_PATH symbol
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddc90db122ce (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




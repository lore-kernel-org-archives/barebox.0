Delivery-date: Mon, 23 Feb 2026 10:22:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS8o-004mT1-10
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:22:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS8o-0001uf-Lh
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:22:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8UJYH7Wlq667QCmfW1V+edpaaHRXbUhefCDT3W8ecR8=; b=l1LPoOyulM6n82tOzOA37lG9wN
	gl5wykzlfY+q5BgcHrjXy7rROOZ+Vrj/5G5FZEwJEvkhGrZMFCAxfQkB+s6nhQ1TCUmP/cepqO/Gi
	kcMI3q4Dbn0ogSDPKXsLScz+OB3xbXEtsXncUWCauSw2jNi/VftDV7PmEJFJgC07398fcB9lk9Wi3
	Rvrfr+MzjjMcOrDxZDTpTlBgSkmOwZVNji3cmie3WtnD+ZGqoQYmCo4hPIKAd+H/ysUzKtECmfZ+n
	9gtzeZrSOco39h40E6OJeXW/1HrjvO8r+k81YHqiZRNziuyEckfV2mjEsHD3bAFHW1Qzn+ndZCXNT
	IkvviM1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS8Q-0000000HWuK-1Pfm;
	Mon, 23 Feb 2026 09:21:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS8N-0000000HWtj-23ln
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:21:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS8M-0001rd-0u; Mon, 23 Feb 2026 10:21:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS8K-002CiF-1a;
	Mon, 23 Feb 2026 10:21:41 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS8L-00000000oEP-3H2i;
	Mon, 23 Feb 2026 10:21:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260216-v2025-11-0-topic-optee-imx6-start-v4-0-b73279a8a971@pengutronix.de>
References: <20260216-v2025-11-0-topic-optee-imx6-start-v4-0-b73279a8a971@pengutronix.de>
Message-Id: <177183850177.193080.396111955553503034.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:21:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_012143_536468_73E1FA5A 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/2] Add generic OP-TEE loading for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 11:36:22 +0100, Fabian Pflug wrote:
> Add a generic way to load OP-TEE from i.MX6 CPU's with config options
> instead of board and lowlevel code.
> 
> If the generic i.MX6 OPTEE firmware gets enabled, it will be loaded
> during boot, if the boardcode is using the imx6*_barebox_entry function
> to start barebox instead of the generic barebox_arm_entry. These will
> make sure, that OP-TEE is configured correctly and if the space for the
> overlay is configured, they will also apply the devicetree overlay
> provided by OP-TEE.
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX: scratch: add generic init for imx
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4f94c589dab (link may not be stable)
[2/2] ARM: i.MX6: load optee in PBL before barebox proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f676490856c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




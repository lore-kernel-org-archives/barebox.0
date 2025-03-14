Delivery-date: Fri, 14 Mar 2025 16:58:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7Qj-00E46S-1o
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:58:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7Qi-00028n-AX
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:58:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UBLTEACedOuvU6coR7OGhVnZO6LawMDDYr/UwrS4ZcQ=; b=cvsychKGMcd/kFzzGE53kTCu5S
	aXGdrUldr4MLiff/WyxktTXIMv0QR56GaLurjTpW6YiXM4Vrjha2x8VPwumhwa+7Hx6D/+XylgaIa
	uZ4y8qXkxcH3Cu8mVwMOniiEZEcPpmpZi1KuhByXfYbaHVp+43E1eKo4CXybF8mbjDJTZ3fQPRfwB
	4r7A6fcND97N3o28nrLYaVlBaCsd/A59Tl7t+8mizM5FED5s6X5H85ybUV84e1Dyxh4YF1rP+gJ7r
	0USgupS8zsMzlnxmDz27zZcOXZBb9I89YJfIHPN5eVsIKNH7zzStnOIfNa+pw2RIxmlYeVeALYbxn
	ROgkf/Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7QC-0000000EeH1-07Ih;
	Fri, 14 Mar 2025 15:58:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7Lp-0000000EdUQ-0Uka
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:53:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7Ln-0001NV-Sf; Fri, 14 Mar 2025 16:53:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7Ln-005j75-2F;
	Fri, 14 Mar 2025 16:53:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7Ln-00HGfY-22;
	Fri, 14 Mar 2025 16:53:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250311080925.1439519-1-s.hauer@pengutronix.de>
References: <20250311080925.1439519-1-s.hauer@pengutronix.de>
Message-Id: <174196761162.4115641.614461956565019407.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 16:53:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_085333_157361_9AA01A17 
X-CRM114-Status: UNSURE (   6.70  )
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
Subject: Re: [PATCH] bootm: let BOOTM_OPTIONAL_SIGNED_IMAGES depend on
 BOOTM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Mar 2025 09:09:25 +0100, Sascha Hauer wrote:
> The purpose of BOOTM_OPTIONAL_SIGNED_IMAGES is to select
> HAS_INSECURE_DEFAULTS, but it should only do so when BOOTM
> support is actually compiled in.
> 
> 

Applied, thanks!

[1/1] bootm: let BOOTM_OPTIONAL_SIGNED_IMAGES depend on BOOTM
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9a7b77e8509 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




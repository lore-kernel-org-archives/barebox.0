Delivery-date: Tue, 16 Apr 2024 12:30:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwg4j-003Dgd-31
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:30:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwg4j-0001Zi-CK
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:30:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=893Rr0mCEkn3xrhD0Arh8a0U7xswIeIV9s8a8T0/1M0=; b=d6SvhcZaTjJbQJvfl9MOKC3fQF
	EyhMOSeMatLmbS66LUjANqtWC/vduuaSf4udCCzjRn8DCi+TylmFr4auJv4l46JHpQEu418aYPsRG
	FjdkgIY1/THpStsGmaYeJUpadpmlEa8GlhghLSn7u8Ox5iDshcL3ljh2kFTSkDcoeaPS2lhTHA0ir
	SoDkhU0gaxXceYAN8lBZkKJr5qIq8cg6MnTdaQyFWTVMBDcucwTDtz0Cig4Bwk6dZN3pQ2lEeRTLJ
	zUOT+rosHXvtU/RJd/JXg0m7ZuuGpTPPYM8WglqjLrDdY8f0LFsWnKCL34vqOMeUJA/8MTlJ5S28q
	BIr6G4Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg4H-0000000BmyX-2fcF;
	Tue, 16 Apr 2024 10:29:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg4C-0000000Bmw8-2HJZ
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:29:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg4B-0000mK-70; Tue, 16 Apr 2024 12:29:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg4A-00Caja-Qw; Tue, 16 Apr 2024 12:29:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg4A-00AlSO-2V;
	Tue, 16 Apr 2024 12:29:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053120.368168-1-a.fatoum@pengutronix.de>
References: <20240415053120.368168-1-a.fatoum@pengutronix.de>
Message-Id: <171326337077.2565618.646846108644135729.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:29:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_032932_787295_120C6E67 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] partitions: efi: fix NULL dereference on
 corrupted GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:31:20 +0200, Ahmad Fatoum wrote:
> When processing a corrupted GPT, the initial magic check may succeed,
> but later partition parsing may terminate unsuccessfully. In such case,
> we returned an invalid pointer that happened to be NULL, but didn't do
> much about it leading to a NULL pointer dereference.
> 
> Fix this by explicitly returning NULL and correctly propagating it.
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: fix NULL dereference on corrupted GPT
      https://git.pengutronix.de/cgit/barebox/commit/?id=7358ef660dc4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




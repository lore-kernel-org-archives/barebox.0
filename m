Delivery-date: Wed, 13 May 2026 17:30:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNBXe-001Il0-1d
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 17:30:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNBXa-0004Bi-8c
	for lore@pengutronix.de; Wed, 13 May 2026 17:30:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fn9ahUqgNSO4taKVyD3JrEX1tVvrQKv43dFSPLyxXGI=; b=EPfbTOyZ9yDkhdBldXEERiTM4D
	Ef6yuTyZ7lC286Mae8dEILb3Gh2AOSz9QEJVAlAZsTEJsnMREYi1pOo+YAWFAZ/0GA3OK9qhBoTyL
	m8XyzCyjlRUqH2wJnJzaASajb06DeOV51o7fu+8uqNqk+SBSZSMdnC1tANrnWMWEHS2v5qSqEDAVp
	RdwZbd0f7KWU9dqkPwqbHpH+eTuCDOMRs6U1WOj+KJ3yvliHCqKltAJKRYp2BY61GxUF43Nx88htl
	JDFEh03lVaUOA9wEqXjRsEGwRd97uug1rUXd78PMUrV1+Nm77xvwJTLY417lZpiUKz0n/SKURY5RV
	AJVEqP1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAFE-00000002sPf-3Bck;
	Wed, 13 May 2026 14:07:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAFD-00000002sPV-417t
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 14:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Fn9ahUqgNSO4taKVyD3JrEX1tVvrQKv43dFSPLyxXGI=; b=Im4eghjcohPDIYrHS2t52A7SIa
	/5W738YwlgS/hoRIGQqcV34qu29AjU3XfoOPPC4dxdaEG+RSdL8D3eMu5+QymDYusb9wvMb5pZLcz
	2bz14Y/mE8+t+82jK/DUEk1nMfcZ97yDJAKzallTI9odvq5keE6SoyZ6mRrqGHlxpLAdirm6uow/d
	W3SfxBpVq5AGf3Y3O+Ied1rdscWMlTvnlhFwnU+1FJHEoB/BSNVe95pR9OMDYR/p4EfqzuTwpe+f/
	TLSJerOf7M7MOUy6Rd6q/dQUI75zeDwq1UEL3AkuhAtm22p1sUEHQKPd/v2scH23tGD3jIZmFMtne
	ubwWiKkg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAFA-000000007PB-24Gd
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 14:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFA-0004FQ-A0; Wed, 13 May 2026 16:07:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFA-000bny-0l;
	Wed, 13 May 2026 16:07:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFA-00000001DZd-0jhr;
	Wed, 13 May 2026 16:07:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
References: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
Message-Id: <177868124416.290474.16982266272041035324.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 16:07:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150724_895821_D6FE58DA 
X-CRM114-Status: UNSURE (   8.01  )
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
Subject: Re: [PATCH 0/2] arm: socfpga: agilex5: fix stack in entry function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 14:22:21 +0200, Michael Tretter wrote:
> The entry function for the Arrow AXE5 Eagle board places the stack at
> the end of the OCRAM. However, the board firmware uses the same page for
> handoff data for barebox, which is read after barebox is already
> running. This may cause data corruption if the stack grows into the
> handoff data.
> 
> Patch 1 fixes the stack location for the Arrow AXE5 Eagle board to avoid
> corrupting the handoff data.
> 
> [...]

Applied, thanks!

[1/2] arm: socfpga: axe5-eagle: fix stack location
      https://git.pengutronix.de/cgit/barebox/commit/?id=f566c8ecc9af (link may not be stable)
[2/2] arm: socfpga: agilex5: add helper for entry function
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5840df6ff29 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




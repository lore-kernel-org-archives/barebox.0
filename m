Delivery-date: Tue, 27 Jan 2026 08:46:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdmg-005p7i-1l
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdmf-0003hw-JQ
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JY5kPECqnaE/tWM+BI5MBTMe0mezshGtaDd9Da2agUs=; b=Qq9TIDNhscljyuuSbxTtbZVXR9
	LyAKvkDeHgSAQX/8CUGuRAniPLMi6Y/t7u4DwDD57/IqJ2VWW2uEAtkoKdQGz5TnAFMYO07EwfOeb
	E/5O5dR1FPF+GSJvRccu+vktLb4E/XvbzKz9hcfupF/kj1LRYyFPNx4g2EFiB1M0gRq4gre9Wddqs
	A5oohorbjBc1bQgUks+As91XvSJrI838mRBiF8NWoTjdm4piiGYXWtqFlgeAbVaTd7x6MnHhLiIS8
	x9LRRI5SetULvh+honcGxyjrR/Xz4NICgTtb/mts+fArQY2BfqE6g8o4xmGDTxDdq7OGXSbeLyxSG
	Zwn0q3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdmC-0000000Dng8-03Is;
	Tue, 27 Jan 2026 07:46:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdm8-0000000Dnfn-13va
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:46:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdm6-0003dv-DD; Tue, 27 Jan 2026 08:46:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdm6-002iG2-1q;
	Tue, 27 Jan 2026 08:46:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdm6-00000007WLB-1C2c;
	Tue, 27 Jan 2026 08:46:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ian Abbott <abbotti@mev.co.uk>, 
 "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260126105234.1378994-1-a.fatoum@pengutronix.de>
References: <20260126105234.1378994-1-a.fatoum@pengutronix.de>
Message-Id: <176949996981.1792182.8212895842063088564.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:46:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_234612_301512_D638413A 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: readlink: restore support for non-existent
 last component
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:52:33 +0100, Ahmad Fatoum wrote:
> The documentation and commit a6f379599227 ("readlink: Improve -f handling") hint
> that the last component missing used to not be an error. This is not the
> case currently, so restore the original behavior and add an -e option
> for the current behavior of all components existing.
> 
> To ensure this doesn't regress in future, also add some AI-generated
> test cases.
> 
> [...]

Applied, thanks!

[1/1] commands: readlink: restore support for non-existent last component
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2bec56be268 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




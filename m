Delivery-date: Mon, 15 Jun 2026 09:49:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ24I-0063ue-1R
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:49:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ24G-00059v-S4
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:49:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D98jQd9xWm9u4U38L1WrkxgJ7vR7okFQMaxGU8oyenY=; b=fADf/ovgtwxqnZXrlm7XBJaAcC
	ChDg+JyZLyvlBHuAZ+405U6b6C1y2JDWgEQMyowNloMMY9SxDXVSEqWoUBRdr61XAWW/z1I8B9ISt
	lXhPj2A45YCPQ+JBMkZg3WJ1oGWSVzAilKgFCyIHn3/gOjDf9IfxzvV0sowo8Hn53LICiAPWFjJa0
	6QCQ5tke1jgXB3LiYnXKR5WMh1hnjEYs38yzKSgEx2IbiW1Q0nbl5YzJAB9Boj4O2MC1juK8IRKv9
	fD/TnIGWL5y6vXBhlSO98lP/QBWVY6GEtMG4e08ByR9uWoa/S0jO/X/oM8pkIL06BGgnS+wKM59i7
	T+CEQDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ23F-0000000DoTd-3YKG;
	Mon, 15 Jun 2026 07:48:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ23D-0000000DoSw-0NpK
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:48:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ23A-0004qa-QE; Mon, 15 Jun 2026 09:48:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ23A-002pJ9-2T;
	Mon, 15 Jun 2026 09:48:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ23A-0000000D2A1-2tiy;
	Mon, 15 Jun 2026 09:48:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260611212206.4103255-1-a.fatoum@barebox.org>
References: <20260611212206.4103255-1-a.fatoum@barebox.org>
Message-Id: <178150968468.3106538.14064593565376884786.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 09:48:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_004807_134204_A1F9933D 
X-CRM114-Status: UNSURE (   6.18  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] efi: loader: release bootm OS staging
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jun 2026 23:22:00 +0200, Ahmad Fatoum wrote:
> The initial location of the OS image is currently kept reserved until
> it's reclaimed after exiting boot services. This is unnecessary though
> as the relevant parts of the PE are copied out anyway.
> 
> Therefore, free the original OS image to leave more space to the
> decompresser.
> 
> [...]

Applied, thanks!

[1/2] efi: loader: release bootm OS staging buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=a290d0f8bc7a (link may not be stable)
[2/2] efi: loader: bump memory map key on FreePages
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbe4bd04edec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




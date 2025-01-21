Delivery-date: Tue, 21 Jan 2025 09:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9X3-002ZrW-17
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9X3-00084v-Gd
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:22:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k5o5VbMIDzT2oX2xtm0B61c34ZzG0ifQjk6pp1xt9i8=; b=Zxx1c5TwKwsH6UQGhdLs9kfMb9
	vTYj36ibX0Hb1jP6uhrWkPPArByUhEYXCAX3egeI/n0/ca5GDXs8r3Ea1g0moL0nc34gG7OgiWTEK
	MlDCw6xcMUYTFJ3+0Aeb62IoetueN5n8WfN3t7gTeWuq8MFOBNnaBF+M3bD9HNTcs7x/1kQuQ1DBn
	YJb84yGWuidrTmDUaf3Bj4myDk+pcbSBTFVS3NntNVsepVvS+oxoHnZ6N4XLsdn+UL1PQS2IQf5LI
	LexnpKVKUg+e3J/MmL1JHzUrfaJwyCVXdzouTYPTuWQjjv70xEtKtcPLnE6+vtKEsI9WNbP9D2PqY
	DEwxtKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9Wg-00000007Fbb-1cIN;
	Tue, 21 Jan 2025 08:22:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9Wd-00000007FbE-3e16
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Wc-0007w8-HH; Tue, 21 Jan 2025 09:22:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Wc-0014lH-18;
	Tue, 21 Jan 2025 09:22:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Wc-0013eU-0v;
	Tue, 21 Jan 2025 09:22:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250116141148.301230-1-a.fatoum@pengutronix.de>
References: <20250116141148.301230-1-a.fatoum@pengutronix.de>
Message-Id: <173744773828.252265.8162965528675452631.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:22:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_002219_937576_71331A5C 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] dma: fix fixup warning for SoCs without
 /soc node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 15:11:47 +0100, Ahmad Fatoum wrote:
> For SoCs without a /soc node, any DMA coherency fixups happen at the
> device tree root. The root's full name is an empty string in barebox, so
> this expectedly fails.
> 
> Handle this case specially.
> 
> 
> [...]

Applied, thanks!

[1/2] dma: fix fixup warning for SoCs without /soc node
      https://git.pengutronix.de/cgit/barebox/commit/?id=599fac02a837 (link may not be stable)
[2/2] kbuild: remove stale references to README
      https://git.pengutronix.de/cgit/barebox/commit/?id=da7191a3fd74 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




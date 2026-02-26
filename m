Delivery-date: Thu, 26 Feb 2026 13:07:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva9M-005sD3-2W
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:07:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva9N-0006GC-4Q
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:07:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hxbR2teg6b3CWKJXA/qDSEytCtNA8/J93UpPJkEYBc8=; b=U877NB3PAQIyNgYhLzeZPtsdDq
	W+Zvm3Crw2wyMSvKK7upPgxnaBK3I4e/bTAu6gR7lmK/VFazEPEL1vZfKeXu7xXoaPs0BKThQPL0f
	z41FtC/e53OddisY/aY0CSSR7o0Gygb9BblE0/HbMXlURyPbeex/KRcPAB2OUqQqnz0p/kCnpXHYW
	OJyzEB2MX5cDcnQGQ6szFC0rA8myVNClRdpTxSkmJyeqItao5MgNkNhIWoqkghmuDWFNQHz95UVMj
	Jc6G8Z6vyK89ytQOGjkina4Gb8Wo2fVUB5kaojP/5C2M4i/+8jSjEOJUn5Y43nm3IQevXDlKdmKxb
	8tzqJbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva8w-000000065ct-3V9U;
	Thu, 26 Feb 2026 12:06:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva8v-000000065cl-1SBf
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 12:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=hxbR2teg6b3CWKJXA/qDSEytCtNA8/J93UpPJkEYBc8=; b=fowZYoO1IT78M4gTOW5pdBA9fs
	K01liR7rT29U2+NhHQYu+nhQGMD45xwPYlJTonX0l8KYjvqBwAqmbJKL/WBMcPEEqkhVmR68bRi87
	J7zKcHQTF6IOPvV5scPhXErWO1/0cVdAxP4KnJLa6I3uNPmlz4Q5gaKhmyOGlYlRx9AowlREGTmvg
	/GfOHsaM6C9juQf1nrSPsjL7QQHtSpU/2UUL2cw8t77jUhUw/Mi9N+vWtVQTMmq/NRYoCz+Z/yS4a
	D33Otxt/2TRR3jPL8PgYhC6/Ki6NkdnLhHGzHUyxN0bw6HNgJG9OA59gqBK3aMjf4m8QbqHg3k2gK
	6cviRO6Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva8q-0000000Aulo-3t5w
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:06:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva8q-000667-1w; Thu, 26 Feb 2026 13:06:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva8o-002izA-0L;
	Thu, 26 Feb 2026 13:06:51 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva8p-00000008O8S-1eHo;
	Thu, 26 Feb 2026 13:06:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260226094031.1692607-1-a.fatoum@pengutronix.de>
References: <20260226094031.1692607-1-a.fatoum@pengutronix.de>
Message-Id: <177210761138.1999254.5352375593095031948.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:06:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_120653_282739_D8B80D6B 
X-CRM114-Status: UNSURE (   7.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! commands: cat: add support for concatenating
 into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Feb 2026 10:40:30 +0100, Ahmad Fatoum wrote:
> commands: cat: move mode flags to open call with O_CREAT
> 
> To placate static analysis, 0666 was added to the open call, but at the
> wrong callsite: It should be added for the open that has O_CREAT as
> open flag.
> 
> 
> [...]

Applied, thanks!

[1/1] fixup! commands: cat: add support for concatenating into file
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4e7b3e8d849 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




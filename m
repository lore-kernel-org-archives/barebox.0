Delivery-date: Fri, 08 Nov 2024 10:39:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9LSd-006Gqr-2X
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 10:39:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9LSe-0008Gc-F3
	for lore@pengutronix.de; Fri, 08 Nov 2024 10:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zNovF2TxEpH1t3UxS3ScIurOGr8OL+QqKPBrKXw54s4=; b=EIRnve21SAXXGEO5oKI5245q3B
	Hsr8SL6qEWhb2BbRoVy8dcs9JUYMzODqSz9/CxeInP6FxEaq9HmiWh5yA264SGVGt6JzHjv0TncTY
	t++ScGYTevFa+rjpRUt2b4bmoAbXC0+j12IjZmmei2bCCoIXo1V88/+Xyjt0SF862JrRQAgStXi8i
	M+S3qgH3cSDZ2/AJoBwoVMSFNBO6lPcAWPV0ABD3wAPMPMqEWGGaS1GTOcJFeBFtQArEmXIkEn9X6
	/OIg+834H4V3JAD6rrkdHlRLTu6y4mXZwV1DCnHJy99gfZgVQ2iqjBK2RHNdiniGvqoujegYc2uMg
	ET732wbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9LRx-00000009z4q-3qZb;
	Fri, 08 Nov 2024 09:38:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9LRu-00000009z3r-2wOq
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 09:38:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LRs-00084a-5G; Fri, 08 Nov 2024 10:38:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LRr-002bAe-2h;
	Fri, 08 Nov 2024 10:38:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LRr-009afT-2V;
	Fri, 08 Nov 2024 10:38:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20241031124854.625174-1-abdelrahmanyossef12@gmail.com>
References: <20241031124854.625174-1-abdelrahmanyossef12@gmail.com>
Message-Id: <173105871577.2285890.10612770467890368161.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 10:38:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_013838_774453_78F97AC4 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: Re: [PATCH] partitions: efi: fix overflow issues while allocating
 gpt entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 31 Oct 2024 15:48:52 +0300, Abdelrahman Youssef wrote:
> while parsting the GPT header in alloc_read_gpt_entries() the number
> of partitions can be large that multiplying it with the size of a single
> partition overflows 32-bit multiplication.
> 
> we already enforce a MAX_PARTITION limit of 128 partitions in efi_partition(),
> so allowing any bigger value in alloc_read_gpt_entries() would fail,
> even if we fix the overflow.
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: fix overflow issues while allocating gpt entries
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae8ec8dc9d6e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




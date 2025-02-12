Delivery-date: Wed, 12 Feb 2025 15:05:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDN2-001SDq-2S
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:05:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDN1-0000JD-Jl
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:05:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VjA9lili4Oy+I5FZJYXeoH9U7mu88DRK2XR2qkL3hlk=; b=MLOku8k1/6JZL81svRjb37V+NP
	EGUZGdm6xXN5wjogjl3uX6ScnQJ02vJlK9D1HhY8v1Cz2DdaNNhjyf2h8XjS6L4TQ5Fnlp86tZ03M
	LreI925bg8pLf+VKsboNy830+fipw4yQsGX5fEOQpa1ubsr4alkLZPAruOF+1IN8B6RJmO4oSnTGx
	9Pe3HXzNSIbZ398PTQsqjshAYKNcN1Aeqhp2I03Y7Qqj11j9SiTxk6GQn3chyfyy8nwf6qtaPNsWB
	MT9W9jCvq1nQPZmED1E6rgjWC4J24GIJe/BZRCCuTrYK0iHTiHRcN1fsWY/46O6OdUMJZ379EZ3uh
	RfL+sboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDMa-00000007bF1-3Da3;
	Wed, 12 Feb 2025 14:05:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDMY-00000007bEO-0ewv
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:05:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDMX-00008i-01; Wed, 12 Feb 2025 15:05:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDMW-000b1D-2Z;
	Wed, 12 Feb 2025 15:05:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDMW-00AdjK-2M;
	Wed, 12 Feb 2025 15:05:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250211093408.1701730-1-s.hauer@pengutronix.de>
References: <20250211093408.1701730-1-s.hauer@pengutronix.de>
Message-Id: <173936911273.2535993.5473671541796254120.b4-ty@pengutronix.de>
Date: Wed, 12 Feb 2025 15:05:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060514_200551_245F8BF5 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: efi: Fix position of alternate gpt when
 writing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Feb 2025 10:34:08 +0100, Sascha Hauer wrote:
> The primary GPT has a pointer to the alternate GPT. Set this pointer
> correctly when writing the partition table.
> 
> When the GPT originally has been created on the device, the alternate GPT
> should be at the end of the device already. However, when the GPT was
> created on an image which was then written to the disk, the alternate GPT
> might be at the end of the image instead of the device. In this case
> the alternate GPT changes its position during a partition write, so we
> have to adjust the pointer from the primary to the alternate GPT
> accordingly.
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: Fix position of alternate gpt when writing
      https://git.pengutronix.de/cgit/barebox/commit/?id=d35dd0ae3e0a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




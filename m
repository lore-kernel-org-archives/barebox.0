Delivery-date: Tue, 30 Jul 2024 10:17:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi3H-004P3i-1l
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi3H-00056p-0G
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wPjXU/LcEDp3LRUc7InmbaRrppMXyxuVbUgb3nvXdY8=; b=GlvUQmJtsqrB7EOxlhDV7yTPPE
	aV7KgTJJtHSKkFbNjfJQWEXI7DKTsfz1NmeSFJEawkYqAWS9bHYB7IuO0lJ/aaU2Chh8oSrnXLw49
	Pwqxf+ERtzTzIoALf6J+UYfwmbxBM8glJ8xQyYYGxeOEshUh6HoU8lDphXIKbrmW5B5+5secLYcDf
	vLDyDhkwK5aPfgp5AvGqhxV+KHpET0oTL9IYRkzZ1ASip3eImjcw/2H8S9qxB3GpGQO/tr3FMkgNK
	CCbnBwxgTH6JRVicj1mTOLh87DkJoWX/wJ47GEExO7XUz77Ci5Sf1rFbiLm5gs2ja86vjKpw5wT9S
	DbPD48Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi2l-0000000ED8R-41yZ;
	Tue, 30 Jul 2024 08:17:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi2j-0000000ED7L-1fhR
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:17:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi2i-00052l-0U; Tue, 30 Jul 2024 10:17:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi2h-003Ey8-Jx; Tue, 30 Jul 2024 10:17:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi2h-004ntf-1n;
	Tue, 30 Jul 2024 10:17:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240724090932.134375-1-a.fatoum@pengutronix.de>
References: <20240724090932.134375-1-a.fatoum@pengutronix.de>
Message-Id: <172232743155.1145032.9456095474325050115.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:17:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011713_469278_D3B719D9 
X-CRM114-Status: UNSURE (   6.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: ramfs: simplify len calculation in
 ramfs_find_chunk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 11:09:32 +0200, Ahmad Fatoum wrote:
> ramfs_find_chunk finds the correct chunk and additionally returns via
> argument pointers the offset to use and the remaining length.
> 
> While correct, the way the remaining len is calculated can be simplified
> by using the offset previously calculated:
> 
>   data->ofs  +        data->size - pos
>   data->size -  pos + data->ofs
>   data->size - (pos - data->ofs)
>   data->size - (*ofs)
> 
> [...]

Applied, thanks!

[1/1] fs: ramfs: simplify len calculation in ramfs_find_chunk
      https://git.pengutronix.de/cgit/barebox/commit/?id=e2f6209720d8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




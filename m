Delivery-date: Fri, 11 Apr 2025 09:31:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38r7-00B9lh-0Q
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38r6-0002fH-0z
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J9FXyoA0syC9LDr1PgmtuOS+wAxdMDBtUvRWRU29/v4=; b=t7u22f7lWYTvcWbsRPLke2Fp9m
	lTxEFAEO2y1NWoW+sfyEzXf/hte7MUsP59B1ImQyGqAxqjIPf1kFOYByH5FgicTEPQHE/6H6AGQKV
	w9iKNsjYxTBLnxXpGV4a15Jn0Ioiy6WOIdsBA0IE71cuDLwFGEnohfIUHaOJV+H3vgUZ09drAwM/W
	N8nX7vNunt9d4b9g9K2bp9puJBLzaIaKMaZAcEy2dfvwtiAPwrfaf/wjura9SGKaPv5aGcbZrWi1B
	gcV5yNJZV5kjFWqv96P42et+Z+zoI2lRv8YDxF5F/N2tOZ6P8cj0Be2sccTwZTdNQD29Buk9fKMSB
	Dzky8V8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qI-0000000Cs1q-3byN;
	Fri, 11 Apr 2025 07:30:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38TD-0000000Coj9-3Ik5
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:06:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38TB-0005aF-1J; Fri, 11 Apr 2025 09:06:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38TA-004OO5-2l;
	Fri, 11 Apr 2025 09:06:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38TA-006NKP-2X;
	Fri, 11 Apr 2025 09:06:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250411052841.1745388-1-a.fatoum@pengutronix.de>
References: <20250411052841.1745388-1-a.fatoum@pengutronix.de>
Message-Id: <174435519278.1519606.9030853671201511964.b4-ty@pengutronix.de>
Date: Fri, 11 Apr 2025 09:06:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_000635_832570_E3B1F820 
X-CRM114-Status: UNSURE (   7.17  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Revert "mmc: merge block read/write functions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Apr 2025 07:28:41 +0200, Ahmad Fatoum wrote:
> The premise of the code merger that they share so much code already that
> it makes sense to combine them. This resulted in the introduction
> of at least three bugs:
> 
>   - Writes were broken intermittently, until they were fixed in
>     f646ed68434f ("mci: fix data write")
> 
> [...]

Applied, thanks!

[1/1] Revert "mmc: merge block read/write functions"
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ba1ff6f9de3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




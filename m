Delivery-date: Wed, 08 Jan 2025 15:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWfi-000lOf-1k
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWfi-0002fg-HZ
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:04:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L4k5ljs4FsRHuz+e7u9bcGoIoHqNZHL6HCEEiqW5hOo=; b=g0Nu4mOPFdCp/yFqTm6IMx26z0
	x9MrZdYmJkWJJQZcZ0U1Uq0TUnQnSXkv82YUqOXMcELqgvfdIC/CK16sPy1TzVgMKqrbjYyvmj8ks
	MNsbcZ6Oi6/3sX2H9PJyNpDZm3AQTWx+ZEcoXD+05Q0AwydKhAJ6GhT3Ff72ofSwknXIfEfKtA4mJ
	4iQK5wkmphARay8n0bJGDZIMuGh4pIQyQkOjERvMOLlRf/dEHoFnG555s1NMm0OqKZef8oP1HLZ5D
	fFnIxVwxCHNCDJLnjCyNhpJBZVKzoZg6jqe+tw+RQaI/qMKFUaEZI5RPsHfhSNhya9NNNaGx6yCzV
	ndi6KJCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWfK-00000008jQk-2Z8k;
	Wed, 08 Jan 2025 14:04:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWew-00000008jNG-2VG5
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:03:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWev-0002KC-37; Wed, 08 Jan 2025 15:03:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWeu-007X1l-0S;
	Wed, 08 Jan 2025 15:03:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWeu-00HQnK-2m;
	Wed, 08 Jan 2025 15:03:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107080435.2842334-1-a.fatoum@pengutronix.de>
References: <20250107080435.2842334-1-a.fatoum@pengutronix.de>
Message-Id: <173634502485.4154310.17412675529740205250.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:03:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_060346_637731_DE6303AA 
X-CRM114-Status: UNSURE (   6.53  )
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
Subject: Re: [PATCH] fs: introduce hidden CONFIG_FS_WRITABLE option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 09:04:35 +0100, Ahmad Fatoum wrote:
> Given that most file systems in barebox are read-only, it's arguably
> useful to see at a glance, which file systems aren't to aid with porting
> write-enabled file systems. Let's select a new hidden FS_WRITABLE option
> in these cases. Maybe in future, we could even save some code size if
> writing isn't required.
> 
> 
> [...]

Applied, thanks!

[1/1] fs: introduce hidden CONFIG_FS_WRITABLE option
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5fd6835b013 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 07 May 2024 09:34:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FL2-000Te8-1o
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 09:34:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FL2-000304-0g
	for lore@pengutronix.de; Tue, 07 May 2024 09:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nlhGMv7QBNqHxNgqA9pN1o5vi4G41ckSgRkEY4QrFTk=; b=dwY6/zVeQl+BsFxUYSG33K28eK
	EEHtqKO2m+7wpzeT3+S2E1S2xYJNIPsdDhcPRD/xq15GaEehWC8C+E0+NyF+0vgBgAQWrS24BCcro
	NtLlCfqUe4yngrSfzt8NBED0/xk92s4U8mKQRRVwIqH5T6Bpj+Z0WqDLWSIJy+SxCoOw9/jU3xWxs
	Hhu5doolhf0IxVL1JbRXYlH6ZlhUjxxKiqhPgllXz/o+9x7PTKjinx5HQjZwPjwKn4xK8KA8vXA6l
	U7g/Wi6b5F55RFtrjbv0AnmGwbbkan1qB0WL7F1LeaADeOVW1nj3c3kcxwu8sAyI/pDoemRk5Va2I
	AQRLa/qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FKT-00000009zv9-17Lo;
	Tue, 07 May 2024 07:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FKO-00000009zuc-3yRl
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 07:33:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FKN-0002qu-FJ; Tue, 07 May 2024 09:33:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FKN-0003OI-2x; Tue, 07 May 2024 09:33:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FKN-003ogs-06;
	Tue, 07 May 2024 09:33:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
References: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
Message-Id: <171506721102.909809.5809870749838493807.b4-ty@pengutronix.de>
Date: Tue, 07 May 2024 09:33:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003333_019694_1852B52E 
X-CRM114-Status: UNSURE (   8.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] pstore: ramoops: fix use of wrong types on
 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 May 2024 18:02:44 +0200, Ahmad Fatoum wrote:
> The kernel struct persistent_ram_buffer uses atomic_t for start and size
> members in the persistent_ram_buffer chunk, which are 32-bit always,
> unlike resource_size_t that we used in barebox, which is 64-bit when
> CONFIG_PHYS_ADDR_T_64BIT=y.
> 
> To fix this, we could use either int32_t or atomic_t. To make
> synchronization with Linux easier, let's use atomic_t.
> 
> [...]

Applied, thanks!

[1/3] pstore: ramoops: fix use of wrong types on 64-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=914622436219 (link may not be stable)
[2/3] pstore: fix size of OF fixup memory region
      https://git.pengutronix.de/cgit/barebox/commit/?id=0efa116b9f48 (link may not be stable)
[3/3] pstore: return -ENOENT when file is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=e70a514bce4b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




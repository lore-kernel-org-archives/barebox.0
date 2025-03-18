Delivery-date: Tue, 18 Mar 2025 11:23:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU6t-000zyh-2m
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 11:23:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU6s-0005CT-PZ
	for lore@pengutronix.de; Tue, 18 Mar 2025 11:23:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aPPKCBuNckJoNgjxzjT+rZRmvrd9Awf4vWp1MTI80ms=; b=dPuHq0ZapDX8U8ArJ6UDjn2oFi
	6QIqaUV5/RHoZJfNKqwEf+X9q9DNFGK66hxMW1pyRrGXsnXmGsh6WIJUaZkmzAvP7LKGXr95dk6rn
	rFmrwVZMynmY+AqihV8I6bwvPcKWX6ExeGq47hLp1OqPs/NcUsUPKV4Rb3txjenjROCPKxTj0r0bn
	KGf6b48dAAYT4GERWYRODS4nmrqZx90WlqxzG3NY41CRs9H2Ce+KQ6XdnFizFL47xN8b4OMFRm/3I
	znn3soeJmKNmJgmUlmuULyPOTmvtAEhvIgZsqxJrfFAAPFyaxzAbEG4463O/f4zX2omq+ey432GTL
	0AlcGmPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU6U-00000005UHf-3A3s;
	Tue, 18 Mar 2025 10:23:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU4r-00000005Tkb-3Eij
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 10:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4q-0004nf-IM; Tue, 18 Mar 2025 11:21:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4p-000PQj-37;
	Tue, 18 Mar 2025 11:21:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4q-00G6t5-13;
	Tue, 18 Mar 2025 11:21:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250317122831.3207605-1-s.hauer@pengutronix.de>
References: <20250317122831.3207605-1-s.hauer@pengutronix.de>
Message-Id: <174229330032.3839698.14017843546247934885.b4-ty@pengutronix.de>
Date: Tue, 18 Mar 2025 11:21:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_032141_818773_EFFED1F7 
X-CRM114-Status: UNSURE (   6.04  )
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
Subject: Re: [PATCH] net: am65-cpsw-nuss: remove unused variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Mar 2025 13:28:31 +0100, Sascha Hauer wrote:
> In struct am65_cpsw_common the fields rx_next and rx_pend are set but
> not used. Remove them.
> 
> 

Applied, thanks!

[1/1] net: am65-cpsw-nuss: remove unused variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=72b221652b86 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




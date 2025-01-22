Delivery-date: Wed, 22 Jan 2025 08:44:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVP6-002xvn-1t
	for lore@lore.pengutronix.de;
	Wed, 22 Jan 2025 08:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVP6-0007f9-Od
	for lore@pengutronix.de; Wed, 22 Jan 2025 08:44:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQqhByEAB20uZsGUdwm3OkuV83GFJ79NSYKvxwJs7Gc=; b=DGYHk4GKe6mn9CRPLEETuqjLfB
	/ApxkNVZgcrpOqsTzzQ8XWVakne9tElqMHRgatmtO0zML9sYfedabFWA1dBGIHVtnGTklWLIo0x+g
	zNoBdV5aUIcB+3G46k/strrOBydFqkg9cObE77SJuNRD8GJeUwo80e+xPcfSXHiPUdYHSPelwKklC
	Va5WWuqEXKnaJhXnwjxo/Bf5RkWw6M3+HOTPZ6pBkrqeRuaVT9wujLTbE4j+Ru6lGrruhdfxRO5iW
	IkjLl7yUybycZwCAdj5a7pwF4yPkQKrmGaVBiqsIQB2AllcRNNQ+TYHHkKs2rdJQNvRDRmNKMsJK6
	AMch34iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVOj-00000009ciG-3EdK;
	Wed, 22 Jan 2025 07:43:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVMz-00000009cVQ-2RUC
	for barebox@lists.infradead.org;
	Wed, 22 Jan 2025 07:41:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-0007Dc-97; Wed, 22 Jan 2025 08:41:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-001FTo-0G;
	Wed, 22 Jan 2025 08:41:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-00AQnj-06;
	Wed, 22 Jan 2025 08:41:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250120132625.4176071-1-s.hauer@pengutronix.de>
References: <20250120132625.4176071-1-s.hauer@pengutronix.de>
Message-Id: <173753170802.2486177.1456805603116475076.b4-ty@pengutronix.de>
Date: Wed, 22 Jan 2025 08:41:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_234149_623574_9D682F65 
X-CRM114-Status: UNSURE (   6.54  )
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
Subject: Re: [PATCH] file-list: fix file_list_detect_all()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Jan 2025 14:26:25 +0100, Sascha Hauer wrote:
> Call detect on a device file when it doesn't exist, not when already
> exists.
> 
> 

Applied, thanks!

[1/1] file-list: fix file_list_detect_all()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a3be5bdf632 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




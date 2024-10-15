Delivery-date: Tue, 15 Oct 2024 15:35:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0hiK-004g0o-1k
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 15:35:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0hiK-0005PB-2M
	for lore@pengutronix.de; Tue, 15 Oct 2024 15:35:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/R8LQLmJkneqBwK2OsV8wXewVBd5dfB+L+xpT0vqbhs=; b=YwIeJP1NM5kBQZLBtogxhb57ub
	g4j0BqG/xMshYGDv7apvyyruqvKTF8I2p2aDtDkHNIr54O6ItBkxzoeF37YSMiGXTzmc9QNa4xSv1
	+p30aip6dir8n0RvIQhl07Ks/RAiibpHbELBzxAnSXFdOM5oVeo6Sx9MO9iuh54IoDe7akT9hIoZ3
	kLF6cuywQ3DeY6Vl9RrBxgqbi+Pyoe55IPe+3Abkh0v3JxO9BXoBCYZPyJmqThl+AsJ5RXNlC7ce8
	ZqUs57oMbMdcZMLXN/qTTSyDu6QXBZnBgNBEhw74G1bmYosO+SPKP6o7XM122XYcnDMaldnztbpR+
	bAgi7ihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0hhc-00000008NMS-1vUh;
	Tue, 15 Oct 2024 13:35:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0hhY-00000008NKI-0zTe
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 13:35:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C469A5C5CFA;
	Tue, 15 Oct 2024 13:34:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA483C4CEC6;
	Tue, 15 Oct 2024 13:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1728999302;
	bh=/R8LQLmJkneqBwK2OsV8wXewVBd5dfB+L+xpT0vqbhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bbjcg1518JUWLeba3jMLs4DPbFA0X2PP4K58uUmWCg/Oxd3v6yGBkzCNqWrVBqIFZ
	 u3czfqVcZNyt8gOtpgajkAfJXHrkYvVtJQ+1jytMnof7MNBOzli27qAMnAHY6u4q4L
	 Kdl3xPFB9zrT1LnS6JHFRndM0hQw9XG1Ce7yMcew=
Date: Tue, 15 Oct 2024 09:35:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20241015-honest-nocturnal-hare-e1ca2a@lemur>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
 <172897622912.1432196.9754934695481714584.b4-ty@pengutronix.de>
 <Zw4Wwc6OfcLs3Qt4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zw4Wwc6OfcLs3Qt4@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_063504_353665_7375A30F 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-105.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/12] include: common.h: make it include only headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 15, 2024 at 09:16:17AM +0200, Sascha Hauer wrote:
> Hm, I assumed b4 ty would automatically send a "partly applied" message.
> I've seen this with others using b4 ty apparently. I don't know what
> went wrong here.

For b4 to know that it's what you intended, you have to apply the series with
a --cherry-pick command, e.g.:

b4 am -P 1-7 [msgid]

Since you retrieved the entire series, b4 assumes
that we just can't find the commits associated with the patches you retrieved.

We will have a better review and confirm screen in the future that should
hopefully help avoid this situation.

-K



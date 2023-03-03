Delivery-date: Fri, 03 Mar 2023 14:53:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5qS-007akd-3k
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 14:53:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5qR-0006Go-Sg
	for lore@pengutronix.de; Fri, 03 Mar 2023 14:53:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gm0mDbuirihMfXLSq16jc+rsq9rEVCJg1ZjijW66UvM=; b=egYbGBAqTRtgs3AdKJvt6QtBNr
	cRKztHcHDyWRyfhZyn2cJ46+WXQ9WBo5XNbPY0RORbeLVA2frwk22jVKbf6DtHqSnPBAkWoz1F9mq
	a4U6F2k/iYJibSK1ex44JbIoIN+PJBU/IxmX81hVoTlVsegsbiGxWyKo1a71SMoFgxO+dhK3+MHui
	pWAeRMFS21llkejGLMg5jItoV+TlnDVLqKAKnvNguoUJVc6zZiGBbZdc555hrbtKrzo4bVDFDlwmc
	FUIEoVItp2eumqN6MDr6R70MrsG+6Z8dQdOz3a1wmbuj5VV97mahdxIltFCgj3XVhYqKk3Rti6E86
	X37SP/6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5pP-006Wq7-0r; Fri, 03 Mar 2023 13:52:07 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146] helo=fx601.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5pK-006WoX-2l
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 13:52:03 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id C2241349AF1
	for <barebox@lists.infradead.org>; Fri,  3 Mar 2023 14:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1677851517;
	bh=gm0mDbuirihMfXLSq16jc+rsq9rEVCJg1ZjijW66UvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HppWrc0mjRL20Z15TeHYBSqUJ5iCqWWomoGBVxVN7bib6zExeTM+lkulk4fz4n2Jp
	 jfBYSeg9UGZVbkCBWQeg85vYdsgiix3nNws0WnsedLtc29KGDzgKf2hBjfSum8PWCW
	 ccmc5qAgZIgaLPy8SU19Tue9eC92r3+cYnIF1oWw=
Received: from fx601 (fx601.security-mail.net [127.0.0.1]) by
 fx601.security-mail.net (Postfix) with ESMTP id 96D3E349AE9; Fri,  3 Mar
 2023 14:51:57 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id E14E5349ABF; Fri,  3 Mar
 2023 14:51:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id B8D7927E053A; Fri,  3 Mar 2023
 14:51:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id A0D4F27E0552; Fri,  3 Mar 2023 14:51:56 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 Zu5eDryxbPZd; Fri,  3 Mar 2023 14:51:56 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 84F6B27E053A; Fri,  3 Mar 2023
 14:51:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <15ae1.6401fb7c.dc63a.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A0D4F27E0552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1677851516;
 bh=gm0mDbuirihMfXLSq16jc+rsq9rEVCJg1ZjijW66UvM=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=VJlaeMP6lmkc26kiY+enVaVZPpkq8WrrDpbgmjLSVmsSJkwQq2wo5yBVTaeKENvY4
 igaNEZmGNaS0zoDSen8G9nrRfH/c3A/FKoTsXuqGDOk3ruLSkwMGrt/2uR2+MirSan
 EolFcfTz3ZE/kLGeirSNwun5nEv+DyGujhW67Ag8=
Date: Fri, 3 Mar 2023 14:51:55 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Maxim Kochetkov <m.kochetkov@yadro.com>, Maxim Kochetkov
 <fido_max@inbox.ru>
Message-ID: <20230303135155.GE16608@tellis.lin.mbt.kalray.eu>
References: <20230303134441.11264-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230303134441.11264-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_055202_294106_9AB9C629 
X-CRM114-Status: UNSURE (   2.82  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: ns16550: Fix device-tree probe and add proper
 teardown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not apply, this do not compile








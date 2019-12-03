Delivery-date: Mon, 04 Sep 2023 09:02:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd3bK-003Ox5-KH
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 09:02:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd3bI-0003FF-HX
	for lore@pengutronix.de; Mon, 04 Sep 2023 09:02:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Date:MIME-Version:Content-Type:References:
	In-Reply-To:Cc:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaODAPXYT1AN3KD6VW8JmSVHVaXnDnALxPM2pJbMh68=; b=pugRxLG2HGLC5K
	vteimTrEIt/JZLBqPeiKgOZUzOPBY4F7Wqwt3UTxnKKzvvFXkEhoXIR1Z72FAuYm5C4OpOF9YKg+a
	oXr9wYznW4ERYsns+NhfnOG6TI6j0qU69AnwGhTVKMPAXCvuV1pYlRHeGt8ejbtcVzpXYukBU/YAg
	o9unogE5FLhY/fRMcZfvwND+EBlBf97iG+VMoiSMFnH22lial4p1TLBeFjx0magr2Ma++cqLVluhs
	Mi1qux6uv7tiXDzhM+1MEXo/0Sjq87Q+H9pEK0iIcQNPjzhHJK3j/aBBS92qiuDcAO1HowB8RAeRN
	UtI9tMImux97MLlEnD1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3Zc-003RSp-1g;
	Mon, 04 Sep 2023 07:00:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3ZY-003RSP-35
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 07:00:34 +0000
Received: from ginster.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::45])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jbe@pengutronix.de>)
	id 1qd3ZS-0001eE-NZ; Mon, 04 Sep 2023 09:00:26 +0200
Message-ID: <c2bc612986250fb7540a3402c9961a040352516b.camel@pengutronix.de>
From: Juergen Borleis <jbe@pengutronix.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Roland Hieber
 <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
References: <20191202102449.23535-1-jbe@pengutronix.de>
	 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
	 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
	 <c2d8530aa1da0e5e8e7ae950fe445b200776667f.camel@pengutronix.de>
	 <c141e85b-4da6-f33e-559c-52706ebb4cf4@pengutronix.de>
Organization: Pengutronix e.K.
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Date: Tue, 03 Dec 2019 15:51:36 +0100
User-Agent: Evolution 3.38.3-1+deb11u2 
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_000032_997731_473BBAC8 
X-CRM114-Status: UNSURE (   7.86  )
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
Reply-To: jbe@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,
	DATE_IN_PAST_96_XX,DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, den 03.12.2019, 15:04 +0100 schrieb Marc Kleine-Budde:
> […]
> > HABv4: Status: Operation completed with warning (0x69)
> > HABv4: Config: Secure IC (0xcc)
> > HABv4: State: Trusted state (0x99)
> > HABv4: ERROR: Recompile with larger event data buffer (at least 36 bytes)
> 
> The barebox producing that output is missing both patches:
> 
> 81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, too
> e7c33540d0c0 i.MX: HABv4: Reset index variable after error type

No. I have both patches. The message occurs due to e7c33540d0c0.

jb

-- 
Pengutronix e.K.                       | Juergen Borleis             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-5128 |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-5555 |




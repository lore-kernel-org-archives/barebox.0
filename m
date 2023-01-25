Delivery-date: Wed, 25 Jan 2023 18:13:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKjKz-001jPJ-6j
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 18:13:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKjKw-0004oU-Hz
	for lore@pengutronix.de; Wed, 25 Jan 2023 18:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eUtuy85ELoCvc35/DUCz6384OaR/r12uXhHAtA+yzOE=; b=dZf038YrJly1Vj6FEvc4VZZluA
	taCTiz2JUGp7dErWHs5qp3QuQJBI/N7lbihi0dPL8kmXUL3HVJGJOGJBMTsA44h7BdWbPfR6E9YT2
	RykTDexoA9kZoXI09OnItDsXH1JSg4aYoTEZ/mbNnkBH6XV60k//waqYVbcYavDPrpZScuJoEoThR
	8fqeKU22sPB+WZPTZK7NZBxwfAnvBGNS4FdJyZlhPdynrs88CSKg8HqRzI1JQBhmih67+t9LsRtP9
	lQYZyXw/5uHrl67PPL4V3cAZi+q1higCcIMF2FZpCdyQUTS79kZmh9DESFt2Vp2nuRgRxv9qToQx8
	maa/2afg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKjJY-0089Im-Kh; Wed, 25 Jan 2023 17:12:00 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148] helo=fx408.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKjJS-0089HE-6U
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 17:11:55 +0000
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 37603322679
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 18:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674666711;
	bh=eUtuy85ELoCvc35/DUCz6384OaR/r12uXhHAtA+yzOE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oVQcyRf5tfQDSe2NwFaJ1hZtgSMN19/fjFleBREZeWl9HpyUoNaoO6C/8XY32OSnF
	 tIQ15NKobZnrry1UKU8UawMnp04Fq1MxAXF5YGNfHnnt84XZIkUtRZsU23HMSll11+
	 b/84QWPgFGJvtFJLOePo2FojV2SEdu6Xg72bWgmM=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 19649322625; Wed, 25 Jan
 2023 18:11:51 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 7D4F8322650; Wed, 25 Jan
 2023 18:11:50 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 598F727E0461; Wed, 25 Jan 2023
 18:11:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 3DB7827E0491; Wed, 25 Jan 2023 18:11:50 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 JGtHrtRg61ef; Wed, 25 Jan 2023 18:11:50 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 2B24F27E0461; Wed, 25 Jan 2023
 18:11:50 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <102b4.63d162d6.7bb26.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3DB7827E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674666710;
 bh=eUtuy85ELoCvc35/DUCz6384OaR/r12uXhHAtA+yzOE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=S/uqymBmSBQfIIc+A50IYyqZZtBG7pSz2PYXqEIXPmf8QM9kcXZJwlb2+eyxpgYXg
 JRYofZMpSWId7qMEmF0M8oNYpC4xbnHoE9ip6+rT1Rt0aUBjO13k3ftMOGOMTlc/aJ
 5l2BNKJDtthC88yMcY4LdBrSd4eQ9eYEuIcMZChY=
Date: Wed, 25 Jan 2023 18:11:49 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125171148.GD4155@tellis.lin.mbt.kalray.eu>
References: <20230125151955.GB4155@tellis.lin.mbt.kalray.eu>
 <Y9FYVwlYP+iIQAsV@novena-choice-citizen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9FYVwlYP+iIQAsV@novena-choice-citizen>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_091154_397770_534F251F 
X-CRM114-Status: UNSURE (   5.42  )
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
Subject: Re: Re: Draft of an errata for RFC916
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John

I've not implemented this in Barebox but in ratp-barebox-cli, which is
the tool i use to comunicate with barebox, and it is the one initiating
the connection. However I also tweaked a few timeouts for barebox to
properly work. I've not sent these tweaks yet.

Thanks,
-- Jules







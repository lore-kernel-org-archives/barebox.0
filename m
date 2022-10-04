Delivery-date: Tue, 04 Oct 2022 18:26:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkkN-005kOA-Vj
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 18:26:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkkM-0002N2-Ne
	for lore@pengutronix.de; Tue, 04 Oct 2022 18:26:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+GeqX3Qw2gxQ2RKgSbXy6//Il6MBBlWT0l/N1hIWs1g=; b=r9JO2MNqwxEUXsXAFiQ7XZ5AW6
	dgL2AUxjuLD9brZ7+NJqsonaVIxmAgdDU94mm+lIOHsTiht3uKsiC1HvvGZw13Wj1CPgH+40N58bG
	qZdk1raCSEK0xKho3NwzvryFbUXzLZQyI5gcgDTuIzTDIhj9lNQvkRq/GqdQyhRr7jPEKxwd1EXUU
	b2piq4Q2yN05sbmmkc/iiEsXnAI0yuz9mMcrZ1zSJpsabc5CjX1VvWIjDOrLafOjAWYT3t9IeG7xh
	kuIIY8bmeCDI8oJYHy01oqPd5RQp2afgyke/h0vMkB1fvQJDjbuO5qFjMVgr803BKJ5l53ZBylKWs
	HwMr2EyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkiU-00ACUB-39; Tue, 04 Oct 2022 16:24:22 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkiO-00ACLR-1O
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 16:24:18 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 294GNT921152488
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 4 Oct 2022 18:23:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664900610;
	bh=+GeqX3Qw2gxQ2RKgSbXy6//Il6MBBlWT0l/N1hIWs1g=; l=1187;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=l+tCMWYEpp8bS+c+qfMVy3wqberNn08MTAivZTOoSjtf1c/GG0F5myjsFKAHWphrD
	 8jj4nGiBG8k7u/KJRUI0xsM/m81D0W8nGm/l6RPYnDUsSyiNZzatUqpBieTLk1MkJQ
	 0kni7saULvHq7kRMlf/mfVvrRa5MlNvnma9PvP8+ewtYStOdL+nwsb+N9kwAH7JFgV
	 9zd7bBxEHgeLGtOhCH/W7DSZqPLABdwvxhVPhaPVbg3GnK3A0w9SzIjY0LWB3UY50E
	 SrR2eZTbBJlxbbglfi64nDxaXMXdO4w8Uuok+YQPTOZRu684LD02C8EQfAh5To6pIy
	 ZQsJAVO0y6b8w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 294GNPNM4153823
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 4 Oct 2022 18:23:26 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id 7KSEGQ0CBB; Tue, 04 Oct 2022 18:23:25 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 294GNPYf1103157
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 4 Oct 2022 18:23:25 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1ofkhZ-00H0bJ-1O;
	Tue, 04 Oct 2022 18:23:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
Date: Tue, 04 Oct 2022 18:23:25 +0200
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de> (Ahmad
	Fatoum's message of "Tue, 4 Oct 2022 17:53:58 +0200")
Message-ID: <lyr0znzhfm.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 633c5dfdc12256ade0c40f3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_092416_726297_16103E94 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] tlsf: use 8-byte alignment for normal malloc
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

> TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
> enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
> have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
> minimum, so nothing to do there.

I am wondering whether alignment should be increased on 64 bit archs to
16 bytes as well.  ARMv8 spec [1] says

| exclusive pair access must be aligned to twice the data size, that is,
| 128 bits for a pair of 64-bit values.

A github issue [2] mentions this alignment too.


> While this fixes real issues like what Enrico ran into, I'd suggest we only
> this be taken into next only after v2022.10.0 is tagged,

This is ok for me; the issue disappeared with reverting the zstd patch.



Enrico

Footnotes:
[1]  https://developer.arm.com/documentation/den0024/a/An-Introduction-to-the-ARMv8-Instruction-Sets/The-ARMv8-instruction-sets/Addressing

[2]  https://github.com/mattconte/tlsf/issues/16

-- 
SIGMA Chemnitz GmbH       Registergericht:   Amtsgericht Chemnitz HRB 1750
Am Erlenwald 13           Geschaeftsfuehrer: Grit Freitag, Frank Pyritz
09128 Chemnitz



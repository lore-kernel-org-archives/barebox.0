Delivery-date: Mon, 19 Sep 2022 16:26:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaHj2-009e7W-3n
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 16:26:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaHj0-0000em-8Z
	for lore@pengutronix.de; Mon, 19 Sep 2022 16:26:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9duNjtZ5xDgycEpH/3k7YBcO5ENfynfndMRoQcJn08c=; b=rmcSBaBNg0BHfaac9sjPuUTRIY
	bXrOlhkuSdqKrGvavvFYz0FivjEmui4JNZws+4VnmMA51vGCqMqawlo93qkEegepfQK+B3yTpeAOz
	pIW2E8veVaBrSGxdWcIvnYQfgN+raqxd/7GrMVhf0dB8DUM0Vh9t7MBYOnnXyKCIpYvkIymipv+tZ
	R7yQ8xdYa1zpvNQ1Dc2P/t29FMOfT/LXe8RncboMjEPpd5KAXf3ZpdAyn0AYvNKi3Ml+Df0FCjgRj
	80HIrLuSy43EfGXCUgbF6ASuyOe2qPJDbwG4Vv20Av3F+IyUhuBf+WfYCQNB+592ZuY9Ao/f25MHv
	HIRP0vNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHhP-00C4ob-Tt; Mon, 19 Sep 2022 14:24:40 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHhK-00C4nQ-D2
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 14:24:36 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28JEOUKc1191779
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 19 Sep 2022 16:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1663597470;
	bh=9duNjtZ5xDgycEpH/3k7YBcO5ENfynfndMRoQcJn08c=; l=1201;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=I16xLQT0rdkEVQpzaWq+s5KbFjb8ATNF9vcwKFOgegq9gcQ5ga277isbT2tAgARgI
	 1VlCnJTj4WClHw9VV3qVO9Gyw2DomwdIk9E5lURUW3SBFdCVxHeOuUw6kwtpNnLrlY
	 x/k4t8FIiTOnrbVi7zc0vRjFGiqFeGKHhflJLtg5WRAS6ZK5j/AREbLjSRDnuMJKHi
	 DZFrXcLuOefN5K5g1NfRzBvGRhMBRvGtTIIDfjpaiJUZ5bQinPOmDeBSgqGsCLO/92
	 oFY7/gsKDqgJRUt/xvpR6FeWhFtDCITcMCR4ibUcLaJD4pS7oM2x14PElwno9njPGp
	 W5bA/6i0J5+ng==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28JEOSsS1246042
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 19 Sep 2022 16:24:28 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 1549BD0A4AE; Mon, 19 Sep 2022 16:24:20 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 28JEOJlK1139184
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 19 Sep 2022 16:24:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oaHh5-00BSBu-2v;
	Mon, 19 Sep 2022 16:24:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
	<20220919135751.GD6477@pengutronix.de>
Date: Mon, 19 Sep 2022 16:24:19 +0200
In-Reply-To: <20220919135751.GD6477@pengutronix.de> (Sascha Hauer's message of
	"Mon, 19 Sep 2022 15:57:51 +0200")
Message-ID: <ly35cn1lyk.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_072434_760773_0CD07DAA 
X-CRM114-Status: GOOD (  10.85  )
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
Subject: Re: malloc() alignment on 32 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

>> | zstd_decomp_init:536 workspace=8ff1a004+161320
>> | ERROR: initcall ubifs_init+0x1/0xc4 failed: Invalid argument
>> 
> If you had asked me which alignment we have then I would have said it's
> bigger. OTOH I never received any reports about insufficient alignment
> on ARM or any other 32bit architecture.

The code which failed for me was added 3 months ago

| commit b4a9782d4f56333e897dccc35c2c27e2605f6b93
| Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
| Date:   Wed Jul 13 12:09:18 2022 +0200
| 
|     lib: zstd: sync with Linux

and the Kconfig options (FS_UBIFS_COMPRESSION_ZSTD) are set to "off"...


> I suspect we could just drop the check without any harm, but that's just
> a gut feeling because we never had any alignment issues.
>
> BTW are you sure ldrd/strd need 8 byte alignment?

Their EX variants (LDREXD + STREXD; see [1]).  Unaligned access on
plain LDRD/STRD is allowed on ARMv7-A.  But not on ARMv7-M or ARMv6 and
earlier.




Enrico

Footnotes:
[1]  https://developer.arm.com/documentation/ddi0406/c/Application-Level-Architecture/Application-Level-Memory-Model/Alignment-support/Unaligned-data-access



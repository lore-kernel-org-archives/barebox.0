Delivery-date: Wed, 28 Sep 2022 12:25:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUGM-00HGMY-V1
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 12:25:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUGL-0003nh-PH
	for lore@pengutronix.de; Wed, 28 Sep 2022 12:25:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6BQiXTxIOHsvv9ga19MW1wFxIgEfmXCLXIG0E6Sf5Mk=; b=Qx4IfbDekkOhWmiK3ob27nbwsJ
	WAqdL+K10YVCEdQ2+ZEoqZuw1U/olKNz+1WJp5np8IxJsMsyfaQbM13VN+nJxQ8DRK/YH8ZPYZqMV
	YkQ+5/xEmlqp5B8mRRe4Syh1NC3QsyVtRecCxbY2l/IxNnvl/egKvjnPd5K26clk5SQN0g9mF7n/E
	JG/zbonJqQ3xwqMi6f45XxMz2ROkCNJUWCbYUkq0SA+aCKoJzf3X0ziBoNreY93CgJR08OHKl71C0
	AR+mxTza+JN2U6ZR3eI+sOhsuvauNYvAOqoUs4ReTgLfrNet6lc8ChqsCvct+1ZGkFV2XOFhbd9TY
	vDRVcfsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUF0-00FaYb-B2; Wed, 28 Sep 2022 10:24:34 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUEu-00FaXd-H0
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 10:24:30 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28SAOQ0h1092048
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 12:24:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664360666;
	bh=6BQiXTxIOHsvv9ga19MW1wFxIgEfmXCLXIG0E6Sf5Mk=; l=750;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=UnkWL1KCmwW35l45rvL7tH2LaCelUEmqjPuOqQZYzLfSMong/anLgF2BXOolgLcV0
	 z9MmqoGSqu7HaQa2Sf3W5DzD7bYfWUg00i8tlniIKL8e46vp0u9Nd7qbBd84o1rctc
	 FrIW7zH65m/dO+xqZaz/UOZSDW3eZb/+DqGEeKDnEwaCbNaLfoOz+R1g4QyOQqva2u
	 7enXgXHyLSgxJtAAPytnGcCEckMdq7Ir4dfMekEyimVOmTNYp0jfrwikfogscbs39o
	 +sMYBV739LWNjnY385D66iW7g6cq+VSLzURdKw0P3BCP7ik2TgosEtVR82ayQ2od7S
	 BwMm3asMycAbg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28SAOOkw1354016
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Wed, 28 Sep 2022 12:24:25 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id RZ6K8VXT91; Wed, 28 Sep 2022 12:24:23 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 28SAONOf1221709
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 28 Sep 2022 12:24:23 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odUEp-00C4MK-1k;
	Wed, 28 Sep 2022 12:24:23 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
	<20220919135751.GD6477@pengutronix.de>
	<ly35cn1lyk.fsf@ensc-pc.intern.sigma-chemnitz.de>
	<20220920073622.GE6477@pengutronix.de>
Date: Wed, 28 Sep 2022 12:24:23 +0200
In-Reply-To: <20220920073622.GE6477@pengutronix.de> (Sascha Hauer's message of
	"Tue, 20 Sep 2022 09:36:22 +0200")
Message-ID: <lyfsgbyey0.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 633420d7934b9d3e0535897e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_032428_734629_EA11AE39 
X-CRM114-Status: GOOD (  10.50  )
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

> So it seems it's really a good idea to increase malloc alignment
> accordingly.

But this does not seem to be trivial :(

A naive

| -	ALIGN_SIZE_LOG2 = 2,
| +	ALIGN_SIZE_LOG2 = 3,

triggers a lot of warnings.


I think, ALIGN_SIZE in tlsf_add_pool() and in the higher level functions
(tlsf_malloc(), _memalign(), _realloc()) should be replaced by a new,
bigger constant.

But this appears invasive and I have no idea about tlsf and the sideeffects :(


There exists https://github.com/mattconte/tlsf/issues/16 which asks for
proper alignment; but project seems to be unmaintained.


Replacing 'malloc()' with 'memalign()' on problems, seems the best idea
for now.


Enrico



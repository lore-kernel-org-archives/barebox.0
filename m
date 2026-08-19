Delivery-date: Wed, 19 Aug 2026 11:41:21 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwcnQ-004ot2-2x
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 11:41:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2F36B20227F
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 11:41:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UsoIno0F;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=bSnMqJl7;
	dkim=fail ("headers rsa verify failed") header.d=ku-gbr.de header.s=x header.b=L73D+Abx;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aSZK7LBg2JVvwM8KsHbidwqufDr36LoaMCQpD9WxBUo=; b=UsoIno0FFA9dZJTHwd2mVE2Iwq
	21q8lTtAgNfN3+wFbYh3ivgpd6BqHKoxVepXfoS7xMPyuxMr13QayK4l2InLwvleoEgLjVK6E23OO
	H+AOYimgeQUe3CYcOb1nhFTT5U7C+qN0SbLzUHfr9OLDVvHn5cM23ZhVrMnFpKAOvJ3C1iAUWO6hg
	YtJRM70zwoXqjCeYEaGuxkdwGKgpoxltJ3mT7fRL3AZdN+76JCcE14X+JN8DCqMYRZvdC5D1fukP4
	JEvmAgOUJzCETD4r1taXZUie9oDbVB0KFQ68bu6R7wa/w6lPTezJ1Rvp3yOjZEeFBC00aPtbJ4JcR
	9opC2t0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcmH-00000009Qt6-1QGQ;
	Wed, 19 Aug 2026 09:40:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcmE-00000009Qse-34Cd
	for barebox@bombadil.infradead.org;
	Wed, 19 Aug 2026 09:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Cc:To:Subject:From:Message-ID:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description;
	bh=aSZK7LBg2JVvwM8KsHbidwqufDr36LoaMCQpD9WxBUo=; b=bSnMqJl7fM4lO5zxOSD4fTkf//
	Z5S1lcDja7cDZMTFMlb1l8SxVYP+ul9EP4YcaH4bpk/Q4eOruLJh+UNLr0cJkmMNr8uTCn0HXsCk5
	uNr79b2YCgnx6KfchY3XuSZS7Ougb3KLhMuZJ09lyzXPT8B35AHAcdPQoqJG5y8tQ5NgG814EIEF3
	05LurP0lVI62Oq4DUqBo88Z/R6nftRefNkU84sIpMm+xlIlC7uD8XmDOhZ3UpX/ZpbSqGlLiQk3jk
	Ja3WTwB8vlIh3pdBi7P/kjvGH9emcML+twbXtpwx8iIXuS10etX7KBY7JetQvI/63aHHhOCjYf3LU
	gHxIJ2ig==;
Received: from mail.ku-gbr.de ([2a02:790:4:9::dead])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wwcmB-00000002FSF-3WML
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 09:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ku-gbr.de;
	s=x; h=Date:Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:
	To:Subject:From:Message-ID:Sender:Reply-To:MIME-Version:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=aSZK7LBg2JVvwM8KsHbidwqufDr36LoaMCQpD9WxBUo=; b=L73D+AbxZ6oZ+Rg9Wa/msdOAt2
	GTuKD1B0tFM7gqDwtce8H+fzGBHVGc5KYDMPzaUrXlAgaUCtayjhHt3CxZ7r1Eq9u9hWi2t6gxeJ4
	JO5+jKmCKIpvLSS3pgwA2CQ3PbFubtLI7zc8f1GSM8mH5wuBaYH97NQBTS1juCtosPbVyf2eOEyro
	QHTFLizZJapchbG6BSMU1LdJoL3e0JeC3C83eB/O7tCXmk7QN9hS/N7dtMZDZc25uB9wepDhWisGr
	09xazBztLgbURUB9RMoHwXrUnBsx5O3e4iq+SEdA9nHqzpFlOvdkB41QLVQaXZen90tKyaj3Lt9Mz
	tN7fN1aw==;
Received: from [2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5] (port=52220 helo=[127.0.0.1])
	by mail.ku-gbr.de with esmtpsa (Exim 4.96 #2 (Debian))
	id 1wwclk-00Gvtx-1q;
	Wed, 19 Aug 2026 11:39:36 +0200
Message-ID: <eadca986-31ce-4ae7-b2e2-a3839b1af6d9@saschahauer.de>
From: "Sascha Hauer" <sascha@saschahauer.de>
Subject: Re: [PATCH v3 2/8] ARM/ARM64/RISC-V: pbl: add constructor support
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Aug 2026 09:39:31 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_104004_048419_F583F11B 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Stefan, On 2026-08-17 16:01, Stefan Kerkmann wrote: > This
    commit allows running functions marked with > __attribute__((constructor))[1]
    automatically after the C environment is > setup in setup_c, which most [...]
    
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5ck7zat4egqaop796j58oq14ja7weof9
X-Spamd-Result: default: False [-2.95 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	BAYES_HAM(-1.84)[94.05%];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[saschahauer.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,ku-gbr.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,ku-gbr.de:s=x];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 2F36B20227F

Hi Stefan,

On 2026-08-17 16:01, Stefan Kerkmann wrote:
> This commit allows running functions marked with
> __attribute__((constructor))[1] automatically after the C environment is
> setup in setup_c, which most likely will be early setup code shared
> across SoCs/Arches in the PBL.

This breaks hosttools_defconfig, sandbox_defconfig and targettools_defconfi=
g with:

/usr/bin/ld: pbl/ctors.pbl.o: in function `pbl_do_ctors':
ctors.c:(.text.pbl_do_ctors+0x9): undefined reference to `__ctors_end'
/usr/bin/ld: ctors.c:(.text.pbl_do_ctors+0x11): undefined reference to `__c=
tors_start'

Could you send a fixup?




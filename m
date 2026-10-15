Delivery-date: Thu, 15 Oct 2026 15:00:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHL4S-00DvYo-2T
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 15:00:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7A976201547
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 15:00:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RcY29aYx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F2Gp7a0K;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792069228; a=rsa-sha256;
	cv=pass;
	b=Fugin5DBejINdAqJOhAzjuPB1K5AR/MRnsKPQTM3hCltCd7kAaFXwj8sSoffcaGQobyL4/
	8WAnE0LWCTuhr1mEl+9eeCz/iw0Jz0c9JcqxaldFfP1GLxpAI3zk735DCgCzlpC3q/PVTN
	0Dg7ZnsNW09b/ltbKvycbYanqRr4NmBF2zqpzaRoOxyCshmAy3aW+mA6AM8axmBGbrjXv2
	dCymFInWltQiB0FtwGx/WDq70Pq/CgK7jbe4UATdTxJcil2cKl4JNC3pRA4QACvdpW+LJT
	e+WOTKyuWzFOUjhv9heMETukwsT7yY/Kc9uakwNbkVEJhfeit3qS522NQO1kJQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RcY29aYx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F2Gp7a0K;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069228;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=aMxMVDi350mvyqNEhawyM2O+86CkPkiUJDc3ZpW5rHY=;
	b=MLUtXTBCiKyygYfz5py+mcRswJWxRHsgjmaF8XZTvc3gkZSyxFgqQQbgOCBtZOZzkPt3aN
	pr1pZZOAA20Tqpla6vINxcADxry2FMXTBVmMYnJgxpsjvoHDbIQKVpaDD0RANfXc8lieZX
	3fW+CZZsZqem+eQjNvklcQa3S4e4vk4kkZG8PDKnYTm+aqX0Jo5QLgqhYWXvToR0PiqMDE
	wOpE6gAWJJLPAXlHNQxha4XjQ2V45UPO7LhHm7/37m1sAkfL0k7y05H8EZdM4coFoVbeJ2
	mNz3YVXCPvKdt++ZSz9964rK4S78Hov8T8pwqhRu+rPvaHqn4aAF+t3ceJqaUA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aMxMVDi350mvyqNEhawyM2O+86CkPkiUJDc3ZpW5rHY=; b=RcY29aYx6X89dcJceVNdJ1a5b7
	0YiJ6buwggLgycsAcWFttg+5zlOsJZCri5bNEQM5WE7PetvZDID+0jStTIdjwlAsVWqKsmj423nDF
	9snn0p5DZCvF1BG8081Fgb/R5IR0Ri4R0LB0r5SOoTv9yUjZb/iX3ohAHJ1xAGZxUoQE1rdSmMy8G
	GDj1is+W5MWHOAu3JIO+l6bnt+dpehbKs+AwbOyOO9R0fAugFS1osFK+oNOb+A/HmLUYRLr7VTbD9
	iUFQ9tbx1K53RdKHy8bFfK1rcQV0llXCAmepWrkHSeCWC/htApxcLw+qOzDNSdlkoFLg9ENSX8Zlh
	v8C/aAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHL2t-00000000BuC-3UN1;
	Thu, 15 Oct 2026 12:58:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHL2q-00000000Bqw-1fbv
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:58:54 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8A48D201547;
	Thu, 15 Oct 2026 14:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aMxMVDi350mvyqNEhawyM2O+86CkPkiUJDc3ZpW5rHY=;
	b=F2Gp7a0KbpDP6zi+TpaLWCqXMVXX0JhXP/8o7JqeSDWcoVoaA8yaWONxmx3RInRytXlskH
	TWGK+lj/jh8YetnfgFo6Kq2xVFQtAhcX2ZpYscJfpvo3u+kTSXToDKNkrI33Zx6nniyNbU
	kgFTBBmlaL0hbiymduqDaBRdZ+mQhzWtaq9fTOJzRO07Tnz7t+i3MWx88m+qEhy64VKzDS
	4qNLB8Zn5ujAMp/Pe1t+k+4CBtcfFNH5XAPwGYsKnwtAC2VPfLY+xvCSDbn/zN3tHCHMKW
	xYfUpOKBvwLepHlxs1Ye6ZAroRTawDcAjw5MGUbc/LPCWuQuPaEb63O/rI06oQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792069126; a=rsa-sha256;
	cv=none;
	b=CbuXa2dh5Po6bHrgeM02n/4XG4DqlrMgxVQgvuitt+UOOhKIrtR4x8BUDc6w52FeJpAlRr
	OgSj9aPzZXPi4XzWaFN/zvTCVoZjK3vw/sqQi/JEq8xsxBJbEgM65MC7TaSZw6Ys7NPB3f
	458tKgbqjCaYrmpmYKxFi6iA0OSdujQfGTEr0ynVrkrYf3EQG+dH2u3h6qxhVsbDqrrGd6
	d9gClY+lQnhXBoPVnw+IU5qTN73C6C8wVUBNWvjKDr4g+NZYEXOnOCr2gamlhsKr4auxYM
	B1+DxaMq08USI3YF9QdqQJtn21D/csk/5FVlL5TQzpadW/Y+Bx1zbUbgEDqalA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aMxMVDi350mvyqNEhawyM2O+86CkPkiUJDc3ZpW5rHY=;
	b=PJ5POhefeSRzqJIpNwMV+xUylathTC2m2i1n0RopSY+D1qAmjESbjcGWXlnK1cjPHWKiNr
	selcJsdb2Vzh8egjoK76wIEBtazpw+XOXQwCylc6kru+tXU/1HUYY7kXjp3inFBQ+JFPBE
	2nogU5gH1Dc7s02sDbMQePOcTjXsppRbWC6iag6azCxyEL6WOTVMQXKzzkclw1bzPU2MMR
	MMSFHDt0YfiU8n0z46M/FAU1CSnUpv77ROcKy9ytGCXh0J1V+cQs8sXdTEuSGl74JFnAt4
	cXKDJiTQygZfnpcjNH3w2Gft/pzujQ+yAogiPV07t6sB1WNi/D/Re6e/6tZkjg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 6E80EFF991;
	Thu, 15 Oct 2026 14:58:46 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015124929.4031881-1-a.fatoum@pengutronix.de>
References: <20261015124929.4031881-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master v2] ARM: zynq: reduce barebox-avnet-zedboard.img
 size by 21K
Message-Id: <179206912644.1962432.1948200500935456025.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 14:58:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_055852_933140_8B6D1F51 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 14:49:12 +0200, Ahmad Fatoum wrote: >
    The full barebox image needs to fit into 192K of OCRAM on the Zynq. > This
    is getting tight, so disable some options that are not always > ne [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7A976201547
X-Stat-Signature: jg1ncuxad3knwnz1amgbkjzpa3jauyyf


On Thu, 15 Oct 2026 14:49:12 +0200, Ahmad Fatoum wrote:
> The full barebox image needs to fit into 192K of OCRAM on the Zynq.
> This is getting tight, so disable some options that are not always
> necessary:
> 
> Savings from everything but kallsyms:  3460
> Savings from disabling      kallsyms: 18936
> 
> [...]

Applied, thanks!

[1/1] ARM: zynq: reduce barebox-avnet-zedboard.img size by 21K
      https://git.pengutronix.de/cgit/barebox/commit/?id=48bd799e3c90 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




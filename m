Delivery-date: Mon, 24 Aug 2026 22:13:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyb30-006ov4-1E
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 22:13:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF7BF201021
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 22:13:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rM3JeGRo;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=iM38natZ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g2mHLPe4cD94QcSU30CHdYg71SSmv8POCp//Apha9PU=; b=rM3JeGRoseL9fKuqRCw/UB43rU
	UDT72CD0SfYIzt1TGKqG17plzf6pdUjz53I33vyKesi3ncVSvdf3zH/7nKXS2sldvYEJlfIRAFyU/
	kbq3pcRDBXHoXk5GuXI4q6zOuUN/LIhujsXX/v6RLm7wRdu+imI8IxB5Y7aJvsDD5gVfFsG1UbLUA
	+Rapq569HBGEjGjpsTsd98XcqDsmuXkWwjC00OCF4Bo07ahqEjapLorS7EJDj2sPiob01lGsReOTv
	m7KM8DGgPkTUIIvRDV1vTUG+SeR10yrhH6UMRWAhOkS1SJr/34i2+QWDYyeC9jxaKe4ApDczNe7d7
	VtB29Y2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyb1U-0000000HLOB-2OLQ;
	Mon, 24 Aug 2026 20:12:00 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyb1R-0000000HLNn-3k42
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 20:12:00 +0000
Received: from eig-obgw-5001b.ext.cloudfilter.net ([10.0.29.181])
	by cmsmtp with ESMTPS
	id yYGcwvofDLvgbyb1PwXTw5; Mon, 24 Aug 2026 20:11:55 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id yb1OwH1VyfDqYyb1OwQ4aO; Mon, 24 Aug 2026 20:11:54 +0000
X-Authority-Analysis: v=2.4 cv=HKbDFptv c=1 sm=1 tr=0 ts=6a8ca58a
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10
 a=B4a7FkDLnf6Hzo3qBcEA:9 a=QEXdDO2ut3YA:10 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=g2mHLPe4cD94QcSU30CHdYg71SSmv8POCp//Apha9PU=; b=iM38natZk0skVykhmP7oNH83S2
	TG/J1NERMJ6GLE4K9bFIJzx9KxJFgE9lup6w730Lg1dIQY4MHLL9sbecRbNvltCLP3moG4DBNBMYI
	HG7dAw4WKZI1ZIR/zxmp3Kt7GGd+UTQTMNYvBqy48Y33FjgR9neAC4wC4O4u2mbXuqNc=;
Received: from [71.238.14.13] (port=57844 helo=[192.168.1.145])
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wyb1N-00000000fi0-3CC7;
	Mon, 24 Aug 2026 14:11:53 -0600
Message-ID: <2a832eeb-81a0-4b59-ac5f-e65048b324c3@cetola.net>
Date: Mon, 24 Aug 2026 13:11:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] spi: rockchip: restore bus_num alias lookup via
 dev->id
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260822-send-spi-rockchip-busnum-v2-1-0f43376cb391@cetola.net>
 <625cd013-6a0f-431b-858e-57a76bdfd7c0@pengutronix.de>
Content-Language: en-US
From: Stephano Cetola <stephano@cetola.net>
In-Reply-To: <625cd013-6a0f-431b-858e-57a76bdfd7c0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wyb1N-00000000fi0-3CC7
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.145]) [71.238.14.13]:57844
X-Source-Auth: stephano@cetola.net
X-Email-Count: 1
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfNYSp1u4HGsmxFd9qB6Gk6z8ty6D4uhw8CaD7QLwlVlTwB48M0JqylSCUZPAPcBJoMU46LJWMWH8N4CBQJrKCQ29RV9rwr9PgYB4QKnzbPkZ9vDW1XpF
 F8yxoKHybOm5DlTm3ivwcAp26zXJ5QA4AecIbUW3g5vZd2dblh6mWJsYGLnEmFVHS5Kqt3XBkcuLb9iIQRSLiIuycirgp4htdr4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_131158_254218_6F6B1F81 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/24/26 3:21 AM, Sascha Hauer wrote: > Hi Stephano, >
   > > This should be initialized to -1 explicitly, because that's what we want
    > to archieve. The = dev->id we have here is only needed for the c [...] 
 
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: j6togbdjuad4a7dthuyjxu81t5p4ztq1
X-Spamd-Result: default: False [-7.40 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: DF7BF201021



On 8/24/26 3:21 AM, Sascha Hauer wrote:
> Hi Stephano,
> 
> 
> This should be initialized to -1 explicitly, because that's what we want
> to archieve. The = dev->id we have here is only needed for the case when
> the device is registered from platform code and we no longer use that
> with this device tree only driver.
> 
Oh, I get it now. I'll send a V3. Thanks for pointing this out.

Cheers,
Stephano



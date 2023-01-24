Delivery-date: Tue, 24 Jan 2023 14:08:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKJ2L-000Umu-Co
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 14:08:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKJ2F-0000Na-5F
	for lore@pengutronix.de; Tue, 24 Jan 2023 14:08:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4v47o//Wzcy6nqOnQ+VM9FOpu20GyPvzV36WVDd2rbk=; b=ZHH3rfnDR/CrsS1INhAQTM1WJb
	lK5ItnzSmewmevYxliIkBQwse/HZaneFGB+0Y2PiwUdQxND1oj9sP1FjPEmRpuG7OjEvOkEEp5VLQ
	F/EdVxk6FZ6aZKs00MzqeI1iqvNLXDfC44rrfQ+o2JglolepdQEQzN/vFGsXsKU99ITB0F7J82aIp
	4dgmhah5V/Y6Clq/ULrPFZYkuoQOrYLfHbZVklo9MmpXtjbSUv2bqFzZYbP2CXDfcpcycFhUOZXmD
	k/YPoXlhaQ3c8VJ/GJI0ixyTgFLWhWDG/lg8Y23hCehGxO/BkGm937neHICndvqF3oV3kV6KV3yJb
	GA3axfZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKJ0R-003qwX-Es; Tue, 24 Jan 2023 13:06:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIx9-003pVa-Ll
	for barebox@bombadil.infradead.org; Tue, 24 Jan 2023 13:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4v47o//Wzcy6nqOnQ+VM9FOpu20GyPvzV36WVDd2rbk=; b=qGEe7wiCp0xuehsx4FSxk9Xb7a
	GCFhylZkk3OppMozrvVx5iqLkOV4nbWNO0RI29+htdYbdH5ntJqGZFlCybPb9DbqgELZ4nAJoivH8
	8S2g4VW8nssPL7YEn6lH3yTc29SZkJ96DQV/8d1EiXjagTKn8jmakHdeBgYfmTa6BzPBq1tZ6XEh7
	5A3ybpsg/z+UGvJ1DZ2gIQuJG+VyVhaSl3XImpURXOb3Ko0T9JDvZ3s2rxQxIeqL/XzZuw6u41w7x
	ry/i/fmQE2JDUYYszdNboX8hlFlqO+0m7suzq93BlcMmF0JokgbO91gc3Xb2LnuueRk+fKNCh6JQQ
	S5ECTczg==;
Received: from out2.migadu.com ([188.165.223.204])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pKHpN-001pTk-0L
	for barebox@lists.infradead.org;
	Tue, 24 Jan 2023 11:51:04 +0000
Date: Tue, 24 Jan 2023 22:48:09 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674561086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4v47o//Wzcy6nqOnQ+VM9FOpu20GyPvzV36WVDd2rbk=;
	b=NcP3bMkqFhofJ4sFyMP+Wo7mMk0P0gzNQ5BDJ1B2CNqX18PtM/bN5O3jwyfp5NaPzMuN8C
	sf5y9ECJXjkgGtysfUZsU1PVcLBOQkRl4QMhw82EryII3FNXokvGC0CNFHAvDlkOgRyQG+
	Qe3JODoti4MQCUzSNjzZ3Nhlk88MAZkmAxPOxZdzR+GM7D5KpbgL+c8YAFIWTnLwsfu/ZX
	vtLf7zliCv802QKl0oJ9EX1ZEZ8e8WXiNtK/U5kXLvmFdv5DUo+mwn0GSxdLYkS2lGdHuv
	wd6pGudVpqFRlEfMqpGnKpefBC/4pVAPvIKoc1J2Bjl+lz0yrIcPSjpOon86og==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y8/FeZWD4ce50TTx@novena-choice-citizen>
References: <20230123201817.1084728-1-contact@jookia.org>
 <ab972e58-2d3a-8ee3-c251-788fe5179e1d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab972e58-2d3a-8ee3-c251-788fe5179e1d@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_115102_111320_6A98F6DD 
X-CRM114-Status: GOOD (  14.18  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx6-mmdc: Work around ERR050070
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:27:42AM +0100, Ahmad Fatoum wrote:
> > +static bool wlcalib_failed(void __iomem *ips)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < 4; ++i) {
> > +		if (readb(P0_IPS + MPWLHWERR + i) == 0)
> 
> s/P0_OPS/ips/ ?

Oops, good catch! Will fix in V2.

> 
> Also does it need to be bytewise reads? If not, you could rewrite
> as return readl(ips + MPWLHWERR) == 0;

The MPWHLHWERR register contains 4 bytes giving some status for each lane,
that would only fail if all lanes fail which is different behaviour to
the existing behaviour fails if any lanes fail at calibrating.

> 
> > +			return true;
> 
> Write level calibration has failed when MPWLHWERR == 0 and succeeded
> when there is some other value? That sounds odd.

It is odd, but that's what the data sheet says, the errata says and what
and what seem. Maybe I should note it down?



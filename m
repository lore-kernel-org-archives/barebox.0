Delivery-date: Tue, 09 Aug 2022 11:37:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLfW-00HDXh-UM
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLfX-0006tK-W3
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:37:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AwnheDJadtPHnmI3oZRZckF6bWrmzChkkbqbhY2Iync=; b=H/IC6Es49xYbC04sGXv1L2d1XF
	hzxmwOb15s6g9R+qv99p5WwhYFB8Z3BRI4GOYEOaWDTEQXyG6pzwvYvxtO3+CgmbgIXdu6X9oQRuC
	T01KcyDIJHNwwFZHqhjrEsnxXsGcoe/XRhNFglodXjeSzoWtWM4ebCasArJ1qj+O6HvqqQdge4sik
	N5wq3SpwilORB8dnHMNbZcEMpR7brzvNBy67Ej38nnyU0DaZS4ds1ay1xV9rqzl3kwP27os1WilZR
	F+NdzkF1h2s3yxX2rq9pomE4CGwkJvNWmaN3K/CWE/KP35Wez3TRyGSNuG4T0IX5DPutOc3uDTqTa
	RuQVSFQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLeG-0034wh-Fs; Tue, 09 Aug 2022 09:35:40 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLeB-0034uS-2l
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:35:37 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2799ZUuM790347
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 9 Aug 2022 11:35:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660037730;
	bh=AwnheDJadtPHnmI3oZRZckF6bWrmzChkkbqbhY2Iync=; l=940;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=Z/mKIYlNwph8AoQe1eeKZR4EkD3z07uXkizXo45gPrRuGu4cxwUFtEjDCzsBLzuh3
	 7O/a+6N3tqYIPC3CJoxkKyTye9haYHta6QdO/qMCMIDlJtJY3Ceosv3fK3BG768ku7
	 R8Zrp0K98ZUNcL4FeOiIcgrLj6aOy0vjBo9KNJmevLCFfmFGwywReDKOPNaRE9/at5
	 zqV0pK82d1+8eTy81NU1hHLyE43DcNsK7SCjxw55Gc4fszOM9hDmcENMDyeZ/G/oe7
	 wy1T3IAM+dzuQuQ9gQER2BKJyMwzs3gyx+/ni+BIh3Z2SArFd4sm+KATzMXovPzbZS
	 QsXhPpI5uEc5Q==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2799ZSGp752256
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 9 Aug 2022 11:35:29 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 2849E8E3D24; Tue, 9 Aug 2022 11:35:24 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2799ZORS578158
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 9 Aug 2022 11:35:24 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oLLe0-002wqE-Nt;
	Tue, 09 Aug 2022 11:35:24 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
	<20220809090230.GL31528@pengutronix.de>
Date: Tue, 09 Aug 2022 11:35:24 +0200
In-Reply-To: <20220809090230.GL31528@pengutronix.de> (Sascha Hauer's message
	of "Tue, 9 Aug 2022 11:02:30 +0200")
Message-ID: <lyh72lzrmr.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_023535_469983_41CEA32A 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

>> The tftp "windowsize" greatly improves the performance of tftp
>> transfers.  This patchset adds support for it.
>
> TCP for the poor, nice ;)
>
> Very nice stuff indeed. I gave it a quick test and TFTP works as before,
> that's good to start with, but to gain speed improvements I need a
> RFC7440 capable server on the other end. Which server did you test it
> with? Have any RFC7440 capable servers made it to the distributions
> already?

https://github.com/ensc/r-tftpd ;)

yes... it is problem to implement both server and client side.  But the
window size feature also works with PXE clients and u-boot, so I think
it is correct.

I started to implement it with transparent proxying support in mind
(e.g. translate tftp requests to http ones, or fetch cached images with
'rsync').

But when I saw the effects of windows size support, I focused on that.


Enrico



Delivery-date: Mon, 08 Jul 2024 13:42:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQmkt-002lEC-32
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 13:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQmkt-0007fb-G7
	for lore@pengutronix.de; Mon, 08 Jul 2024 13:42:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpejVZxMUTVqPYaGYoWW0ZtLAH8/kNHdshYDYynyptw=; b=xBDudCdcNTnXizIkgHnJTkHILa
	UQvDvX85lutq4QnFuV+3hFMxig0u5XlIlQlhHa1tJHUX8mP9LCky4AvzM3IYANtaIcGVGS+6azTO6
	Ei3uOXb0utqJlLzR2oMbNhTBVdrWQxoikwi9DplC0LA0JKxlhwx3dwbL+83LEkZTecLemvoJRxQAE
	xptx3ia/lPvgIn1P8lT1uSHn5E8D6eZmZBMEmGnsyIB6v32lUr8yaokJVumEwlxc8wkaEGumYNsyr
	1X3HsOCJViBZzxtcNBfP8yzkbdnrxJg1ZlXyWBNNjW5LiIvN4NI29uPhsdkJr2E8ueNRsAYhQaDy2
	t9yXtDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQmkM-00000003cGB-2wwN;
	Mon, 08 Jul 2024 11:41:30 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQmkI-00000003cF3-1ZBi
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 11:41:28 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 468BfM4X1262892
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 8 Jul 2024 13:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1720438882;
	bh=zpejVZxMUTVqPYaGYoWW0ZtLAH8/kNHdshYDYynyptw=; l=919;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=NQg1uBy6AH3a1qoPuxzR8Yjs4qo5vpgx9+tqij7jurLx/4VyK4fIwYmGaAZs6OuTV
	 lGHkar3CSVmZZVrQE5ZmsEG6pg2ye2rcsZICOxHcFFSiAIUuZQztgkMbg0qJrAh55L
	 NRar2p+oFTTLEUxcTMfZhYblIpmItl12seFg+qlvqcDScm7+I5eEjW13to4TIopzh3
	 qUvj/d02FOoAZswNh9AvaYmCNa5kJSqk6/BQ8taZ1Akxy8bxryziTGm2ttscOQtEtf
	 2fOxoTIT0WwGV+7eoERq5hVAZ3C6EwssjrQfCNSkfWi4Y3m3prTdAuggJ0NEEBIwc0
	 83/YYi+7JCTwA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.18.1/8.18.1) with ESMTP id 468BfKZK165528
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 8 Jul 2024 13:41:20 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id 57F8WFDP26; Mon, 08 Jul 2024 13:41:20 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 468BfJ8Z1227935
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 8 Jul 2024 13:41:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1sQmkB-0000000Gxw9-3ovk;
	Mon, 08 Jul 2024 13:41:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <5c3923960eb059b2edc64a73cf53a75c5a28476c.camel@pengutronix.de>
	(Lucas Stach's message of "Mon, 08 Jul 2024 12:53:20 +0200")
References: <lyjzhwxjwj.fsf@ensc-pc.intern.sigma-chemnitz.de>
	<5c3923960eb059b2edc64a73cf53a75c5a28476c.camel@pengutronix.de>
Date: Mon, 08 Jul 2024 13:41:19 +0200
Message-ID: <lybk38xg9s.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 668bd060b121c496daaabe0e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_044126_779356_06C3D615 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Major memory performance decline from u-boot to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Lucas Stach <l.stach@pengutronix.de> writes:

>> I have a karo tx6s module (imx6s, 512 MiB RAM) which is shipped with an
>> ancient u-boot 2015 bootloader.
>> 
>> barebox 2024.07 works out-of-the box on it. But under the booted linux
>> system a see a major regression in memory performance.
>
> The most likely cause is that Barebox applies the workaround for ARM
> erratum 845369, which has a major impact on streaming writes and thus
> both memset and memcpy performance. The old U-Boot probably does not
> include this workaround.
>
> You may check this theory by removing the call to
> enable_arm_errata_845369_war in imx6_cpu_lowlevel_init.

Thanks; after disabling this workaround, benchmarks are reporting high
numbers again.

Would it make sense to enable this workaround conditionally?  E.g. the
imx6s is not affected by this erratum because it has only one core and
no ACP.



Enrico



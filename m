Delivery-date: Wed, 15 Apr 2026 13:15:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCyDI-00COj2-3D
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 13:15:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCyDH-0000jq-Po
	for lore@pengutronix.de; Wed, 15 Apr 2026 13:15:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t75dVjRWWJ5SjhWG7SoWwu0i9rBq+XXPHtxW9STSwv4=; b=Q2XZLrZp8gbvbjV6iiDR5NWnJ0
	cwme6P+WjsrB+yQjjGriWLrw6O03B74esRn92bzTnha6GV+RSEtRGoWj5jh360e1C7DfEM4j6f3pM
	k/74Mad+WYmvmp/qGRxX4UxXmSMw4HDcuYNw+ywrFz5NfFYJ2673PEI5qx4wfCbfDObAyHbRy+4Ge
	crRM+1n7lMEvJpcQW5uCTv6WgtsAh+GmtITv6jkMlfRNnnTSYJ/5vjS+4mCbzpJ+P7xniG97ftuYK
	+6AQFYonoavGtDVfY+uEgsuMQZKWIUtSTnzcimdIkW9OGLncIbiVX6ijRT4ffj2EMBvIWzK2rd+CJ
	Cmj6fgQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCyCt-000000011ex-38Fi;
	Wed, 15 Apr 2026 11:14:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCyCq-000000011dE-2TFD
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 11:14:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wCyCn-0000aS-LA; Wed, 15 Apr 2026 13:14:49 +0200
Message-ID: <46cbcdfd-4507-47a2-b381-07757011f379@pengutronix.de>
Date: Wed, 15 Apr 2026 13:14:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_041452_656669_8E483729 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-04-15 13:10, Fabian Pflug wrote:
> uidstr and uidbuf could be the same, but don't have to be. This results
> in uncertainty on what exactly is the current UID used for
> machine_set_hashable and to compare against with TLV.
> 
> Add an additional global var, that encodes SoC-UID registers in a
> manner uniform across SoCs/manufacturers.
> 
> This can now be used to feed as data for bound-soc-uid into
> `bareboxtlv-generator.py` or as the value for
> `CONFIG_HABV4_CSF_UNLOCK_UID`
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>



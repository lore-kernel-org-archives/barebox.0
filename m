Delivery-date: Mon, 16 Mar 2026 14:32:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w283a-001Rqr-2j
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 14:32:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w283a-000607-9m
	for lore@pengutronix.de; Mon, 16 Mar 2026 14:32:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HthFy8kW2temK+2Ag8ya2EzbtLLvn8HheqMcdMczzaA=; b=jL5dVg6F3RqrIWP+ICnXubHc7h
	jkjM93yNt95+kTqn29LZ+UN5fmafo9Jm37dNOLiTmZWJilCy7Sa/DO2NAQbRblJHGjbkR9osz49Lv
	XzFyAtdJoNcRTqp1PKdLo4yTyE/m4Vt/Jd0nPqF41Lm5qnJTII3w+hLNOgGvF9XHg1DtjVy2G4tYw
	5Bn+RO/TNZiddKEajjzCBpvSrYU7LdZ1WsLsQAFk6LRPYdzYDf8L1GDPx/Mt6R824iDnktffsCkY0
	0K4GlRYWXf3HY1YgRTaz12EvfTe7DDPSRtxwizX0VYkdX7OfZwDMeAc/ueDw3cTMMpw4mxXoG3Ar8
	znrPlTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w282z-0000000455s-2tkC;
	Mon, 16 Mar 2026 13:31:53 +0000
Received: from cczrelay01-placeholder.in2p3.fr ([134.158.66.151] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w282x-0000000455P-0nzK
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 13:31:52 +0000
Received: from [172.27.130.249] (unknown [195.221.122.29])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 723321800800
	for <barebox@lists.infradead.org>; Mon, 16 Mar 2026 14:21:42 +0100 (CET)
Message-ID: <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
Date: Mon, 16 Mar 2026 14:21:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <aa_1-MX7hnrlJ3Ff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_063151_394347_383721C8 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I would like this patches be reverted, since, despite the proposed 
fixes, it prevents the board arch/arm/boards/enclustra-sa2 to boot.

With the option CONFIG_DEBUG_LL enabled, the output is:

lowlevel init done
SDRAM setup...
SDRAM calibration...
done

Then, it hangs.

David

Le 10/03/2026 à 11:44, Sascha Hauer a écrit :
> On Wed, Mar 04, 2026 at 10:05:38AM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 3/4/26 8:53 AM, Sascha Hauer wrote:
>>> Add a bss_cleared variable that is set after the first call to
>>> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
>>> wiping already-initialized data.
>>>
>>> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> Minor point below:
>>
>>> +.section .data
>> .data.bss_cleared or is it already in its own section?
> Fixed while applying.
>
> Sascha
>




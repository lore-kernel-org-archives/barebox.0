Delivery-date: Wed, 22 Oct 2025 12:00:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVda-00AZ7Z-0I
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:00:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVdZ-0003U6-Hz
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:00:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RLp2FFMVNwrwdQ6tvZ9kj+sCH/LJxQP7luWNByAd4FI=; b=pbO2qWJ8Kn0ZyIyVFZAWRsj40i
	c+AJ4pedbvryAgVFEF00WuX5De/GxrMgRAyNsPIyuBJPvbzCfr04/veV8/gbyzrafVeHODnHUHVeG
	Et0Ycv5/dOqsaUmCff1a56VaBilaMwAO9almgk77tk4xPZ76Y1YtP4gz97Ytp5v/19dMfNIFTJdtF
	tW8w5noXWgFU62Gx2FFFF6wn7IMt10Cib/DHINijQvRl66gOLcgPOf9zff70Im2Wpz3nEBsNSVRDL
	LCQlWQlDZxZ+1AJaZ7jliCMVEtXiGmWhlJTX2eCYzqe0XNz3j3yBzHt33NnYLb1Byv8CI/EnBeZDC
	2cpxI/SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVd5-00000002MvD-04Wp;
	Wed, 22 Oct 2025 09:59:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVcy-00000002MqL-0J1k
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:59:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vBVct-0003L5-IC; Wed, 22 Oct 2025 11:59:27 +0200
Message-ID: <d23b60ce-ce87-4027-a95e-2b14b8343b9d@pengutronix.de>
Date: Wed, 22 Oct 2025 11:59:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-5-7a8aaf95081c@pengutronix.de>
 <1ee2493e-5907-406a-a063-8d231e3ff266@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <1ee2493e-5907-406a-a063-8d231e3ff266@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025932_390018_95C37398 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/15] commands: keys: update output format to include
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 2025-10-22 11:43, Ahmad Fatoum wrote:
>> +		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
>> +		       key->hash, public_key_type_string(key->type), key->keyring, key->key_name_hint);
> 
> Given that hint is only relevant to FIT, I think it would be better to
> hide it when it's empty.

The key name hints are still defined, and unique amongst all keys. Just
like before my series, if no hint is provided in keyspec, keytoc
generates one: key_<num>.

Therefore it should always be shown.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



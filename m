Delivery-date: Tue, 03 May 2022 12:13:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlpWm-000T5n-1e
	for lore@lore.pengutronix.de; Tue, 03 May 2022 12:13:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlpWk-0004W0-Pz
	for lore@pengutronix.de; Tue, 03 May 2022 12:13:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VLuutb7yG6Aei1hYL5I3CkzxV2r0iV+WL1ggscQ/By4=; b=r3YyhV94tHyGju94PRGmMqkhtG
	3T2ZAl7IPXPkuS1ouY5KEFQdjwW/TfJvfWRs67eB4uEM3QpLG5R3+da9uy8WbT2Ewenwv4DMQeS/S
	2LiuX539wa8u/KPKqsearPC1+kenyvYTHqWMpDEx/sjo6YmJvqkcqYS7Cp3VIVHGU75m8PsVQRbST
	wChRUaofpH8LildbUXXJ4qZWWbYuhYVrSrMp36ZWRX3Ca8Wpa1JWMZUOGi7TkPoeci1hi40P286rz
	ebYgxGjBuwgwS6KLmhjlHkmIv7dQOY5oApz+DChazVChLHAsU57EYlwx4EUpxRfP0ZY724BRUklfK
	gd6n85Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlpV5-0055ny-Gl; Tue, 03 May 2022 10:11:23 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlpV0-0055li-4b
 for barebox@lists.infradead.org; Tue, 03 May 2022 10:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:Cc:To:
 MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YV1r7YqLasEoj7Ssw9lSfIKgF1Fdes9Lvqbi9+BvIRU=; b=Y69YJQTYKv/fQMMbT3tAjMZ1lM
 6fm7y0YoyL3ibq6LooTyIWLunPENBS7DmVfzerpsTeCDpzhXicYXnQSlYuz9TWu/Y1/BWB7HqbqUx
 JpLCw/CmA5vjLOHUq9wy31UceV/P8DUeLPKLSDnQPaTFbSNhYcFFo34gjr112KKPENd0=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:61299
 helo=[192.168.100.101])
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>)
 id 1nlpUr-00Bp9P-JU; Tue, 03 May 2022 12:11:09 +0200
Message-ID: <01aea3ad-d18b-fa9f-ea11-e6bae8750695@emfend.at>
Date: Tue, 3 May 2022 12:11:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
From: Matthias Fend <matthias.fend@emfend.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_031118_547376_D48A6F5E 
X-CRM114-Status: UNSURE (   3.16  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: i2c: Rockchip i2c controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

it looks to me like the rockchip_i2c_xfer function returns 0 if 
everything was successful, but shouldn't the i2c master_xfer functions 
return the number of messages actually processed?

I was just wondering about reading sources and can't do real world 
testing due to lack of hardware...

  ~Matthias

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 06 Jan 2026 08:37:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1dH-001oTL-1E
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:37:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1dG-000504-Rl
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:37:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
	Message-ID:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CxZpVRsM3mtx7g3ASE9O3ngq3y8SaE39H7FjtCGt7MA=; b=fl4G3HIpzwf2+C
	pvWuJtk36KWomdmj9PGdRKS471GW8cWFavucnpdoSIgxCrBj8kBhH9pBJBTc4NQQQ46PkwuP9NLX+
	Afey2xW2PD1pO1zBZp4z1AvI+V/ZR6UwsOI24kIUUF1tGfauWlyRx/YYIqASsHxsIyJdg908Nx9RK
	ppX05+SfbkDlXYbiETif2qwFcuRoyffoYADZAE+mCnpntoSMevF1qJ7alka8uNzOjGYwljiJ7V/07
	JHxaoTZ8YwoU8TFYap4LDDvpkuchj03T/ofI6hxQWmrz+JmMMnGPet4rHWEIFV20YkSECdxfcPxLH
	od643adzkxDQXplTda4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1cq-0000000CWfe-03mD;
	Tue, 06 Jan 2026 07:37:08 +0000
Received: from out203-205-221-209.mail.qq.com ([203.205.221.209])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1cn-0000000CWet-15RM
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1767685022;
	bh=CxZpVRsM3mtx7g3ASE9O3ngq3y8SaE39H7FjtCGt7MA=;
	h=Date:Reply-To:To:From:Subject;
	b=L7bFxwD4+Jd4NjvOjUtNDcuFUtx1KpuoyRJ11JCvUOrfdLxwkTMgnH9YXNbPtiywt
	 o4uUY6wXa2VLvsYwnhs/OwVTYk+vKWmE2gbcjwbFfUaxIQsi6HekLizR+0PUA4oRHP
	 BCA9Nu99V6Q+BJTTl779wmz1e71HaLEsA8Dx/gQs=
Received: from [192.168.2.100] ([49.65.73.109])
	by newxmesmtplogicsvrszc43-0.qq.com (NewEsmtp) with SMTP
	id 9410D60B; Tue, 06 Jan 2026 15:37:01 +0800
X-QQ-mid: xmsmtpt1767685021toupj6svz
Message-ID: <tencent_A811AA5F980ABDFC4D4DF8D73132B8D22506@qq.com>
X-QQ-XMAILINFO: NAuAIaytDrXp10kUYr4hzuVWkHbdlgrtchALxCTmiTkj3NCXS7vGD3kRZqH44V
	 NXTs9AeNY2CcQh1giHPVQYeJmqGZAGWXF1MpXOY6XdX9/fnl9g9a2eNMQr1LaAVmMYpPs2AYdBGt
	 XDQ5c7i3rA2m0WlSuXG20cAW67rL2DIuqFO4H8q2cvP5sUg7z2b3phxfQ9WYWvahFxCr1AIA+OW3
	 1TtuM09z9ZQEPXupToSvsTpxlhRTaVN3YapWjR59iCwNmwjZ9rlEPouC5Gn/O0DsnWNqy2h8vw2W
	 jqg6h2skYWUIkZdYkDntBTdPH0+yGUO3cOCG9ZSSLH9FO8OSdX00cdaDcnCAUbadLAVq+HEYvp7G
	 g9sSi0cSkugMZ2AsVuEdpX4ZzDI3j1h0eLFIwBtzTZ3greI009D0lLkakVPpvJ9VTr9izNc8lqWj
	 FrMKR17xGkm4Brkkjzjl3z2o1cJx9q7TheDmvzmQFO7TQ7TXWthNgdiG3GMzfdq4HIts3PXeobzk
	 1I2OXpLCV9ukjDWW5B4QoM+8jMmRcBsJXilw6m/SoxwvWkA0teDZKx6yeiESCuZye+0Da7Oz/jr7
	 0STnaYjJIKDAaAW/rS9MEuipFSq1SEJeuzc1gIsAsUeQTwEBP67Ge1NeJOYOueaukZOcQx/WLcjP
	 uncXGtig+VK5vyl/pDp3VEEK7BRCstrxzDq8vre0TnLahA0/TevGbNt+8eUBQTAurG/Faw6rEpxG
	 82Jj1IDa+y4v0DZ5/F/GyxxhibRzVOGZCnXn3ogiV7D2hXGzdIJ4s+VGwd6/q6XaQH4X+BpOsQFJ
	 CVfNIOzHR/i1l74PC7XhFxexhkMHZ8mpI1zOGIg0hGW85q+m+xje1sicENr50mSOCUVn3jYaIhe/
	 /BtDs1tusgFhIi82cqiwR1DvHHQ3d1ol30k9y7TteIDymfy8OcKMBjAhCD6IeRqvqRgOLYM/U+XN
	 tXsdEd7eHKugcPDhsczg4+QwilxeIEapVRlFkzdDLQksgonDUr8ztUiD1XkLZ1Nfg3mwww5KPtQl
	 Ta2EsagtJ2jI7TNmssqdrJRKo8ye27hpbPRq1vLw==
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-OQ-MSGID: <19031673-5c17-48ab-8ade-300f2823b284@foxmail.com>
Date: Tue, 6 Jan 2026 15:37:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org
From: zhengxiaojun <zheng.xiaojun@foxmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233705_630614_AA898E0F 
X-CRM114-Status: UNSURE (   3.20  )
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
Reply-To: zheng.xiaojun@foxmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_MUA_MOZILLA,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: The non-removable option causes an MMC initialization error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,
    The macro MMC_CAP_NONREMOVABLE defines the same value as 
MMC_CAP_1_8V_DDR, which is causing the error. I've noticed that the 
MMC_CAPS_* values are quite different from those in Linux, I'm wondering 
which value for MMC_CAP_NONREMOVABLE would be appropriate, or if we 
should ensure these values consistent with Linux.




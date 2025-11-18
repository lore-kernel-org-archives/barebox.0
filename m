Delivery-date: Tue, 18 Nov 2025 10:57:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLITF-002HYn-08
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 10:57:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLITE-0002ho-Fi
	for lore@pengutronix.de; Tue, 18 Nov 2025 10:57:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BD6AsI7mwZv9kgA3VbipM3hrRRUcOyo/KFxee2G2Qlg=; b=pFBrTl6IT7pXZ3v9CWqouvzGAH
	iRMi2w7MKUPRm+FwfwJk0dMmPp0yg+0mAxKSS7oBFHCiBkLm6ajqjf77ur6qz5I8sFYDIKZpAXalb
	M9+uMSrkDRkDcdMgFr9YMwqp7VX58zKyVZpaIrhnerY9KJQbqcZ6jqlp4FBUK/Tsq8r3Oa1UFWurR
	G+Noxc0BW8cvDvaRFMP8+hiFL3sM1V8lQdkm1mOXASo4aGQnIsLgX8Few/vIhucQBkjX6qkr7c686
	1W8Hd6kQgu00zyI/8AGlX8fsqFVceGRj+S0bKilHkPyX6eSVgysi5IwZJxlIXgJ5sfX2v2sf/yEcI
	Buy9HYmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLISn-00000000CGl-1Mes;
	Tue, 18 Nov 2025 09:57:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLISk-00000000CGM-0kAd
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 09:57:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vLISi-0002c1-KO; Tue, 18 Nov 2025 10:57:24 +0100
Message-ID: <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
Date: Tue, 18 Nov 2025 10:57:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonas Rebmann <jre@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
 <aRww5p7AxPtgEmgm@pengutronix.de>
 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
Content-Language: en-US
In-Reply-To: <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_015726_243105_94D30550 
X-CRM114-Status: GOOD (  18.34  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi again, tiny addition:

On 2025-11-18 10:49, Jonas Rebmann wrote:
> On 2025-11-18 09:40, Sascha Hauer wrote:
> To me the big question is: What is a SoC UID?
> 
> Is it an arbitrary string that happens to be, for many SoCs composed of
> [0-9A-F] and efficiently represented in binary in the efuses? Then it
> feels a bit surprising to me to compare this 'arbitrary vendor-provided
> string' case-insensitively.
> 
> But if we consider this an arbitrary block of binary data, typically
> looked at in hexadecimal then I suggest we use the raw "bytes"-format I
> sent an RFC patch for on Nov 12, and compare to
> barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storing
> SoC UIDs but had a conversation with Ahmad that led me to view the SoC
> UID as an arbitrary string. However now that we have
> barebox_get_soc_uid_bin(), I'm tempted to change my mind.

I did consider changing this for v2 however in your [PATCH v2 1/9]
"introduce SoC UID" you mentioned that "Others even print the binary
data as decimal (qcom).". If we where to use 'raw "bytes"-format' as in
my RFC, the data YAMLs would have hexadecimal representation and I'm not
sure if that could get too confusing. At least we could consider to add
a (mandatory?) YAML-field that specifies the number system.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



Delivery-date: Fri, 26 Sep 2025 15:58:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v28xv-001LwP-1J
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 15:58:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v28xu-0003pR-Sr
	for lore@pengutronix.de; Fri, 26 Sep 2025 15:58:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ECGOf4Fl21xE5pn0g2jBSgox/1Ni9bjn9yYKw0ofjZA=; b=jR8kVoKlF3miyUs2aeTkvEYjhO
	fylZ2DCKIRg0IcApADtl2YPt0maxn5wphT/wEbWTxtb2xnjh3hDxgSek01Zr3E6N+lPFASki9DVaw
	lgkHmUoHVAQaWXg85BOFmP2nuOcwbrUxe3qC5x6GcrHTy450lQ/r7edwqwsJ0RqXdWfMu6vIHas0/
	k4XoAXfL5NyybbCkbxvFoA0rxPeScPWColZ+2YT93tJLELoFWr8vMFj1XQM/t9uEVCSQK+cYOKu8N
	w9SdRlczIwag3JammiIJ+XLHBqPeI4fqR97Lv5IBUy6NjMlkQwWGUgeeKxGyIq/ZjtlkMRV8+Nm3L
	QXgHvoIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v28xN-00000001leI-3ITK;
	Fri, 26 Sep 2025 13:57:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v28xL-00000001lcD-0vVG
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 13:57:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v28xJ-0003bE-MW; Fri, 26 Sep 2025 15:57:49 +0200
Message-ID: <e772a5d9-e2cb-4b8a-a84b-009336e8550b@pengutronix.de>
Date: Fri, 26 Sep 2025 15:57:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_065751_261630_D2299073 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] TLV integration tests and test/py cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-09-26 12:14, Jonas Rebmann wrote:
> With TLV signature coming up, we want to test all things TLV more
> thoroughly, including "roundtrip" integration tests that include the
> bareboxtlv-generator python-script and the tlv barebox-command.
> 
> As this is the third test module to make use of the testfs, it seemed
> adequate to revisit its implementation.

I was too hasty when preparing this series and only ran CI after
sending. CI fails on more than one end. That I forgot the patch that
enables CONFIG_CMD_TLV and didn't add a skip_disabled(barebox_config,
"CONFIG_CMD_TLV") for the TLV tests is only the tip of the iceberg.

I'll send a v2 shortly.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



Delivery-date: Wed, 14 Jun 2023 16:28:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RTr-006l6i-9x
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 16:28:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RTo-0002nR-Vp
	for lore@pengutronix.de; Wed, 14 Jun 2023 16:28:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=auB1f1T0bh1vDuf1NyXjBoQNj8GtZcULfjq41Ir4/CI=; b=RsSwmCEJAx0gNGs1FcO6RAGadO
	b/gfdaURUedg0mdPTY/r+2KXSl76y9buZxiHiFzML73+J5c9HG/EAyuHNvpCdC1igBM9ppahO0J0Q
	2GZhuLFL2NSQDEVTeRv3sPmjpLi30qQe+Smii6nKTE0rbaYiIM1sXkIjAzcoIu7F1yGhYcKx7H3Z5
	8R7Cbakmp3DFsDWHwHEa5HivqVkjdqF6y9Vm52sjn8c6nhfuAS4VDG6rdG719ZQHKB3Zwb0mWJoZk
	mXfBm3mFO+hQLRLM2S+gQc81RhWtHPtDDX5ApMlws2fWFyLmEMa14fx+cfniZbUulo3yr6H5+BvZ2
	xNe1ppyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RSq-00BuFO-11;
	Wed, 14 Jun 2023 14:27:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RSm-00BuER-3C
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 14:27:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q9RSk-0002ij-1O; Wed, 14 Jun 2023 16:27:06 +0200
Message-ID: <d2603a7b-d7ef-71ab-ed86-db07582a5c2d@pengutronix.de>
Date: Wed, 14 Jun 2023 16:27:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230614090231.4141827-1-a.fatoum@pengutronix.de>
 <20230614142137.GB18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230614142137.GB18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_072709_031609_4ACAA867 
X-CRM114-Status: GOOD (  16.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: help: ignore options after first regular
 argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.06.23 16:21, Sascha Hauer wrote:
> On Wed, Jun 14, 2023 at 11:02:31AM +0200, Ahmad Fatoum wrote:
>> If some-command -n foo bar -v fails, it would be nice to be able to
>> just stick help in front of the command to get help text. This doesn't
>> work currently, because getopt called for help will complain about not
>> knowing some-command's options. Fix this by only parsing help options up
>> to the first non-option argument (i.e. one that doesn't start with `-').
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/help.c | 19 ++++++++++++-------
>>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> Just prefix with "help -- " instead of "help "

Oh. That works too... One could argue that most people are
interested in the help text for a single command, so not
having to type -- is a tiny bit better user experience.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




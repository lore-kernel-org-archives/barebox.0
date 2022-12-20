Delivery-date: Tue, 20 Dec 2022 10:28:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7YvN-002YPc-N2
	for lore@lore.pengutronix.de; Tue, 20 Dec 2022 10:28:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7YvL-0005KH-La
	for lore@pengutronix.de; Tue, 20 Dec 2022 10:28:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5GdlkaZvAC5CNOJVpv0MMEloQkrRn6OmQOAZ+xnUg54=; b=aD5yDF1RaFhFrkdF0NQqQktz6g
	qvEWr7Qun5uq3e4hcCUsNiosVnu7Pjf5gTgu3RWdvP0EdIsChnxkdxn/R5cmq7VJKK+aQd942TPGl
	5PYK008nLnR2XziEhkuJLK1Wfa72snmyxF2Nb5TtkY7Eo8QyrOe2cj+xpaH3n415L5zDJ/wgND3b/
	GEPXnLbukodzxwb3PCdGP6iSSnJY5DjWJZjUmzScsTwpZiZryhnpNvlRRrheYciJrXj0dgYX+wflp
	A17eMVYG9gaBkl4jNVpWQHR5oFyNTuSsI6MTrmuYpzsnUh6CaDPjxtkCse1QsctQUQtUb+/xHx3F2
	ExMW6D3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7YtX-00CqhB-A8; Tue, 20 Dec 2022 09:26:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7YsI-00CqBf-Pz
	for barebox@lists.infradead.org; Tue, 20 Dec 2022 09:25:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p7YsF-0004wE-Di; Tue, 20 Dec 2022 10:25:23 +0100
Message-ID: <b59fa2c3-929e-7ad8-1526-a903be5b6643@pengutronix.de>
Date: Tue, 20 Dec 2022 10:25:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de, ore@pengutronix.de
References: <20221219181839.2397967-1-a.fatoum@pengutronix.de>
 <Y6DlHesIliQCtP3N@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y6DlHesIliQCtP3N@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_012526_922473_0919F4AD 
X-CRM114-Status: GOOD (  23.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: skov-imx6: fix wrong display-timings
 native-mode binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.12.22 23:26, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Dec 19, 2022 at 07:18:39PM +0100, Ahmad Fatoum wrote:
>> The value of the native-mode property is supposed to be a phandle to
>> the entry in question, but instead the full node path was used because
>> the <angle brackets> were missing. Fix this. This should not involve any
>> functional change as the default mode would've been the first element,
>> which is the same element the malformed native-mode now points at.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/dts/imx6qdl-skov-imx6.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
>> index f4610ee1e7ba..156722b95a3c 100644
>> --- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
>> +++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
>> @@ -146,7 +146,7 @@
>>  		};
>>  
>>  		display-timings {
>> -			native-mode = &l2rt;
>> +			native-mode = <&l2rt>;
> 
> The fix is OK, but could you also fix the other similar bugs in the
> tree?
> 
> A quick grep identified the following that all looks wrong:
> 
> arch/arm/dts/imx6q-var-custom.dts:                      native-mode = &claawvga;
> arch/arm/dts/imx6qdl-skov-imx6.dtsi:                    native-mode = &l2rt
> arch/arm/dts/imx6qdl-skov-imx6.dtsi:                    native-mode = &mi1010ait_1cp1;

Yes, I can do that.

> I took a quick look, and to my surprise I found no similar bugs in the
> kernel.

The power of machine readable (and checkable) bindings :)

Thanks,
Ahmad

> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Wed, 15 May 2024 11:15:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7AjY-00Fb49-2g
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 11:15:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7AjV-0003pe-5Q
	for lore@pengutronix.de; Wed, 15 May 2024 11:15:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f4G6BoNN5pfXMGD8SfhQzs/stR4rh6j9MERoYGcy7mQ=; b=spLWiiFCjx1Lu6m9AylfMJoiR8
	f5FRecB5ClqI8CT3PQfq+f4WA6YTj2YluwshBr7qO0x3Y5fbnvkC7zaQnAQxS0dopeZ+QrbjsSVdM
	khBRZqqfigsSgyXn2DLlSMIgC1JI4dq85SyCXELjOr24MCTdUgOTYnYUr1ZVCFLigzNgpzE0gH4P4
	rgFw68jwE9e5Sunh+qoVmDrE179RG4j9WTnxczW2UAi84D849+tF9LBkT8bW859qus+TY+Y+CV357
	Tljn6bWtLzsMOFcMByLfkkEsf9/fxBjA1ejOu6tbHO0XMCzPNKa1to2ivIVS/trt7osS1OFvq+pRe
	jMJu7IqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Ain-000000013Le-3twc;
	Wed, 15 May 2024 09:14:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Aij-000000013L6-2OJg
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 09:14:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Aih-0003f1-Go; Wed, 15 May 2024 11:14:43 +0200
Message-ID: <4230607b-02bb-470f-bc8d-5968045f833e@pengutronix.de>
Date: Wed, 15 May 2024 11:14:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Barebox List <barebox@lists.infradead.org>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
 <20240515-b4-pf5-fixup-v1-3-a58c8ec94f48@wolfvision.net>
 <24dd4224-2eb0-4e04-9d5d-9650901fb3e5@wolfvision.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <24dd4224-2eb0-4e04-9d5d-9650901fb3e5@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_021445_652482_1F2F3EE0 
X-CRM114-Status: GOOD (  21.10  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/3] common: boards: wolfvision: fix handling of
 overlays parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.05.24 10:32, Michael Riesch wrote:
> Hi all,
> 
> On 5/15/24 10:00, Michael Riesch wrote:
>> If the char **overlays parameter to wolfvision_rk3568_detect_hw is NULL,
>> the overlay file names are not collected.
>>
>> If overlays points to a NULL pointer, it is initialized properly with
>> an empty string. This is convenient as the call to
>>     globalvar_set("of.overlay.filepattern", my_resulting_string);
>> that usually follows actually resets the global filepattern variable
>> from its default "*" to "". Thereby, a paradoxical situation in which no
>> extensions are detected but all available overlays are applied (due to "*")
>> is avoided.
>>
>> Nevertheless, it is still possible to pass an existing string to this
>> method and let the method append overlay file names.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>  common/boards/wolfvision/common.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
>> index f483918cec..6cb76250dd 100644
>> --- a/common/boards/wolfvision/common.c
>> +++ b/common/boards/wolfvision/common.c
>> @@ -20,7 +20,7 @@ int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
>>  {
>>  	int ret;
>>  
>> -	if (overlay->filename) {
>> +	if (overlay->filename && files) {
>>  		if (*files) {
>>  			char *old = *files;
>>  			*files = basprintf("%s %s", old, overlay->filename);
>> @@ -115,6 +115,9 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
>>  	if (ret)
>>  		return ret;
>>  
>> +	if (overlays && !*overlays)
>> +		*overlays = basprintf("");
> 
> Hm, apparently this gives a compiler warning "warning: zero-length
> gnu_printf format string [-Wformat-zero-length]".
> 
> ... = basprintf("%s", ""); ???

xstrdup("")

> 
> Best regards,
> Michael
> 
>> +
>>  	for (i = 0; i < num_extensions; i++) {
>>  		const struct wv_rk3568_extension *extension = &extensions[i];
>>  		const struct wv_overlay *overlay;
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




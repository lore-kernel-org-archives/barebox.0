Delivery-date: Mon, 18 Sep 2023 18:46:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiHOL-002Gzs-R8
	for lore@lore.pengutronix.de; Mon, 18 Sep 2023 18:46:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiHOJ-0006tN-Pw
	for lore@pengutronix.de; Mon, 18 Sep 2023 18:46:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6f88k1mYwZz3L6yBZ8XKgpne+gaop5RAyl+3Gw8hStw=; b=2EOH5N46C/3OzzwS1yKnb0UkQF
	sd7TtZohFQNbvVlZsqqJFIvN/PoFL/nCvwZLAHoyFy0A+yOTedQRMqgDRHJ5wd8jL+evxdvzFkEpn
	OwGejbd6nv7dL5lygh3M4VDKNB11JHmLJffAcANNdtK1RTssgIuSZ1OyWxwM+LCWRtOw9120VKChj
	AY+HvNS1NvqLprgpo+9ZkwBosSaYneBa6zWjK1ztD765vZrOz1lUkoLAq1UDlTJWOqRqwaB4BbpNR
	nls7fmG4EEWpmA51qIW+v5Ms+uZpIWmyjzcWptBNG170Ds+/pdQtIgamE1UvWUVYU1HHAFFUXQACK
	iM6aDmrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiHN6-00Ftwv-1G;
	Mon, 18 Sep 2023 16:45:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGKg-00Fm4u-0c
	for barebox@bombadil.infradead.org;
	Mon, 18 Sep 2023 15:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6f88k1mYwZz3L6yBZ8XKgpne+gaop5RAyl+3Gw8hStw=; b=OVoxh6KbiREseIMxfrr306QeJk
	31Y1nYJ+FB+NnqbV9GxtwJ6v+unZAeV80Gtk0Y4Z+pDqEgLyCK3+LuFe9bNNM/2U6xz8/kyhkRfa0
	Bi0GUXh+da687rZogKsUlrMX9leJbLeKNbaDcuNwLSrvctGcnHwnBaFEqDD9hKhrZMe8yFPOUotV1
	MzGklnhO/wo6dYuU6is8iwmx6jbqVKee6Ri8orppw/pcXd7r2iJuPuUur48buXCDC4VguWWHmPLkJ
	coO2pQ4WAnoWj0wydOn+XJnFOXH4wCG0g2gbDQFEUPletXmArpENxNn6iuzktlWUlCp/z2wh7xpR/
	dKeZDhlQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGKb-00CkNy-0m
	for barebox@lists.infradead.org;
	Mon, 18 Sep 2023 15:38:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qiGKZ-0001Ou-Va; Mon, 18 Sep 2023 17:38:36 +0200
Message-ID: <b6c4dd46-f785-8bcd-93d8-093a689e445d@pengutronix.de>
Date: Mon, 18 Sep 2023 17:38:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
 <20230912092520.GU637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230912092520.GU637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_163838_803166_EA96079E 
X-CRM114-Status: GOOD (  24.37  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: don't print TF-A version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12.09.23 11:25, Sascha Hauer wrote:
> On Mon, Sep 11, 2023 at 12:12:19PM +0200, Ahmad Fatoum wrote:
>> In usual configurations, TF-A already prints its version on startup, so
>> printing it in barebox again is unnecessary and less informational than
>> the TF-A print and complicates running barebox without TF-A.
>> Thus just drop it.
> 
> I agree the information is not very useful. Also we currently only check
> for CONFIG_FIRMWARE_IMX8MQ_ATF, but not the other i.MX8M variants, so
> the current code is wrong anyway.

current_el() < 3 would be the alternative should we keep this code.

> However, would it be useful to do a arm_smccc_smc() call somewhere to
> verify the TF-A is generally working as expected?

There's the smc command, which can be used for debugging. I see no need
to unconditionally do a SMC on every boot.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/imx8m.c | 11 -----------
>>  1 file changed, 11 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
>> index af44b089e08a..c7c799c64bc4 100644
>> --- a/arch/arm/mach-imx/imx8m.c
>> +++ b/arch/arm/mach-imx/imx8m.c
>> @@ -56,7 +56,6 @@ u64 imx8m_uid(void)
>>  static int imx8m_init(const char *cputypestr)
>>  {
>>  	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
>> -	struct arm_smccc_res res;
>>  
>>  	genpd_activate();
>>  
>> @@ -66,16 +65,6 @@ static int imx8m_init(const char *cputypestr)
>>  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
>>  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>>  
>> -	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
>> -	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
>> -		arm_smccc_smc(IMX_SIP_BUILDINFO,
>> -			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
>> -			      0, 0, 0, 0, 0, 0, &res);
>> -
>> -		if (res.a0 > 0)
>> -			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
>> -	}
>> -
>>  	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
>>  	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
>>  		static struct of_optee_fixup_data optee_fixup_data = {
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




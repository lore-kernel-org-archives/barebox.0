Delivery-date: Tue, 09 Sep 2025 04:29:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvo6e-000tzG-1q
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 04:29:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvo6d-0004RD-V0
	for lore@pengutronix.de; Tue, 09 Sep 2025 04:29:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kubC/0P15jhDvLVySVYefpew9VvqhoCzSPCGGp3IH64=; b=Vl35ifMS/Iz2O/utl67lck2rHJ
	e3fwcVZAhilJFZY8B7BpRpkIfzME3bjLTLYwitygh/WdQBxJhEtDPkc55eXTWUrJly81AOmQzpDlE
	EQe8Hf4pum1WOmb/RLFzS6ipg/NUfDVdDA7Bg0NZ7JkSlEJ4DW7USFQbaLXnheReYztAcreXVuvez
	OH2RGE5h2CNfyf92pEYox6oZYBbPB/K2fuU89vF00jiD1r/WPPBZFeyc7aIx/Fmg1vr8JY+XGCmxH
	u0IIIiUuYjYFP/2H9JsZ+/4e8X7bkAoPpZyfpkYHKljF08M6T5XX6J9Pg5HwWQpwZFPaMsAcSwneB
	naBnE1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvo66-00000003hML-2zrh;
	Tue, 09 Sep 2025 02:28:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvh54-00000001jiO-2gAa
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 18:59:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uvh53-0006No-DI; Mon, 08 Sep 2025 20:59:09 +0200
Message-ID: <c00e23d3-452d-421f-ba1d-ee9372758167@pengutronix.de>
Date: Mon, 8 Sep 2025 20:59:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-6-tobias@waldekranz.com>
 <366fb2bd-74b1-438e-9de4-ad7dac512ccf@pengutronix.de>
 <87ikht2t0x.fsf@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <87ikht2t0x.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_115910_682215_84C6C77E 
X-CRM114-Status: GOOD (  16.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] commands: dmsetup: Basic command set for dm device
 management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.09.25 11:27, Tobias Waldekranz wrote:
> On fre, sep 05, 2025 at 18:54, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> +static struct dm_device *dmsetup_find(const char *name)
>>> +{
>>> +	struct dm_device *dm;
>>> +
>>> +	dm = dm_find_by_name(name);
>>> +	if (IS_ERR_OR_NULL(dm)) {
>>> +		pr_err("Found no device named \"%s\"\n", name);
>>
>> pr_/dev_ is logged, so will also be shared with Linux if pstore/ramoops
>> is enabled. For commands, just use printf.
> 
> Wow, nice! I will have to look into this more.

The really useful part is saving crash logs from the kernel on next bootup,
but it is highly hardware dependent how survivable a restart is for the RAM's
contents, even with ECC.

Sharing barebox and kernel log in the same boot is no problem however, just add
to the barebox DT:

/ {
        reserved-memory {
                #address-cells = <1>;
                #size-cells = <1>;
                ranges;

                /* Address will be determined by the bootloader */
                ramoops {
                        compatible = "ramoops";
                };
        };
};

and enable the relevant options in Kconfig.

>> Nice. FYI, if selftest is too cumbersome once you start adding more
>> targets, you can also add tests that exercise commands via pytest. See
>> test/py/.
> 
> Right, yes I will read up on this in the future.
> 
> Thanks for reviewing!

Cheers,
Ahmad

> 
>> Cheers,
>> Ahmad
>>
>>> +
>>> +BAREBOX_CMD_START(dmsetup)
>>> +	.cmd = do_dmsetup,
>>> +	BAREBOX_CMD_DESC("low level interface to the device mapper")
>>> +	BAREBOX_CMD_OPTS("<command> [args...]")
>>> +	BAREBOX_CMD_GROUP(CMD_GRP_PART)
>>> +	BAREBOX_CMD_HELP(cmd_dmsetup_help)
>>> +BAREBOX_CMD_END
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



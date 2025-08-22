Delivery-date: Fri, 22 Aug 2025 17:10:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upTPi-003LxT-0j
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 17:10:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upTPh-0005aM-2E
	for lore@pengutronix.de; Fri, 22 Aug 2025 17:10:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zrIyxDYjtlrrMGvP81OeBxF/Ysy4cIUyNoEuMzc6/js=; b=OL+vcUjCr/pLIRE7Rv0ovVEege
	DIbsNrjF4S0toPxfDVC3iA8Zc0deyBabyXzp7zQPvsaeBgYKc4DStzC83IxNdL7tn8HVpoH3hvphV
	A5hy6aZ4rGtoMFUE0Dd+HdqebshqRkFRmWyqrUEFAMMvLbhGaQ2gweMIIAD8/TDiVgKh5m0Nmcfum
	mdWblOW8x5ouBguEmbV+XjP6eZb60HWAveSCG2nqhxCs/GuksRNl3cfHdCQXwKSg7i+CYz/dqQBNq
	IqrEwiNp8AxSPIXPIEr4i5j9OCP876AJedPpQG0xRDwDGj/RnH35YUVVwD92u2Emod3MuPpdFtBEH
	+j0448Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTPA-00000002xJG-47iV;
	Fri, 22 Aug 2025 15:10:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upOwF-00000002BbV-0qh2
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 10:24:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upOwD-0005Yk-OT; Fri, 22 Aug 2025 12:24:01 +0200
Message-ID: <7047ec70-f7bf-49e5-8dd8-0a13eb23c7bb@pengutronix.de>
Date: Fri, 22 Aug 2025 12:24:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
 <aKhEXy49rlnKbgbx@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aKhEXy49rlnKbgbx@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_032403_280260_7A82EB69 
X-CRM114-Status: GOOD (  16.57  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 8/22/25 12:20, Sascha Hauer wrote:
> On Wed, Aug 20, 2025 at 03:17:48PM +0200, Sascha Hauer wrote:
>> diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..4c71774bbbc98f9de9cf5463e5ef431de60be6ac
>> --- /dev/null
>> +++ b/scripts/Makefile.policy
>> @@ -0,0 +1,39 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +real-policy-y   := $(addprefix $(obj)/, $(policy-y))
>> +
>> +targets         += $(addsuffix .tmp, $(real-policy-y))
>> +
>> +# policy-list
>> +# ---------------------------------------------------------------------------
>> +
>> +subdir-policylist := $(addsuffix /policy-list, $(subdir-ym))
>> +real-policy-y   += $(subdir-policylist)
> 
> Not sure what this line is good for, but it has the effect that subdirs
> are added to real-policy-y...

The code was taken partially from dtbs-list handling in the kernel,
where the top-level Makefile hardcodes the path to
arch/$SRCARCH/boot/dts and then Makefile.dtbs would collect the
dtbs-list in subdirectories.

>> +ifneq ($(policy-y)$(policy-),)
>> +always-y        += $(obj)/policy-list
>> +
>> +$(subdir-policylist): $(obj)/%/policy-list: $(obj)/% ;
>> +
>> +$(obj)/policy-list: $(real-policy-y) FORCE
>> +	$(call if_changed,gen_order_src)
> 
> ...and then this fails because it tries to do a cat on the subdir.
> 
> It worked during testing because all policy-y was in leaf
> directories, but I just added a policy-y to common/Makefile.

Ah, I think we can drop the subdir-.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Wed, 14 Apr 2021 12:21:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcel-0001lR-HD
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 12:21:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcek-0002k0-Hw
	for lore@pengutronix.de; Wed, 14 Apr 2021 12:21:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kbVZE+HfJqNxXbPG0SnxLa6VgH7DYKXgG9suj2o9ZP4=; b=STqYMp9ZQ+q1NeqFl7xB0UaBJ
	W9XLonmCnJFk15hgoz306tFw3gMjERAjKed+GwP76flvds+kSZeBbsksI8EutTZ9gunbIppL9jiQG
	FdSp07YADRQiEqCw3dNjg0uvVu/MUkZ9k5PPIr+NQsjNlSWSBV2rcaGzAGNsPCkFxD8ozSeS7bq/B
	VnRce3c4ctzZmt2cG6yqn/LqE5XR3Epp5fvdUX/9tlVPjHa8VU1rCxZvdHiKFuDZRxUgzFLzlBdV5
	JpxLKMGXUVCf2qzMjDV0dYnYCAhAh3W5ROJNC+lG6cL7yuOZFTH2hGfIGGECCLMHQttRGvHgGuFQ9
	o0kHPw/KA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWcdg-00CG1V-TA; Wed, 14 Apr 2021 10:20:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcdd-00CG1P-0D
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 10:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=sMIr7DsWcS3/5B/Q6uOPH2G5HblQ/tTLgL1AvPJ1BwA=; b=FV4qEFp4rXJoG73pmKrf9X8Qqs
 DC/QrDDe2ecoakPDUa0n2AmGG9tHHMneQPF3iV+3lqfhWWSVPOzFGNNtKoFiXpI2pv1p2KG9RM8C8
 P72aeEblUGmwH8yR6nq1xweD9/dOtWJ0vBxDxdRLVbttzuivzH+OWXbsq9PAYcKWHELhw1FmOxJjn
 VDGHN8f+2vwfa0iT8+V75wWtvsLDbH4zdEWZDwBxKn5Ds6INnKjrO7xK2BQxmv7oLXQy72TtelzLa
 9JMw5+jJv7sFFPSd69U+6MFLFPdmMAA3Z1Sixk640T3sYhMNPb5lgvZxxQmtS7AB0ryP0YelqILrA
 Xgd/zy2Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcda-007g9x-D1
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 10:20:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWcdX-0002N9-1F; Wed, 14 Apr 2021 12:20:43 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-7-a.fatoum@pengutronix.de>
 <20210414100848.GT19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b85462ec-1b74-6d16-8263-0471fb74877b@pengutronix.de>
Date: Wed, 14 Apr 2021 12:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210414100848.GT19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_032046_472115_7EE6E0BB 
X-CRM114-Status: GOOD (  18.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/14] common: add generic machine partitions interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 14.04.21 12:08, Sascha Hauer wrote:
> On Tue, Apr 13, 2021 at 12:34:54AM +0200, Ahmad Fatoum wrote:
>> Both Fastboot and DFU have their own global variables that allow
>> specifying the partitions that can be flashed via the environment.
>> With the upcoming addition of the USB mass storage gadget, we will need
>> some way to define the partitions there as well.
>>
>> Instead of adding yet another way download method-specific variable,
>> add a generic machine.partitions variable that can be specified on a
>> per-board basis and can be used for all methods.
>>
>> Existing variables will still remain for backwards-compatibility, but
>> when unset, it should fall back to this new parameter. This is done
>> if the follow-up patches.
>>
>> +static int machine_partitions_var_init(void)
>> +{
>> +	struct param_d *param;
>> +
>> +	machine_partitions = file_list_parse("");
>> +	param = dev_add_param_file_list(of_get_machine(), "partitions",
>> +					NULL, NULL, &machine_partitions, NULL);
> 
> Why machine.partitions and not global.something? What's the very good
> reason to open up another namespace for configuration variables?

I'll go with global.system.partitions. That way it's clear it's machine-specific
(system) and it's still within global.*.

Looking forward to any other feedback before I send v2.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


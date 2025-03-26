Delivery-date: Wed, 26 Mar 2025 10:48:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txNNX-004Nop-1W
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 10:48:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txNNW-0003Tb-6D
	for lore@pengutronix.de; Wed, 26 Mar 2025 10:48:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mNRQ/kiCbiRu4S2cggk54U6pc3N6n3UVkrQEBezQXwU=; b=dU0snkVEwrUzYYgSXEhNwy5aB1
	+oAjqa5lmjKhNrmJSzIDFdSt8KWPEk8roYOFZHfvcVKo3maa84zjJfCSC3vYJfTIGrblobFLcDJXu
	bnOk4oMOWHeRoRHp3/9MjDp7AfwPnVPKpA0M0KjorXxFj3AnN0ilWG69cVshRAM/OjSKLUwJozzws
	8dzBpE6jJivqSOtqBu+hqB+9F6lRDVFWU0eW0HadbDIoeSnslj1CRWGwSan1A4Nq6+3GtnIZgCT1C
	tHbaTS2qEO4rWvxHcFKVv2KHebVz2FPy14J8QIfOlBi5KKaNM5pCShiO/WIg1QSY7jNR5n2tP+q4s
	Isys0dTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNMs-000000084bV-3X3R;
	Wed, 26 Mar 2025 09:48:14 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNKP-000000084Gz-3wPH
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 09:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742982337;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mNRQ/kiCbiRu4S2cggk54U6pc3N6n3UVkrQEBezQXwU=;
	b=TOZhcEXzJRY54VCLwP6PGJVUrOAKIhNkfDS0CqAyAVEd6tgdlWul/tLsnX1MX/i6xrwO/6
	AwtJHj309Csyp/eMEVu1fmGa5v83+79bRnMyTXkRmTmPj47u37MWIs7U4STZFm3EWsNxWo
	IjHc7yAGegMczaUzF4osIIW6Tq8utoKt33sFwH+CqbulkGLCpF2EasMeg6O/lZeUesaPqb
	4T2cGdI5D8kWhf488VOUsqmJWetmEw/oM9g7sVkN/a/R7dA19VXTZ3osMVz8i7Szh4jfVb
	x8mTZ+mjHOUplLNMQvhiOx7yURGc/bcibinbf1n61kHuc20RXyQ9Q5t6A57vNA==
Received: from localhost (<unknown> [2a01:e0a:12:d860:da62:e926:7042:9dc0])
	by zdiv.net (OpenSMTPD) with ESMTPSA id f7f08116 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 26 Mar 2025 10:45:37 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 26 Mar 2025 10:45:37 +0100
Message-Id: <D8Q3O7QT2HAC.AQCADSVOMV2U@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.20.1
References: <20250312-rpmb-v1-7-0f213382a3f3@pengutronix.de>
 <20250325143650.29433-1-jmaselbas@zdiv.net>
 <579eeb04-43ef-4665-99c8-dd9d19cdbb3b@pengutronix.de>
In-Reply-To: <579eeb04-43ef-4665-99c8-dd9d19cdbb3b@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_024542_433051_9007EFD7 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! tee: optee: implement RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Wed Mar 26, 2025 at 7:52 AM CET, Ahmad Fatoum wrote:
> Hello Jules,
>
> On 25.03.25 15:36, Jules Maselbas wrote:
>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
>> ---
>>  drivers/tee/optee/rpmb.c | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>> diff --git a/drivers/tee/optee/rpmb.c b/drivers/tee/optee/rpmb.c
>> index cdc8afc1a4..ca60f3cf3d 100644
>> --- a/drivers/tee/optee/rpmb.c
>> +++ b/drivers/tee/optee/rpmb.c
>> @@ -5,6 +5,7 @@
>> =20
>>  #define pr_fmt(fmt)     "optee-rpmb: " fmt
>> =20
>> +#include <common.h>
>
> Is this only for ARRAY_SIZE? Then I'd prefer we include <linux/kernel.h> =
or
Yes, this is for ARRAY_SIZE
> <linux/array_size.h>, because we generally want to cut down on use of
> <common.h>, if only to reduce compile time a bit.
okay

> Also, please send fixups without a reply-to for patches that are already =
applied.
> This makes it less likely to be missed IMO.
ack

> Cheers,
> Ahmad
>
>
>
>>  #include <mci.h>
>> =20
>>  #include "optee_msg.h"




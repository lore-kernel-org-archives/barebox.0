Delivery-date: Fri, 10 Jan 2025 18:37:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWIxE-000S7a-0q
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 18:37:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWIxE-0004eL-Ea
	for lore@pengutronix.de; Fri, 10 Jan 2025 18:37:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iOP9B+I60KLK9weqVqa7+cx4d3N96Y3tBL75Md8ICV8=; b=Fwrjh/g84rsR2dGhmFxvkFcveJ
	xE2bFmsU0tDpKECRaUf7sjkFOVhomGXqPtJ70ugXhLAp0kl4HVDJ0lT33Rl8oA5O9eH340mTOM4KX
	UOB69uMdXP3XmYHugvUXPK64A9/JgkQfaZPe5S2IjBSy6EUnzq84XSvapzkHAqW/2TABFbMOQxhzx
	F8qiGBxNJjw9a3F050koZw7eXlcg/1odxzaqOSXiBN/QaaFXsQzd2ZuEIk/LIoPSKvYGTzdO961EY
	27/neQgwRXn9NdYzOeM1PW2YFW82Fmvla7YqGyHhtsmS/r+oIWTK2lBc147hrjb3Kkyy5/+SDmEKm
	4kGToBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWIwv-0000000GSYf-265K;
	Fri, 10 Jan 2025 17:37:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHip-0000000GCnC-0IT8
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 16:18:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tWHim-0007BQ-AP; Fri, 10 Jan 2025 17:18:52 +0100
Message-ID: <fc432540-ec96-461b-9660-80b5b66aee17@pengutronix.de>
Date: Fri, 10 Jan 2025 17:18:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
References: <20250106113340.1224335-1-bst@pengutronix.de>
 <Z4EFE3V2FGUCRVBn@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <Z4EFE3V2FGUCRVBn@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_081855_110538_4314B240 
X-CRM114-Status: GOOD (  14.01  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx: pass semicolons as substitute chars to
 compiler macros for CSF templating
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 1/10/25 12:31 PM, Sascha Hauer wrote:
> On Mon, Jan 06, 2025 at 12:33:40PM +0100, Bastian Krause wrote:
>> With CONFIG_HAB_CERTS_ENV=y, paths and PKCS#11 URIs to the HAB
>> certificates are taken from environment variables (allowing for better
>> integration with build systems). In this case these values are passed
>> internally via compiler macros (-D) to the imx-image host tool. PKCS#11
>> URIs usually contain semicolons. Semicolons, however, cannot be passed
>> via compiler macros and cannot be escaped.
> 
> Try harder.
> 
> gcc -DFOO='"bar;baz"' test.c
> 
> #include <stdio.h>
> 
> int main(void)
> {
> 	printf(FOO);
> }
> 
> Works as expected, so does it work when you add single quotes around the
> URI?

This actually works:

--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -570,8 +570,8 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x 
assembler-with-cpp \
        $(call overwrite-hab-env,CONFIG_HABV3_CSF_CRT_DER) \
        $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
        $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
-      $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
-      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
+      -DCONFIG_HABV4_CSF_CRT_PEM='"$(CONFIG_HABV4_CSF_CRT_PEM)"' \
+      -DCONFIG_HABV4_IMG_CRT_PEM='"$(CONFIG_HABV4_IMG_CRT_PEM)"' \
        $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \

  dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)


But I had no luck integrating the single quote approach in overwrite-
hab-env. Maybe my quoting/escaping fu is not strong enough. Could you
take a look?

Regards,
Bastian

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 14 Apr 2023 14:48:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnIqX-003KGB-34
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 14:48:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnIqW-0001ng-Pu
	for lore@pengutronix.de; Fri, 14 Apr 2023 14:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ktDSN1ADh5X1EK8lKVpNv3oOegoDpNPNSxLIRGNc+Os=; b=4od1Usv6oBGSq9/3BcnbHjuMQK
	9Xe0G4PH5YoH2b0x0KFy1gM54bdzDQRfLGuXv2xFy2Hpolk4HI41l5RU6xfMe0UxBzh3/0QGq8+Ba
	w6rYmdH/RST1fgkK45MOPocXnsWqR3JP0QN017iWW5Rf7IMGy1I3h5Q50pKlBJbfInnpoqVMVZgi1
	QRH4GOWCUSKsBIRJsJD+6SjrMGebvLsXQ7+JMbHQe9st5AwYPwoCQbX0BlIDaoe6PV8JWdIpzg70t
	12SFQbBfO4WhdRU6rT5igS5Km3l+wzQVX6FETaK2OV9z5/MomuBJofuOiSjRXtjDuu0t0PQrTfUPN
	nVuf/2sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIpP-009Ycy-06;
	Fri, 14 Apr 2023 12:46:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIpL-009YcD-2S
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 12:46:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pnIpK-0001bm-Aj; Fri, 14 Apr 2023 14:46:54 +0200
Message-ID: <b8847e00-0e27-c7f8-af75-977fa41fa64e@pengutronix.de>
Date: Fri, 14 Apr 2023 14:46:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Burri Markus LabTec <Markus.Burri@mt.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230414094020.2389226-1-markus.burri@mt.com>
 <f454aee9-3e78-c1bc-f448-3355e3613d14@pengutronix.de>
 <PA4PR03MB748854E525009BC8F015D570EF999@PA4PR03MB7488.eurprd03.prod.outlook.com>
 <7c13d1e3-452f-5b91-4511-d64c531f0145@pengutronix.de>
 <PA4PR03MB7488B5A455A50A14BB7E44A5EF999@PA4PR03MB7488.eurprd03.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PA4PR03MB7488B5A455A50A14BB7E44A5EF999@PA4PR03MB7488.eurprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_054655_802276_81180100 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: EXTERNAL - [PATCH v1] Add bootchooser command option for active
 boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Markus,

On 14.04.23 14:41, Burri Markus LabTec wrote:
> Hello Ahmad
> 
> The Idea is to run some scripts stored in the rootfs before booting the system. In our case e.g we enable led according to customer needs. This is stored in to rootfs where the customer is able to update without update barebox

Once you give your customer the ability to run arbitrary code, they will run
arbitrary code, e.g. apply an overlay to the kernel DT or tune kernel
command line argument. With your init script approach, you could apply
old overlays when booting a new kernel, which can lead to very surprising
results.

> The new command option will store this information in a variable where I can use this information in the init script.
> It sound that a script as bootchooser target will fit my requirement. I didn't know that. I will try

I am not opposed to give these scripts knowledge of what bootchooser target
is executed, see untested patch below. But it should be the boot scripts
that run hooks, not an init script on a subsequent boot.

Cheers,
Ahmad

---
 common/bootchooser.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 08d05e885250..3d400af08ef1 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -827,6 +827,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
                goto out;
        }

+       globalvar_add_simple("bootchooser.active", target->name);
        system = basprintf("bootchooser.active=%s", target->name);
        globalvar_add_simple("linux.bootargs.bootchooser", system);
        free(system);
@@ -854,6 +855,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
        *tryagain = 1;
 out:
        globalvar_set_match("linux.bootargs.bootchooser", NULL);
+       globalvar_set_match("bootchooser.active", NULL);

        bootentries_free(entries);

@@ -976,3 +978,5 @@ BAREBOX_MAGICVAR(global.bootchooser.default_priority,
                 "bootchooser: Default priority for a target");
 BAREBOX_MAGICVAR(global.bootchooser.state_prefix,
                 "bootchooser: state name prefix, empty for nv backend");
+BAREBOX_MAGICVAR(global.bootchooser.active,
+                "bootchooser: holds name of active bootchooser target during boot");




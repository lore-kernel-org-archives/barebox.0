Delivery-date: Tue, 14 Dec 2021 22:42:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxFZB-006bfC-Fq
	for lore@lore.pengutronix.de; Tue, 14 Dec 2021 22:42:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxFZ9-0001Jk-Ta
	for lore@pengutronix.de; Tue, 14 Dec 2021 22:42:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qzyD+L7/1pdgbskWDcK0i7XcASWWwXULZLu97I855T4=; b=27mFqnn5ulP4m7Jr6SRlx2HwyX
	/foWPnfUZFChQS36bVMiIfi/sX/6a21FRNgHUWgreabIEHuyLIdAdmdFTFog+J/uqYYUx/5QSrxRX
	7D0mWh3MdKJGUUpxCbvt3AgFg68wf+HqQzCLmo0KKQ1Du+2+O0pBH/70UVMNif81OCLxNsHDLuxmi
	NA4BB3pMng+RX59s/a68qFF+yVyedJqFW1KDWQaVOjE36CHNC0KWOTZyMXn4SEB5wa2vd6ExeGeVw
	gGJw5AMZKDEzO53VrnmdZ9QJ2GzMt4rTT5CJK1fmApffmAEKE5UysB4VKE96CgdANdlCI0Ytx7qjk
	eXRVxQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxFXl-00Frhr-BZ; Tue, 14 Dec 2021 21:41:05 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxFXg-00FrhT-8F
 for barebox@lists.infradead.org; Tue, 14 Dec 2021 21:41:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id CB9B140343;
 Tue, 14 Dec 2021 22:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639518028;
 bh=j36jy+9gA9p5w+08OKM5q8w3jnbY3uiVNgGr2KCQVmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F1Up8CHxhLGMGNOvsKs0Cp+ZWUggeNqormaLRcbVb5CDYf/IEveUuIBu5P+8pKV9q
 JiRCeUokjA9wrpuBV1UE8d0FqxXHcrG8X1IIsZD/lJs4i4uRum/pr9zGNicIN7MgIV
 sv7S7mKuGqvW3QWdKxEZerxneBPNwx8eaFh48cgfjYLtM2oVhe4q1s74LrfeBkWoqv
 Kcq6/rNT7yAxr0efTQaSta5gJfe3bLgFM+ki+e8yge+4JuI+d+D1ZtAhMtN3o4ojrE
 xHQ//qEbg7hoYIati/2NOKtDxzc6mH1OPG3m+xBSMpHrQQFRg6S8H3ZNX4Q+KyKnY/
 0VcEmpgDs1n+A==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgbVqgaB_S4I; Tue, 14 Dec 2021 22:40:28 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 55FFD40253;
 Tue, 14 Dec 2021 22:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639518028;
 bh=j36jy+9gA9p5w+08OKM5q8w3jnbY3uiVNgGr2KCQVmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F1Up8CHxhLGMGNOvsKs0Cp+ZWUggeNqormaLRcbVb5CDYf/IEveUuIBu5P+8pKV9q
 JiRCeUokjA9wrpuBV1UE8d0FqxXHcrG8X1IIsZD/lJs4i4uRum/pr9zGNicIN7MgIV
 sv7S7mKuGqvW3QWdKxEZerxneBPNwx8eaFh48cgfjYLtM2oVhe4q1s74LrfeBkWoqv
 Kcq6/rNT7yAxr0efTQaSta5gJfe3bLgFM+ki+e8yge+4JuI+d+D1ZtAhMtN3o4ojrE
 xHQ//qEbg7hoYIati/2NOKtDxzc6mH1OPG3m+xBSMpHrQQFRg6S8H3ZNX4Q+KyKnY/
 0VcEmpgDs1n+A==
MIME-Version: 1.0
Date: Tue, 14 Dec 2021 22:40:28 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Organization: Inside M2M GmbH
In-Reply-To: <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
Message-ID: <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_134100_480007_8FDCA91E 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-12-05 23:55, Roland Hieber wrote:

> You probably also want to delete your bootchooser variables from the 
> env

Are you shure about that? I read some example/documentation at 
bootlin.com
doing/presenting a nice phytec device tree for EEPROM state but later on 
it points out to
"[...]add bootchooser variables associated to both targets in 
arch/arm/<board>/env/nv[...]"

When I utilize "devinfo state" (with all global/nv bootchoser variables 
removed) I get

barebox@TI AM335x BeagleBone black:/ devinfo state
Parameters:
   bootstate.last_chosen: 0 (type: uint32)
   bootstate.system0.ok: 0 (type: uint32)
   bootstate.system0.priority: 21 (type: uint32)
   bootstate.system0.remaining_attempts: 3 (type: uint32)
   bootstate.system1.ok: 0 (type: uint32)
   bootstate.system1.priority: 20 (type: uint32)
   bootstate.system1.remaining_attempts: 3 (type: uint32)
   dirty: 0 (type: bool)
   init_from_defaults: 0 (type: bool)
   save_on_shutdown: 1 (type: bool)


Is bootchooser smart enough to gather system0 and system1 as bootable 
entries/possibilities?
For bootchooser.targets...

My system is not proven to work (I just sent a different mail with my 
other issues to this thread)
yet, may be there are other issues hidden, but I do not get this part.

I created two boot entries system0 and system1 in /env/boot/ with 
content mmc1.1 (for system0) and
mmc1.2 (for system1.2). Both are bootloader-spec-enabled partitions. 
What me bothers is, "boot mmc1.1" works,
"boot system0" not. How do I properly make a bootchoser entry for 
mmc1.1?

If no variables are required, where could be the cuplrit for this:

barebox@TI AM335x BeagleBone black:/ bootchooser
ERROR: bootchooser: Target list $global.bootchooser.targets is empty
No bootchooser found



Kind Regards,
Konsti

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


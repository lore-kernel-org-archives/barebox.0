Delivery-date: Fri, 06 Dec 2024 10:57:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV58-004gtP-2f
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 10:57:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV58-0006df-Pr
	for lore@pengutronix.de; Fri, 06 Dec 2024 10:57:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bLXsoLJ7d0wjoeeAOVf8zWsMVMBAuPnXWpITkve1bMc=; b=ocdBLaddV+GFnszQd9rhImf1LP
	z1qwsuh9/efQDShPlxhANQJ4HpeO26vbmm2Q3SPOl15Xnu9FUiPcxzvfHCKjIGiVEZamTydwDnmpL
	JGTTIXVdH7pt16Kd2tpG3PXdLcaBcWZPyUdLqZVtwazeTvsso+Nm5orp4++h7dBywzLJ3gIyU6xXQ
	7scI5rHEhCPeTzACHjt2Rz8YyoAYNcdTAvcQ9SKvfelir53AbNhwureXmukAh1XY4fiZ7g9zyYuNx
	1eGOmJyvd0vw89sJcYweK3WfZV9Mwokoc+5I1QOk/5gWf8MwbNk6RkpiD9oTgTIKPB3tD6qtv10mZ
	BbIRJflg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV4l-00000001AMf-02l5;
	Fri, 06 Dec 2024 09:56:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV3v-00000001ACP-25MB
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 09:55:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV3u-0006IY-8Q; Fri, 06 Dec 2024 10:55:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV3t-001yYS-0I;
	Fri, 06 Dec 2024 10:55:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV3t-000Xiu-2a;
	Fri, 06 Dec 2024 10:55:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
References: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
Message-Id: <173347894979.129619.16432671657844911327.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 10:55:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_015551_553303_AC441179 
X-CRM114-Status: UNSURE (   6.91  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: efi: Check GPT header size against minimum
 limit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Dec 2024 17:26:25 +0200, Abdelrahman Youssef wrote:
> In https://git.pengutronix.de/cgit/barebox/commit/?id=a9c6ad764144, we were
> checking if the GPT header size is exceeding the maximum limit.
> 
> This is a follow-up patch to check if the header size is less than
> the minimum limit which is 92 as per this documentation
> https://uefi.org/specs/UEFI/2.10/05_GUID_Partition_Table_Format.html#id14
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: Check GPT header size against minimum limit
      https://git.pengutronix.de/cgit/barebox/commit/?id=73f0aaa3c544 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



